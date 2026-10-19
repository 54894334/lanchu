#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""m3_disasm.py — Mach-O 反汇编工作台

用法：
  python m3_disasm.py info
  python m3_disasm.py func 0x12345            # 反汇编该地址所在函数
  python m3_disasm.py func CQTaskEngine -运行   # 按「类 方法」查
  python m3_disasm.py list                    # 列出全部函数边界
  python m3_disasm.py strdump                 # 打印所有字符串（cstring/ustring/cfstring）
  python m3_disasm.py calls 0x12345           # 只看该函数的调用/字符串引用
"""
import struct, sys, os, json, re
from capstone import *
from capstone.arm64 import *

PATH = r"D:\qq系统\工具压缩包\懒触连点器可逆向.dylib"
HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', 'analysis')

d = open(PATH, 'rb').read()
cputype, cpusub, ftype, ncmds, sizeofcmds, flags, res = struct.unpack_from('<IIIIIII', d, 4)

segs = {}          # sect name -> (addr,size,offset)
seg_ranges = []    # (name, vmaddr, vmsize, fileoff, filesize)
dylibs = []
lc = 32
symtab = None
func_starts_lc = None
dyld_info = None
for _ in range(ncmds):
    cmd, cmdsize = struct.unpack_from('<II', d, lc)
    if cmd == 0x19:
        segname = d[lc + 8:lc + 24].rstrip(b'\0').decode()
        vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<QQQQ', d, lc + 24)
        nsects = struct.unpack_from('<I', d, lc + 64)[0]
        seg_ranges.append((segname, vmaddr, vmsize, fileoff, filesize))
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


def vm2off(vm):
    for name, a, s, o, fs in seg_ranges:
        if a <= vm < a + fs:
            return o + (vm - a)
    # __bss 之类无文件映射
    return None


def u32(vm):
    o = vm2off(vm)
    return struct.unpack_from('<I', d, o)[0] if o is not None else 0


def u64(vm):
    o = vm2off(vm)
    return struct.unpack_from('<Q', d, o)[0] if o is not None else 0


def cstr(vm):
    if not vm:
        return ''
    o = vm2off(vm)
    if o is None:
        return '<nv 0x%x>' % vm
    e = d.find(b'\0', o)
    return d[o:e].decode('utf-8', 'replace')


# ---------- 函数边界 ----------
def parse_func_starts():
    if not func_starts_lc:
        return []
    off = func_starts_lc[0]
    end = off + func_starts_lc[1]
    starts = [0x8000]  # __text 起点
    p = off
    addr = 0
    while p < end:
        v = 0
        shift = 0
        while True:
            b = d[p]; p += 1
            v |= (b & 0x7F) << shift
            shift += 7
            if not (b & 0x80):
                break
        if v == 0:
            break
        addr += v
        starts.append(addr)
    return starts


STARTS = parse_func_starts()

# ---------- bind 符号表（__got / __la_symbol_ptr） ----------
BIND = {}


def parse_bind():
    if not dyld_info:
        return
    bind_off, bind_size = dyld_info[2], dyld_info[3]
    p = bind_off
    end = bind_off + bind_size
    segidx = 0
    segoff = 0
    lib = 0
    sym = ''
    flagsv = 0
    addend = 0
    addr = 0

    def seg_base(i):
        return seg_ranges[i][1] if i < len(seg_ranges) else 0

    while p < end:
        b = d[p]; p += 1
        op = b & 0xF0
        imm = b & 0x0F
        if op == 0x00:
            continue
        elif op == 0x10:
            lib = imm
        elif op == 0x20:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            lib = v
        elif op == 0x30:
            lib = 0 if imm == 0 else (imm | 0xF0) - 256
        elif op == 0x40:
            s = d[p:].split(b'\0')[0]
            p += len(s) + 1
            sym = s.decode('utf-8', 'replace')
            flagsv = imm
        elif op == 0x50:
            pass
        elif op == 0x60:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            if v & 0x40:
                v -= 1 << (sh)
            addend = v
        elif op == 0x70:
            segidx = imm
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            segoff = v
            addr = seg_base(segidx) + segoff
        elif op == 0x80:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            addr += v
        elif op == 0x90:
            BIND[addr] = sym
            addr += 8
        elif op == 0xA0:
            v = 0; sh = 0
            while True:
                c = d[p]; p += 1
                v |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            BIND[addr] = sym
            addr += 8 + v
        elif op == 0xB0:
            BIND[addr] = sym
            addr += 8 + imm * 8
        elif op == 0xC0:
            count = 0; sh = 0
            while True:
                c = d[p]; p += 1
                count |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            skip = 0; sh = 0
            while True:
                c = d[p]; p += 1
                skip |= (c & 0x7F) << sh; sh += 7
                if not (c & 0x80):
                    break
            for _k in range(count):
                BIND[addr] = sym
                addr += 8 + skip
        else:
            break


parse_bind()

# ---------- 导出符号（__objc_stubs 走 selref，bl 到 stub 需要解析到 ObjC 调用） ----------
SYMS = {}


def parse_syms():
    if not symtab:
        return
    symoff, nsyms, stroff, strsize = symtab
    for i in range(nsyms):
        strx, ntype, nsect, ndesc = struct.unpack_from('<IBBH', d, symoff + i * 16)
        val = struct.unpack_from('<Q', d, symoff + i * 16 + 8)[0]
        e = d.find(b'\0', stroff + strx)
        SYMS[val] = d[stroff + strx:e].decode('utf-8', 'replace')


parse_syms()

md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.detail = True


def func_end(addr):
    import bisect
    i = bisect.bisect_right(STARTS, addr) - 1
    if i + 1 < len(STARTS):
        return STARTS[i + 1]
    return addr + 0x400


def annotate(addr, insn, next_addr):
    """把操作数翻成人话：字符串、cfstring、stub 目标、符号"""
    notes = []
    mnem = insn.mnemonic
    ops = insn.op_str
    if mnem in ('adrp',):
        return None
    if mnem == 'bl' or mnem == 'b':
        try:
            tgt = int(ops.lstrip('#'), 16) if ops.startswith('#') else int(ops, 16)
        except Exception:
            tgt = None
        if tgt is not None:
            if tgt in SYMS:
                notes.append('sym=' + SYMS[tgt])
            elif 'objc_stubs' in segs and segs['objc_stubs'][0] <= tgt < segs['objc_stubs'][0] + segs['objc_stubs'][1]:
                # objc stub: ldr x16, [pc, #x]  → selref
                o = vm2off(tgt)
                if o:
                    off = struct.unpack_from('<i', d, o + 4)[0] >> 2
                    selptr = tgt + off
                    sel = u64(selptr)
                    notes.append('objc[%s]' % cstr(sel))
            elif tgt in STARTS:
                notes.append('func_0x%x' % tgt)
    if mnem == 'ldr' and '[x' in ops:
        m = re.search(r'#(0x[0-9a-f]+|\d+)\]', ops)
    return notes


def dump_func(addr, show_calls_only=False, limit=400):
    end = func_end(addr)
    code = d[addr:end] if vm2off(addr) is not None else b''
    o = vm2off(addr)
    if o is None:
        print('  地址无文件映射')
        return
    code = d[o:o + (end - addr)]
    print('; ---- func 0x%x .. 0x%x  (%d bytes, %d insns) ----' % (addr, end, end - addr, len(code) // 4))
    if addr in SYMS:
        print('; name: %s' % SYMS[addr])
    adrp_reg = {}
    n = 0
    for insn in md.disasm(code, addr):
        n += 1
        if n > limit:
            print('   ... (truncated)')
            break
        note = ''
        if insn.mnemonic == 'adrp':
            try:
                reg, val = insn.op_str.split(', ')
                adrp_reg[reg] = int(val, 16)
            except Exception:
                pass
        elif insn.mnemonic in ('add', 'ldr', 'ldrb', 'ldrh', 'ldrsb', 'str', 'mov', 'cmp', 'adr'):
            m = re.match(r'(x\d+|w\d+), \[(x\d+|w\d+)(?:, #(0x[0-9a-f]+|\d+))?\]', insn.op_str)
            if m and m.group(2) in adrp_reg:
                off = int(m.group(3), 16) if m.group(3) else 0
                target = adrp_reg[m.group(2)] + off
                s = cstr(target)
                if s and len(s) < 120 and s.isprintable():
                    note = '   ; "%s" @0x%x' % (s.replace('\n', '\\n'), target)
                elif target in BIND:
                    note = '   ; bind=%s' % BIND[target]
        if insn.mnemonic in ('bl', 'b') and insn.op_str.startswith('#'):
            tgt = int(insn.op_str[1:], 16)
            if 'objc_stubs' in segs and segs['objc_stubs'][0] <= tgt < segs['objc_stubs'][0] + segs['objc_stubs'][1]:
                o2 = vm2off(tgt)
                off2 = struct.unpack_from('<i', d, o2 + 4)[0] >> 2
                sel = u64(tgt + off2)
                note = '   ; objc_msgSend %s' % cstr(sel)
            elif tgt in SYMS:
                note = '   ; %s' % SYMS[tgt]
            elif tgt in STARTS:
                note = '   ; func_0x%x' % tgt
            elif tgt in BIND:
                note = '   ; %s' % BIND[tgt]
        if show_calls_only and not note:
            continue
        print('   0x%06x: %-8s %-42s%s' % (insn.address, insn.mnemonic, insn.op_str, note))


def find_by_sel(cls, sel):
    j = json.load(open(os.path.join(OUT, 'objc.json'), encoding='utf-8'))
    for c in j['classes']:
        if c['name'] == cls:
            for m in c['methods']:
                if m['sel'].rstrip(':') == sel or m['sel'] == sel:
                    return m
    return None


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return
    cmd = sys.argv[1]
    if cmd == 'info':
        print('file      :', PATH, len(d), 'bytes')
        print('dylibs    :')
        for i, x in enumerate(dylibs):
            print('   %2d %s' % (i + 1, x))
        print('sections  :', len(segs))
        print('functions :', len(STARTS))
        print('bind slots:', len(BIND))
        print('symbols   :', len(SYMS))
    elif cmd == 'list':
        for a in STARTS:
            print('0x%06x %s' % (a, SYMS.get(a, '')))
    elif cmd == 'func':
        if len(sys.argv) >= 4:
            m = find_by_sel(sys.argv[2], sys.argv[3])
            if not m:
                print('未找到方法')
                return
            print('; %s %s  type=%s' % (sys.argv[2], sys.argv[3], m['type']))
            dump_func(m['imp'])
        else:
            dump_func(int(sys.argv[2], 16))
    elif cmd == 'calls':
        dump_func(int(sys.argv[2], 16), show_calls_only=True)
    elif cmd == 'strdump':
        for name in ('cstring', 'ustring'):
            a, s, o = segs[name]
            p = o
            while p < o + s:
                e = d.find(b'\0', p)
                if e == p:
                    p += 1
                    continue
                raw = d[p:e]
                if name == 'ustring':
                    try:
                        t = raw.decode('utf-16-le')
                    except Exception:
                        t = repr(raw)
                else:
                    t = raw.decode('utf-8', 'replace')
                print('%-9s 0x%06x  %s' % (name, a + (p - o), t.replace('\n', '\\n')))
                p = e + 1
    else:
        print(__doc__)


if __name__ == '__main__':
    main()
