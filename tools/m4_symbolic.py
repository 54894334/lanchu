#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""m4_symbolic.py — 符号化反汇编（把 objc_msgSend / 字符串 / 类引用 / 外部调用都还原成可读形式）

用法：
  python m4_symbolic.py "CQStore" "数据目录"
  python m4_symbolic.py --addr 0x1362c
  python m4_symbolic.py --all CQTaskEngine      # 输出该类所有方法到 analysis/<class>.asm
  python m4_symbolic.py --dumpall               # 全量 dump 到 analysis/all.asm（很大）
"""
import struct, sys, os, json, re, bisect
from capstone import *
from capstone.arm64 import *

PATH = r"D:\qq系统\工具压缩包\懒触连点器可逆向.dylib"
HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'analysis')
d = open(PATH, 'rb').read()
cputype, cpusub, ftype, ncmds, sizeofcmds, flags, res = struct.unpack_from('<IIIIIII', d, 4)

segs, seg_ranges, dylibs = {}, [], []
symtab = func_starts_lc = dyld_info = None
lc = 32
for _ in range(ncmds):
    cmd, cmdsize = struct.unpack_from('<II', d, lc)
    if cmd == 0x19:
        segname = d[lc + 8:lc + 24].rstrip(b'\0').decode()
        vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<QQQQ', d, lc + 24)
        seg_ranges.append((segname, vmaddr, vmsize, fileoff, filesize))
        nsects = struct.unpack_from('<I', d, lc + 64)[0]
        so = lc + 72
        for _s in range(nsects):
            sname = d[so:so + 16].rstrip(b'\0').decode()
            addr, size = struct.unpack_from('<QQ', d, so + 32)
            offset = struct.unpack_from('<I', d, so + 48)[0]
            segs[sname] = (addr, size, offset)
            so += 80
    elif cmd == 0xc:
        nameoff = struct.unpack_from('<I', d, lc + 8)[0]
        dylibs.append(d[lc + nameoff:].split(b'\0')[0].decode('utf-8', 'replace'))
    elif cmd == 0x2:
        symtab = struct.unpack_from('<IIII', d, lc + 8)
    elif cmd == 0x26:
        func_starts_lc = struct.unpack_from('<II', d, lc + 8)
    elif cmd in (0x22, 0x80000022):
        dyld_info = struct.unpack_from('<IIIIIIIIII', d, lc + 8)
    lc += cmdsize

STUBS = segs.get('__stubs', (0, 0, 0))
STUB_HELPER = segs.get('__stub_helper', (0, 0, 0))
OBJC_STUBS = segs.get('__objc_stubs', (0, 0, 0))


def vm2off(vm):
    for name, a, s, o, fs in seg_ranges:
        if a <= vm < a + fs:
            return o + (vm - a)
    return None


def rd(fmt, vm, default=0):
    o = vm2off(vm)
    if o is None:
        return default
    try:
        return struct.unpack_from(fmt, d, o)[0]
    except Exception:
        return default


def u32(vm):
    return rd('<I', vm)


def u64(vm):
    return rd('<Q', vm)


def s32(vm):
    v = u32(vm)
    return v - (1 << 32) if v >= (1 << 31) else v


def cstr(vm):
    if not vm:
        return ''
    o = vm2off(vm)
    if o is None:
        return ''
    e = d.find(b'\0', o)
    if e < 0 or e - o > 400:
        return ''
    try:
        return d[o:e].decode('utf-8')
    except Exception:
        return ''


# ---------- 函数边界 ----------
def parse_func_starts():
    if not func_starts_lc:
        return [0x8000]
    off = func_starts_lc[0]
    end = off + func_starts_lc[1]
    starts = [0x8000]
    p, addr = off, 0
    while p < end:
        v, shift = 0, 0
        while True:
            b = d[p]; p += 1
            v |= (b & 0x7F) << shift; shift += 7
            if not (b & 0x80):
                break
        if v == 0:
            break
        addr += v
        starts.append(addr)
    return starts


STARTS = parse_func_starts()

# ---------- bind ----------
BIND = {}


def parse_bind():
    """LC_DYLD_INFO: [0,1]=rebase [2,3]=bind [4,5]=weak [6,7]=lazy [8,9]=export"""
    if not dyld_info:
        return
    _parse_bind_stream(dyld_info[2], dyld_info[3])   # __got / 非懒绑定
    _parse_bind_stream(dyld_info[6], dyld_info[7])   # __la_symbol_ptr / 懒绑定


def _parse_bind_stream(bind_off, bind_size):
    if not bind_size:
        return
    p, end = bind_off, bind_off + bind_size
    segidx = segoff = 0
    sym = ''
    addr = 0
    while p < end:
        b = d[p]; p += 1
        op, imm = b & 0xF0, b & 0x0F
        if op == 0x00:
            continue
        elif op in (0x10,):
            pass
        elif op == 0x20:
            while d[p] & 0x80:
                p += 1
            p += 1
        elif op == 0x30:
            pass
        elif op == 0x40:
            s = d[p:].split(b'\0')[0]
            p += len(s) + 1
            sym = s.decode('utf-8', 'replace')
        elif op == 0x50 or op == 0x60:
            if op == 0x60:
                while d[p] & 0x80:
                    p += 1
                p += 1
        elif op == 0x70:
            segidx = imm
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            segoff = v
            addr = seg_ranges[segidx][1] + segoff
        elif op == 0x80:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            addr += v
        elif op == 0x90:
            BIND[addr] = sym; addr += 8
        elif op == 0xA0:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            BIND[addr] = sym; addr += 8 + v
        elif op == 0xB0:
            BIND[addr] = sym; addr += 8 + imm * 8
        elif op == 0xC0:
            cnt = 0; sh = 0
            while True:
                c = d[p]; p += 1
                cnt |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            skip = 0; sh = 0
            while True:
                c = d[p]; p += 1
                skip |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            for _k in range(cnt):
                BIND[addr] = sym; addr += 8 + skip
        else:
            break


parse_bind()

SYMS = {}
if symtab:
    symoff, nsyms, stroff, strsize = symtab
    for i in range(nsyms):
        strx = struct.unpack_from('<I', d, symoff + i * 16)[0]
        val = struct.unpack_from('<Q', d, symoff + i * 16 + 8)[0]
        e = d.find(b'\0', stroff + strx)
        SYMS[val] = d[stroff + strx:e].decode('utf-8', 'replace')

# ---------- 类名表：class vmaddr -> name ----------
CLASSNAME = {}
objc = json.load(open(os.path.join(OUT, 'objc.json'), encoding='utf-8'))
for c in objc['classes']:
    CLASSNAME[c['addr']] = c['name']
for c in objc['cats']:
    if c.get('cls_addr'):
        CLASSNAME.setdefault(c['cls_addr'], c['name'])


def resolve_stub(vm):
    """__stubs / __objc_stubs 里的一条 stub -> 目标描述"""
    o = vm2off(vm)
    if o is None:
        return None
    if OBJC_STUBS[0] <= vm < OBJC_STUBS[0] + OBJC_STUBS[1]:
        off = struct.unpack_from('<i', d, o + 4)[0] >> 2
        sel = u64(vm + off)
        return ('objc_msgSend', cstr(sel))
    if STUBS[0] <= vm < STUBS[0] + STUBS[1]:
        # adrp x16, page ; ldr x16, [x16, #off] ; br x16
        try:
            ins = list(md.disasm(d[o:o + 12], vm, 3))
        except Exception:
            return None
        if len(ins) >= 2 and ins[0].mnemonic == 'adrp':
            page = int(ins[0].op_str.split(', ')[1].lstrip('#'), 16)
            m = re.search(r'#(0x[0-9a-f]+|\d+)\]', ins[1].op_str)
            if m:
                ptr = page + int(m.group(1), 16)
                return ('import', BIND.get(ptr, SYMS.get(ptr, 'imp_0x%x' % ptr)))
        return ('stub', '0x%x' % vm)
    if STUB_HELPER[0] <= vm < STUB_HELPER[0] + STUB_HELPER[1]:
        return ('stub_helper', '0x%x' % vm)
    return None


def describe_ptr(target):
    """某个指针地址指向的内容 -> 描述"""
    # cfstring
    a, s, o = segs.get('__cfstring', (0, 0, 0))
    if a <= target < a + s:
        cptr = u64(target + 16)
        ln = u64(target + 24)
        txt = cstr(cptr)
        return 'CFSTR("%s")' % txt.replace('\n', '\\n')
    # selref -> SEL
    a, s, o = segs.get('__objc_selrefs', (0, 0, 0))
    if a <= target < a + s:
        return 'SEL("%s")' % cstr(u64(target))
    # classref -> 类
    for sname in ('__objc_classrefs', '__objc_superrefs'):
        a, s, o = segs.get(sname, (0, 0, 0))
        if a <= target < a + s:
            if target in BIND:
                nm = BIND[target]
                for pre in ('_OBJC_CLASS_$_', '_OBJC_METACLASS_$_'):
                    if nm.startswith(pre):
                        nm = nm[len(pre):]
                        break
                return 'class(%s)' % nm
            cls = u64(target)
            nm = CLASSNAME.get(cls)
            if not nm and cls:
                ro = u64(cls + 32) & 0xFFFFFFFFF8
                nm = cstr(u64(ro + 24))
            return 'class(%s)' % (nm or '?0x%x' % cls)
    # __const / __got / la_symbol_ptr
    if target in BIND:
        return 'symbol(%s)' % BIND[target]
    if target in SYMS:
        return 'sym(%s)' % SYMS[target]
    for sname in ('__const', '__data', '__bss'):
        a, s, o = segs.get(sname, (0, 0, 0))
        if a <= target < a + s:
            v = u64(target)
            return 'data_0x%x(=0x%x)' % (target, v)
    return 'ptr_0x%x' % target


md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.detail = True

# ---------- 识别「sel 专用的 objc_msgSend stub」 ----------
# clang 会把 [obj msg] 编成一串 4 条指令的小函数：
#   adrp x1, #selref页 ; ldr x1, [x1, #off] ; adrp x16, #got ; ldr x16, [x16, #n] ; br x16
# bl 到这种地址 = 一次消息发送，SEL 已经烧在常量池里
_MSGSEND_CACHE = {}
SELREFS = segs.get('__objc_selrefs', (0, 0, 0))


def _got_is_msgsend(ptr):
    return BIND.get(ptr) == '_objc_msgSend'


def msgsend_stub_sel(addr):
    if addr in _MSGSEND_CACHE:
        return _MSGSEND_CACHE[addr]
    res = None
    o = vm2off(addr)
    if o is not None and SELREFS[0] <= addr < SELREFS[0] + SELREFS[1] + 0x2000:
        pass
    if o is not None:
        page = {}
        seen_sel = None
        tail_ok = False
        for ins in md.disasm(d[o:o + 32], addr):
            if ins.mnemonic == 'adrp':
                try:
                    dst, val = [x.strip() for x in ins.op_str.split(',', 1)]
                    page[dst] = int(val.lstrip('#'), 16)
                except Exception:
                    pass
            elif ins.mnemonic == 'ldr':
                mm = re.match(r'(\w+), \[(\w+)(?:, #(0x[0-9a-f]+|\d+))?\]', ins.op_str)
                if mm and mm.group(2) in page:
                    tgt = page[mm.group(2)] + (int(mm.group(3), 16) if mm.group(3) else 0)
                    if SELREFS[0] <= tgt < SELREFS[0] + SELREFS[1]:
                        if mm.group(1) in ('x1', 'w1'):
                            seen_sel = cstr(u64(tgt))
                    elif _got_is_msgsend(tgt):
                        tail_ok = True
            elif ins.mnemonic in ('br', 'b') and ins.op_str.startswith('#'):
                tgt = int(ins.op_str[1:], 16)
                if STUBS[0] <= tgt < STUBS[0] + STUBS[1]:
                    r = resolve_stub(tgt)
                    if r and r[0] == 'objc_msgSend':
                        tail_ok = True
                break
        if tail_ok and seen_sel:
            res = seen_sel
    _MSGSEND_CACHE[addr] = res
    return res


def func_end(addr):
    i = bisect.bisect_right(STARTS, addr) - 1
    return STARTS[i + 1] if i + 1 < len(STARTS) else addr + 0x600


def symbolic(addr, max_insn=2000):
    """返回 [(addr, mnem, opstr, note), ...]"""
    end = func_end(addr)
    o = vm2off(addr)
    if o is None:
        return []
    code = d[o:o + (end - addr)]
    reg = {}
    out = []
    for insn in md.disasm(code, addr):
        m, ops = insn.mnemonic, insn.op_str
        note = ''
        if m == 'adrp':
            try:
                dst, val = [x.strip() for x in ops.split(',', 1)]
                reg[dst] = ('page', int(val.lstrip('#'), 16))
            except Exception:
                pass
        elif m in ('add', 'sub') and ops.count(',') == 2:
            dst, src, imm = [x.strip() for x in ops.split(',')]
            if src in reg and reg[src][0] == 'page':
                try:
                    delta = int(imm.lstrip('#'), 16)
                    if m == 'sub':
                        delta = -delta
                    reg[dst] = ('addr', reg[src][1] + delta)
                except Exception:
                    reg.pop(dst, None)
            else:
                reg[dst] = ('val', src)
        elif m == 'ldr' and '[' in ops:
            mm = re.match(r'(\w+), \[(\w+)(?:, #(0x[0-9a-f]+|\d+))?\]', ops)
            if mm:
                dst, base, offs = mm.group(1), mm.group(2), mm.group(3)
                if base in reg and reg[base][0] == 'page':
                    tgt = reg[base][1] + (int(offs, 16) if offs else 0)
                    desc = describe_ptr(tgt)
                    reg[dst] = ('desc', desc)
                    note = '; %s' % desc
                else:
                    reg[dst] = ('load', base)
        elif m == 'ldr' and ops.startswith('w') is False and '=' in ops:
            pass
        elif m.startswith('mov') and ',' in ops:
            try:
                dst, src = [x.strip() for x in ops.split(',', 1)]
                if src in reg:
                    reg[dst] = reg[src]
                else:
                    reg[dst] = ('imm', src)
            except Exception:
                pass
        elif m == 'bl' or m == 'b':
            if ops.startswith('#'):
                tgt = int(ops[1:], 16)
                sstub = msgsend_stub_sel(tgt)
                if sstub:
                    recv = reg.get('x0')
                    rdesc = recv[1] if recv and recv[0] in ('desc', 'imm') else 'x0'
                    args = []
                    for k in ('x2', 'x3', 'x4', 'x5', 'x6', 'x7'):
                        v = reg.get(k)
                        args.append(v[1] if v and v[0] in ('desc', 'imm') else k)
                    out.append((insn.address, m, ops,
                                '; [%s %s] %s' % (rdesc, sstub, ', '.join(args))))
                    continue
                r = resolve_stub(tgt)
                if r and r[0] == 'objc_msgSend':
                    sel = r[1]
                    recv = reg.get('x0')
                    rdesc = recv[1] if recv and recv[0] in ('desc', 'val', 'imm') else 'x0'
                    args = []
                    for k in ('x2', 'x3', 'x4', 'x5'):
                        v = reg.get(k)
                        if v and v[0] == 'desc':
                            args.append(v[1])
                        elif v and v[0] == 'imm':
                            args.append(v[1])
                        else:
                            args.append(k)
                    note = '; [%s %s] %s' % (rdesc, sel, ', '.join(args))
                elif r and r[0] == 'import':
                    note = '; %s' % r[1]
                elif r and r[0] == 'stub':
                    note = '; stub_%s' % r[1]
                elif tgt in SYMS:
                    note = '; %s' % SYMS[tgt]
                elif tgt in STARTS:
                    note = '; func_0x%x' % tgt
        out.append((insn.address, m, ops, note))
        if len(out) > max_insn:
            out.append((insn.address, '...', 'truncated', ''))
            break
    return out


QUIET = False


def print_func(addr, header=''):
    lines = symbolic(addr)
    if not lines:
        return ''
    buf = []
    if header:
        buf.append('; ' + header)
    end = func_end(addr)
    buf.append('; ---- 0x%x .. 0x%x (%d bytes) ----' % (addr, end, end - addr))
    for a, m, ops, note in lines:
        buf.append('   0x%06x  %-8s %-44s%s' % (a, m, ops, note))
    s = '\n'.join(buf)
    if not QUIET:
        print(s)
    return s


def find_method(cls, sel):
    for c in objc['classes']:
        if c['name'] == cls:
            for m in c['methods']:
                if m['sel'] == sel or m['sel'].rstrip(':') == sel:
                    return m
    return None


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return
    if args[0] == '--addr':
        print_func(int(args[1], 16))
        return
    if args[0] == '--all':
        cls = args[1]
        target = [c for c in objc['classes'] if c['name'] == cls]
        if not target:
            print('没有该类')
            return
        c = target[0]
        out = []
        for m in c['methods']:
            out.append(print_func(m['imp'], '%s %s type=%s' % (cls, m['sel'], m['type'])))
        p = os.path.join(OUT, 'asm_%s.txt' % cls)
        open(p, 'w', encoding='utf-8').write('\n\n'.join(out))
        print('\n[已写出] %s  (%d 方法)' % (p, len(c['methods'])))
        return
    if args[0] == '--dumpall':
        global QUIET
        QUIET = True
        parts = []
        for c in objc['classes']:
            for m in c['methods']:
                parts.append(print_func(m['imp'], '%s %s type=%s' % (c['name'], m['sel'], m['type'])))
        p = os.path.join(OUT, 'all.asm')
        open(p, 'w', encoding='utf-8').write('\n\n'.join(parts))
        print('[已写出] %s' % p)
        return
    if len(args) >= 2:
        m = find_method(args[0], args[1])
        if not m:
            print('没找到 %s %s' % (args[0], args[1]))
            return
        print_func(m['imp'], '%s %s type=%s' % (args[0], args[1], m['type']))


if __name__ == '__main__':
    main()
