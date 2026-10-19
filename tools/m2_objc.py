#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""第 2 步：ObjC 元数据（类 / 方法 / 属性 / ivar / 协议 / category）"""
import struct, sys, os, json

PATH = sys.argv[1] if len(sys.argv) > 1 else r"D:\qq系统\工具压缩包\懒触连点器可逆向.dylib"
OUT = os.path.join(os.path.dirname(__file__), '..', 'analysis')
d = open(PATH, 'rb').read()

cputype, cpusub, ftype, ncmds, sizeofcmds, flags, res = struct.unpack_from('<IIIIIII', d, 4)

# ---- 段表 ----
segs = {}
off = 32
for _ in range(ncmds):
    cmd, cmdsize = struct.unpack_from('<II', d, off)
    if cmd == 0x19:
        segname = d[off + 8:off + 24].rstrip(b'\0').decode()
        vmaddr, vmsize, fileoff, filesize = struct.unpack_from('<QQQQ', d, off + 24)
        nsects = struct.unpack_from('<I', d, off + 64)[0]
        so = off + 72
        for _s in range(nsects):
            sname = d[so:so + 16].rstrip(b'\0').decode()
            addr, size = struct.unpack_from('<QQ', d, so + 32)
            offset = struct.unpack_from('<I', d, so + 48)[0]
            segs[sname] = (addr, size, offset)
            so += 80
    off += cmdsize


def cstr(vm):
    if vm == 0:
        return ''
    for name, (a, s, o) in segs.items():
        if a <= vm < a + s and o:
            p = o + (vm - a)
            e = d.find(b'\0', p)
            return d[p:e].decode('utf-8', 'replace')
    return '<bad 0x%x>' % vm


def u32(vm):
    for name, (a, s, o) in segs.items():
        if a <= vm < a + s and o:
            return struct.unpack_from('<I', d, o + (vm - a))[0]
    return 0


def u64(vm):
    for name, (a, s, o) in segs.items():
        if a <= vm < a + s and o:
            return struct.unpack_from('<Q', d, o + (vm - a))[0]
    return 0


def s32(vm):
    v = u32(vm)
    return v - (1 << 32) if v >= (1 << 31) else v


def method_list(vm):
    """method_list_t: entsize(4) count(4) then entsize 字节的 method_t"""
    if not vm:
        return []
    entsize_count = u32(vm)
    entsize = entsize_count & 0x0000FFFC
    count = u32(vm + 4)
    out = []
    for i in range(count):
        base = vm + 8 + i * entsize
        name_ptr = u64(base)
        types_ptr = u64(base + 8)
        imp = u64(base + 16)
        out.append(dict(sel=cstr(name_ptr), type=cstr(types_ptr), imp=imp))
    return out


def ivar_list(vm):
    if not vm:
        return []
    entsize = u32(vm) & 0x0000FFFC
    count = u32(vm + 4)
    out = []
    for i in range(count):
        base = vm + 8 + i * entsize
        offp = u64(base)
        name = cstr(u64(base + 8))
        typ = cstr(u64(base + 16))
        align = u32(base + 24)
        size = u32(base + 28)
        o = u32(offp) if offp else 0
        out.append(dict(name=name, type=typ, offset=o, align=align, size=size))
    return out


def prop_list(vm):
    if not vm:
        return []
    entsize = u32(vm) & 0x0000FFFC
    count = u32(vm + 4)
    out = []
    for i in range(count):
        base = vm + 8 + i * entsize
        name = cstr(u64(base))
        attrs = cstr(u64(base + 8))
        out.append(dict(name=name, attrs=attrs))
    return out


def class_ro(vm):
    # class_ro_t: flags, instanceStart, instanceSize, reserved, ivarLayout, name, baseMethods,
    #             baseProtocols, ivars, weakIvarLayout, baseProperties
    r = dict(flags=u32(vm), instanceStart=u32(vm + 4), instanceSize=u32(vm + 8),
             name=cstr(u64(vm + 24)),
             methods_ptr=u64(vm + 32), protocols_ptr=u64(vm + 40),
             ivars_ptr=u64(vm + 48), props_ptr=u64(vm + 64))
    return r


