#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""m5_gen.py — 从逆向元数据生成可编译的 ObjC 工程

产出：
  src/LZLanchu.h            所有类的 @interface（显式 ivar + 属性 + 方法）
  src/<类名>.m              方法与自动还原的方法体（简单存取器直接还原，复杂方法留 TODO + 汇编）
  src/LZLanchu.m            入口（构造单例、安装浮窗）
"""
import struct, sys, os, json, re
from capstone import *

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'analysis')
SRC = os.path.join(HERE, '..', 'src')
j = json.load(open(os.path.join(OUT, 'objc.json'), encoding='utf-8'))

# ---------- 类型编码 ----------
PRIM = {
    'v': 'void', 'B': 'BOOL', 'c': 'char', 'C': 'unsigned char', 's': 'short',
    'S': 'unsigned short', 'i': 'int', 'I': 'unsigned int', 'l': 'long',
    'L': 'unsigned long', 'q': 'long long', 'Q': 'unsigned long long',
    'f': 'float', 'd': 'double', 'D': 'long double', '*': 'char *',
    '?': 'void *', ':': 'SEL', '@': 'id', '#': 'Class',
}
STRUCTS = {
    'CGRect': 'CGRect', 'CGPoint': 'CGPoint', 'CGSize': 'CGSize',
    'UIEdgeInsets': 'UIEdgeInsets', 'CGAffineTransform': 'CGAffineTransform',
    'NSRange': 'NSRange', 'CATransform3D': 'CATransform3D', 'UIOffset': 'UIOffset',
    'os_unfair_lock_s': 'os_unfair_lock',
    'CTRunDelegateCallbacks': 'void *',
}


def read_type(enc, i):
    n = len(enc)
    c = enc[i]
    if c == '{':
        depth = 0
        k = i
        while k < n:
            if enc[k] == '{':
                depth += 1
            elif enc[k] == '}':
                depth -= 1
                if depth == 0:
                    break
            k += 1
        blob = enc[i:k + 1]
        name = blob[1:blob.index('=')] if '=' in blob else blob[1:-1]
        return STRUCTS.get(name, 'void *'), k + 1
    if c == '[':
        k = enc.index(']', i)
        return 'void *', k + 1
    if c == '@':
        if i + 1 < n and enc[i + 1] == '"':
            k = enc.index('"', i + 2)
            cls = enc[i + 2:k]
            return cls + ' *', k + 1
        if i + 1 < n and enc[i + 1] == '?':
            return 'id', i + 2
        return 'id', i + 1
    if c == '^':
        t, k = read_type(enc, i + 1)
        return t.rstrip(' *') + ' *', k
    return PRIM.get(c, 'id'), i + 1


def parse_encoding(enc):
    i = 0
    ret, i = read_type(enc, 0)
    while i < len(enc) and (enc[i].isdigit() or enc[i] in '+-'):
        i += 1
    args = []
    while i < len(enc):
        t, i = read_type(enc, i)
        args.append(t)
        while i < len(enc) and (enc[i].isdigit() or enc[i] in '+-'):
            i += 1
    # 类型编码里前两个永远是 self(@) 和 _cmd(:)，真正参数从第 3 个开始
    if len(args) >= 2 and args[0] == 'id' and args[1] == 'SEL':
        args = args[2:]
    elif len(args) >= 2:
        args = args[2:]
    return ret, args


def sel_parts(sel):
    if ':' not in sel:
        return []
    return [x for x in sel.split(':')[:-1]]


# ---------- 反汇编工具 ----------
PATH = r"D:\qq系统\工具压缩包\懒触连点器可逆向.dylib"
d = open(PATH, 'rb').read()
cputype, cpusub, ftype, ncmds, sizeofcmds, flags, res = struct.unpack_from('<IIIIIII', d, 4)
seg_ranges = []
lc = 32
func_starts_lc = None
for _ in range(ncmds):
    cmd, cmdsize = struct.unpack_from('<II', d, lc)
    if cmd == 0x19:
        segname = d[lc + 8:lc + 24].rstrip(b'\0').decode()
        vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<QQQQ', d, lc + 24)
        seg_ranges.append((segname, vmaddr, vmsize, fileoff, filesize))
    elif cmd == 0x26:
        func_starts_lc = struct.unpack_from('<II', d, lc + 8)
    lc += cmdsize


def vm2off(vm):
    for name, a, s, o, fs in seg_ranges:
        if a <= vm < a + fs:
            return o + (vm - a)
    return None


def parse_starts():
    off, cnt = func_starts_lc
    p, end, addr = off, off + cnt, 0
    starts = [0x8000]
    while p < end:
        v, sh = 0, 0
        while True:
            b = d[p]; p += 1
            v |= (b & 0x7F) << sh; sh += 7
            if not (b & 0x80):
                break
        if v == 0:
            break
        addr += v
        starts.append(addr)
    return starts


STARTS = parse_starts()
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)


def func_end(addr):
    import bisect
    i = bisect.bisect_right(STARTS, addr) - 1
    return STARTS[i + 1] if i + 1 < len(STARTS) else addr + 0x400


def insns(addr):
    o = vm2off(addr)
    if o is None:
        return []
    end = func_end(addr)
    return list(md.disasm(d[o:o + (end - addr)], addr))


# ---------- 简单存取器还原 ----------
def ivar_by_offset(cls, off):
    for iv in cls['ivars']:
        if iv['offset'] == off:
            return iv
    return None


def simple_body(cls, m):
    """能 100% 确定的极简方法直接还原；否则返回 None"""
    ins = insns(m['imp'])
    if not ins:
        return None
    ops = [(x.mnemonic, x.op_str) for x in ins]
    # 空方法
    if ops == [('ret', '')]:
        return ''
    # setter 绝不能还原成 return —— 否则 void 方法里 return 值，编译就废了
    is_setter = m['sel'].startswith('set') and m['sel'].endswith(':') and bool(sel_parts(m['sel']))
    sargs = sel_parts(m['sel'])
    pname = sargs[0] if sargs else 'value'
    if len(ops) == 2 and ops[1] == ('ret', ''):
        mn, op = ops[0]
        if not is_setter:
            mm = re.match(r'(w0|x0|d0|s0|x1), \[x0, #(0x[0-9a-f]+|\d+)\]', op)
            if mm:
                off = int(mm.group(2), 16) if mm.group(2).startswith('0x') else int(mm.group(2))
                iv = ivar_by_offset(cls, off)
                if iv:
                    return 'return %s;' % iv['name']
        else:
            mm = re.match(r'(w0|x0|d0|s0|x1|w2|x2), \[x0, #(0x[0-9a-f]+|\d+)\]', op)
            if mm:
                off = int(mm.group(2), 16) if mm.group(2).startswith('0x') else int(mm.group(2))
                iv = ivar_by_offset(cls, off)
                if iv:
                    return '%s = %s;' % (iv['name'], pname)
    # self 被搬到 x19/x20 后再访问 ivar（ARC 常见）
    if len(ops) <= 6:
        self_regs = set()
        for mn, op in ops:
            mm = re.match(r'(x19|x20|x21), x0$', op)
            if mm and mn == 'mov':
                self_regs.add(mm.group(1))
        for sr in self_regs:
            for mn, op in ops:
                mm = re.match(r'(w0|x0|d0|s0), \[%s, #(0x[0-9a-f]+|\d+)\]' % sr, op)
                if mm and mn in ('ldr', 'ldrb', 'ldrh', 'ldur', 'ldurb') and not is_setter:
                    off = int(mm.group(2), 16) if mm.group(2).startswith('0x') else int(mm.group(2))
                    iv = ivar_by_offset(cls, off)
                    if iv:
                        return 'return %s;' % iv['name']
                mm = re.match(r'(w0|x0|d0|s0|w2|x2), \[%s, #(0x[0-9a-f]+|\d+)\]' % sr, op)
                if mm and mn in ('str', 'strb', 'strh', 'stur', 'sturb') and is_setter:
                    off = int(mm.group(2), 16) if mm.group(2).startswith('0x') else int(mm.group(2))
                    iv = ivar_by_offset(cls, off)
                    if iv:
                        return '%s = %s;' % (iv['name'], pname)

    # 对象 setter：retain + 写 ivar + release
    if m['sel'].startswith('set') and m['sel'].endswith(':'):
        strx = [o for o in ops if o[0] == 'str' and o[1].startswith('x0, [x19,')]
        if len(ops) <= 14 and strx:
            mm = re.match(r'x0, \[x19, #(0x[0-9a-f]+|\d+)\]', strx[0][1])
            if mm:
                off = int(mm.group(1), 16) if mm.group(1).startswith('0x') else int(mm.group(1))
                iv = ivar_by_offset(cls, off)
                if iv:
                    pname = sel_parts(m['sel'])[0]
                    return '%s = %s;' % (iv['name'], pname)
    # getter 直接返回 ivar（x0 经 x19/x20 间接）
    return None


def fmt_asm(addr, limit=24):
    """用 m4 的符号化反汇编，TODO 里带 SEL / CFSTR / 外部符号注释"""
    try:
        import m4_symbolic as M
        rows = M.symbolic(addr)[:limit]
        return ['    // 0x%06x  %-8s %-40s%s' % (a, m, o, n) for a, m, o, n in rows]
    except Exception:
        out = []
        for ins in insns(addr)[:limit]:
            out.append('    // 0x%06x  %-8s %s' % (ins.address, ins.mnemonic, ins.op_str))
        return out


# ---------- 代码生成 ----------

# 中文类名 → ASCII 文件名。Theos/make 对 src 下的 UTF-8 文件名支持有问题
# （实测报 "File src/CQ匹 does not exist"），所以源文件名统一用英文，
# 类名本身保持不变 —— 代码里搜类名即可。
FILENAME = {
    '任务编辑视图': 'TaskEditorView',
    '副标题单元格': 'SubtitleCell',
    '功能视图': 'FeatureView',
    '动作模型': 'ActionModel',
    '动作组模型': 'ActionGroupModel',
    '动作选择视图': 'ActionPickerView',
    '参数行': 'ParamRow',
    '双击选择视图': 'DoubleTapPickerView',
    '取字选择视图': 'TextGrabPickerView',
    '命中路径编辑器': 'HitPathEditor',
    '多点选择视图': 'MultiPointPickerView',
    '录制视图': 'RecordView',
    '循环结尾选择视图': 'LoopEndPickerView',
    '循环选择视图': 'LoopPickerView',
    '悬浮球': 'FloatingBall',
    '方向箭头视图': 'ArrowView',
    '时间选择弹窗': 'TimePickerPopup',
    '模板裁切视图': 'TemplateCropView',
    '滑动选择视图': 'SwipePickerView',
    '点击反馈视图': 'TapFeedbackView',
    '点击选择视图': 'TapPickerView',
    '穿透窗口': 'PassThroughWindow',
    '穿透窗口控制器': 'PassThroughWindowController',
    '等待选择视图': 'WaitPickerView',
    '统计视图': 'StatsView',
    '网格格': 'GridCell',
    '自定义弹窗': 'CustomPopup',
    '自由滑动选择视图': 'FreeSwipePickerView',
    '触摸事件数据': 'TouchEventData',
    '设置视图': 'SettingsView',
    '识图选择视图': 'ImagePickerView',
    '识字选择视图': 'TextOCRPickerView',
    '识色选择视图': 'ColorPickerView',
    '试跑会话': 'TrialRunSession',
    '试跑选择视图': 'TrialRunPickerView',
    '输入弹窗视图': 'InputPopupView',
    '输入选择视图': 'InputPickerView',
    '配置导入视图': 'ConfigImportView',
    '长按选择视图': 'LongPressPickerView',
    '问题反馈视图': 'FeedbackView',
    '颜色取样视图': 'ColorSamplerView',
    'CQOCR行': 'CQOCRLine',
    'CQ匹配结果': 'CQMatchResult',
}

def decode_type_enc(t):
    """把一个完整类型编码（ivar 的 type / 属性的 T 段）翻成 C 声明"""
    t = t.strip()
    if not t:
        return 'id'
    if t.startswith('@"'):
        k = t.find('"', 2)
        cls = t[2:k] if k > 0 else t[2:]
        if cls.startswith('<') or not cls:
            return 'id'          # @"<Protocol>" 之类
        return cls + ' *'
    if t.startswith('{'):
        name = t[1:t.index('=')] if '=' in t else t[1:-1]
        return STRUCTS.get(name, 'void *')
    if t.startswith('['):
        return 'void *'
    if t.startswith('^'):
        return 'void *'
    if t.startswith('@?'):
        return 'id'
    if t == '@':
        return 'id'
    return PRIM.get(t, 'id')


def type_decl_of_ivar(iv):
    return decode_type_enc(iv['type'])


def is_obj_type(t):
    return t.endswith('*') or t in ('id', 'Class')


def split_prop_attrs(a):
    """属性字符串按逗号切段，但要跳过 @"..." 引号内和 {..}(..)[..] 括号内的逗号"""
    parts, cur = [], ''
    quote = False
    depth = 0
    for ch in a:
        if ch == '"':
            quote = not quote
            cur += ch
        elif quote:
            cur += ch
        elif ch in '{([<':
            depth += 1
            cur += ch
        elif ch in '})]>':
            depth -= 1
            cur += ch
        elif ch == ',' and depth == 0:
            parts.append(cur)
            cur = ''
        else:
            cur += ch
    if cur:
        parts.append(cur)
    return parts


def parse_prop(p):
    """返回 dict(type/ivar/copy/strong/weak/readonly/nonatomic/atomic/dynamic)"""
    out = {'type': 'id', 'ivar': None, 'copy': False, 'strong': False,
           'weak': False, 'readonly': False, 'nonatomic': False, 'dynamic': False}
    for seg in split_prop_attrs(p['attrs']):
        if seg.startswith('T'):
            out['type'] = decode_type_enc(seg[1:])
            continue
        if seg.startswith('V'):
            out['ivar'] = seg[1:]
            continue
        if seg == 'C':
            out['copy'] = True
        elif seg == '&':
            out['strong'] = True
        elif seg == 'W':
            out['weak'] = True
        elif seg == 'R':
            out['readonly'] = True
        elif seg == 'N':
            out['nonatomic'] = True
        elif seg == 'D':
            out['dynamic'] = True
        # G/S 只是改存取器名，声明属性时不需要
    return out


def prop_types(c):
    """{属性名: C 类型}；属性存取器的签名必须和属性类型一致，否则 clang 报冲突"""
    return {p['name']: parse_prop(p)['type'] for p in c['props']}


def method_sig(c, m, ptypes):
    """生成方法签名；属性存取器强制用属性类型"""
    sel = m['sel']
    ret, args = parse_encoding(m['type'])
    if sel in ptypes and not sel_parts(sel):
        ret = ptypes[sel]
    if sel.startswith('set') and sel.endswith(':'):
        pn = sel[3:-1]
        # setGid: 对应属性 gid，首字母大小写会不一样，两种写法都试
        t = ptypes.get(pn)
        if t is None and pn:
            t = ptypes.get(pn[0].lower() + pn[1:])
        if t is not None:
            args = [t] + args[1:] if args else [t]
    parts = sel_parts(sel)
    if not parts:
        return '- (%s)%s' % (ret, sel)
    segs = []
    for i, nm in enumerate(parts):
        a = args[i] if i < len(args) else 'id'
        an = nm if nm else ('arg%d' % i)
        segs.append('%s:(%s)%s' % (nm, a, an))
    return '- (%s)%s' % (ret, ' '.join(segs))


def gen_header(classes):
    cls_by_name = {c['name']: c for c in classes}
    L = []
    L.append('//')
    L.append('//  LZLanchu.h — 懒触 v1.0.35 逆向还原工程（接口层）')
    L.append('//  由 tools/m5_gen.py 从 Mach-O 的 ObjC 元数据直接生成，类名/方法名/ivar 均为原始符号，')
    L.append('//  与二进制里的实际布局一一对应。改功能时按类查这里的方法名即可。')
    L.append('//')
    L.append('#import <UIKit/UIKit.h>')
    L.append('#import <Foundation/Foundation.h>')
    L.append('#import <os/lock.h>')
    L.append('')
    L.append('// IOHID 私有类型（Theos 公开 SDK 里没有这些头，前置声明即可）')
    L.append('typedef struct __IOHIDEvent *IOHIDEventRef;')
    L.append('typedef struct __IOHIDEventSystemClient *IOHIDEventSystemClientRef;')
    L.append('')
    for c in classes:
        cls = c['name']
        sup = c['superclass'] if c['superclass'] != 'ROOT' else 'NSObject'
        L.append('@class %s;' % cls)
    L.append('')
    for c in classes:
        cls = c['name']
        sup = c['superclass'] if c['superclass'] != 'ROOT' else 'NSObject'
        L.append('@interface %s : %s {' % (cls, sup))
        # 属性 → 后备 ivar，用来对齐 ivar 声明与属性类型（类型不一致会编译报错）
        backing = {}
        for p in c['props']:
            pa = parse_prop(p)
            if pa['ivar']:
                backing[pa['ivar']] = pa['type']
        # 父类已声明的 ivar 名不能再声明一次
        inherited = set()
        seen = set()
        cur = sup
        chain = 0
        while cur and chain < 16:
            pc = cls_by_name.get(cur)
            if not pc:
                break
            for iv in pc['ivars']:
                inherited.add(iv['name'])
            cur = pc['superclass'] if pc['superclass'] != 'ROOT' else None
            chain += 1
        if c['ivars']:
            for iv in sorted(c['ivars'], key=lambda x: x['offset']):
                nm = iv['name']
                if nm in inherited:
                    L.append('    // %-40s 继承自 %s（off %d）' % (nm + ';', sup, iv['offset']))
                    continue
                if nm in seen:
                    continue
                seen.add(nm)
                decl = backing.get(nm) or type_decl_of_ivar(iv)
                L.append('    %-40s %s;   // off %d' % (decl, nm, iv['offset']))
        L.append('}')
        # 属性
        for p in c['props']:
            pa = parse_prop(p)
            t = pa['type']
            keep = []
            if pa['copy'] and is_obj_type(t):
                keep.append('copy')
            elif pa['strong'] and is_obj_type(t):
                keep.append('strong')
            elif pa['weak'] and is_obj_type(t):
                keep.append('weak')
            keep.append('nonatomic' if pa['nonatomic'] else 'atomic')
            if pa['readonly']:
                keep.append('readonly')
            if pa['dynamic']:
                keep.append('dynamic')
            L.append('@property (%s) %s%s%s;' % (
                ', '.join(keep), t, '' if t.endswith('*') else ' ', p['name']))
        # 方法（.cxx_destruct / .cxx_construct 这类 SEL 不能声明；同名只声明一次）
        ptypes = prop_types(c)
        decl_done = set()
        for m in c['methods']:
            sel = m['sel']
            if sel.startswith('.') or sel in decl_done:
                continue
            decl_done.add(sel)
            L.append(method_sig(c, m, ptypes) + ';')
        L.append('@end')
        L.append('')
    return '\n'.join(L)


def gen_impl(c, autogen_ratio):
    cls = c['name']
    sup = c['superclass'] if c['superclass'] != 'ROOT' else 'NSObject'
    L = []
    L.append('//')
    L.append('//  %s.m — 逆向还原' % cls)
    L.append('//')
    L.append('#import "LZLanchu.h"')
    L.append('#import "LZRuntime.h"')
    L.append('')
    L.append('@implementation %s' % cls)
    # 只在「属性没有任何手写存取器」时才 @synthesize；
    # 有存取器时交给头文件里已声明的 ivar，避免与自动合成冲突。
    sels = {m['sel'] for m in c['methods']}
    for p in c['props']:
        pa = parse_prop(p)
        name = p['name']
        if name in sels or ('set%s:' % name) in sels:
            continue
        if not pa['ivar']:
            continue
        L.append('@synthesize %s = %s;' % (name, pa['ivar']))
    L.append('')
    todo = 0
    ptypes = prop_types(c)
    for m in c['methods']:
        if m['sel'].startswith('.'):
            continue
        # 若该方法是属性存取器且已 synthesize，跳过（除非手写实现有额外逻辑）
        sig = method_sig(c, m, ptypes)
        body = simple_body(c, m)
        L.append('%s {   // 0x%x' % (sig, m['imp']))
        if body is not None:
            if body:
                L.append('    %s' % body)
        else:
            todo += 1
            L.append('    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，')
            L.append('    //              对照 analysis/all.asm 里的 %s %s 即可补全。' % (cls, m['sel']))
            L.extend(fmt_asm(m['imp']))
        L.append('}')
        L.append('')
    L.append('@end')
    return '\n'.join(L), todo


def main():
    classes = j['classes']
    os.makedirs(SRC, exist_ok=True)
    h = gen_header(classes)
    open(os.path.join(SRC, 'LZLanchu.h'), 'w', encoding='utf-8', newline='\n').write(h)

    total_todo = 0
    total_m = 0
    for c in classes:
        name = c['name']
        if '(' in name:
            continue
        impl, todo = gen_impl(c, 0)
        total_todo += todo
        total_m += len(c['methods'])
        safe = FILENAME.get(name) or re.sub(r'[^\w]', '_', name)
        if not safe.isascii():
            safe = 'Cls_%02d' % classes.index(c)
        if not safe.isascii():
            safe = 'Cls_%02d' % classes.index(c)
        open(os.path.join(SRC, safe + '.m'), 'w', encoding='utf-8', newline='\n').write(impl)
    print('类 %d，方法 %d，未还原(TODO) %d，已还原 %d' % (
        len(classes), total_m, total_todo, total_m - total_todo))


if __name__ == '__main__':
    main()