def proto_name(vm):
    # protocol_t: isa, name, protocols, instanceMethods, classMethods, optional..., instanceProperties
    return cstr(u64(vm + 8))


classes = []
cl_vm, cl_size, cl_off = segs.get('__objc_classlist', (0, 0, 0))
for i in range(cl_size // 8):
    cls = u64(cl_vm + i * 8)
    if not cls:
        continue
    isa = u64(cls)
    sup = u64(cls + 8)
    data = u64(cls + 32)          # low bits: flags, mask 0x7 -> 0=ro, 8=ro_relative...
    ro_ptr = data & 0xFFFFFFFFF8 if (data & 0x7) else data
    ro = class_ro(ro_ptr)
    supname = cstr(u64(sup + 32) & 0xFFFFFFFFF8) if sup else 'ROOT'
    if sup:
        sdata = u64(sup + 32)
        supname = class_ro(sdata & 0xFFFFFFFFF8)['name']
    ivars = ivar_list(ro['ivars_ptr'])
    methods = method_list(ro['methods_ptr'])
    props = prop_list(ro['props_ptr'])
    protos = []
    if ro['protocols_ptr']:
        pc = u32(ro['protocols_ptr'] + 4)
        for k in range(pc):
            pvm = u64(ro['protocols_ptr'] + 8 + k * 8)
            protos.append(proto_name(pvm))
    classes.append(dict(name=ro['name'], superclass=supname, addr=cls, ro=ro_ptr,
                        instanceSize=ro['instanceSize'], flags=ro['flags'],
                        ivars=ivars, methods=methods, props=props, protocols=protos))

classes.sort(key=lambda c: c['name'])

# ---- categories ----
cats = []
ca_vm, ca_size, ca_off = segs.get('__objc_catlist', (0, 0, 0))
for i in range(ca_size // 8):
    cat = u64(ca_vm + i * 8)
    if not cat:
        continue
    name = cstr(u64(cat))
    cls = u64(cat + 8)
    inst_methods = method_list(u64(cat + 16))
    cls_methods = method_list(u64(cat + 24))
    protos = []
    pp = u64(cat + 32)
    if pp:
        for k in range(u32(pp + 4)):
            protos.append(proto_name(u64(pp + 8 + k * 8)))
    cats.append(dict(name=name, cls_addr=cls, inst_methods=inst_methods,
                     cls_methods=cls_methods, protocols=protos))

# ---- protocols ----
proto_names = []
pl_vm, pl_size, pl_off = segs.get('__objc_protolist', (0, 0, 0))
for i in range(pl_size // 8):
    p = u64(pl_vm + i * 8)
    if p:
        proto_names.append(proto_name(p))

print('=== CLASSES (%d) ===' % len(classes))
for c in classes:
    print('\n@interface %-28s : %-16s  size=%d' % (c['name'], c['superclass'], c['instanceSize']))
    if c['protocols']:
        print('   <' + ', '.join(c['protocols']) + '>')
    for iv in c['ivars']:
        print('   ivar  %-24s %-28s off=%d' % (iv['name'], iv['type'], iv['offset']))
    for p in c['props']:
        print('   @prop %s   {%s}' % (p['name'], p['attrs']))
    for m in c['methods']:
        print('   - %-46s %-22s imp=0x%x' % (m['sel'], m['type'], m['imp']))

if cats:
    print('\n=== CATEGORIES (%d) ===' % len(cats))
    for c in cats:
        print('\n@interface %s (%s)' % (c['cls_addr'], c['name']))
        for m in c['inst_methods']:
            print('   - %-46s %s' % (m['sel'], m['type']))
        for m in c['cls_methods']:
            print('   + %-46s %s' % (m['sel'], m['type']))

print('\n=== PROTOCOLS ===')
print(proto_names)

json.dump(dict(classes=classes, cats=cats, protocols=proto_names),
          open(os.path.join(OUT, 'objc.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('\nmethods total:', sum(len(c['methods']) for c in classes))
