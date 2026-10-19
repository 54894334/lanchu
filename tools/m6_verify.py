#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""m6_verify.py — 生成物自检（编译前先过一遍，省一次 CI 往返）

检查：
  1. src/*.m 里引用的 _ivar 是否真的在 LZLanchu.h（或某个父类）里声明过
  2. void 方法里有没有 return 值（生成器最容易犯的错）
  3. 大括号/圆括号是否平衡、@implementation 与 @end 是否配对
  4. 头文件里 @interface / @end / 花括号是否配对
用法：python tools/m6_verify.py
"""
import os, re, io, sys, json

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, '..')
SRC = os.path.join(ROOT, 'src')


def load_header():
    h = io.open(os.path.join(SRC, 'LZLanchu.h'), encoding='utf-8').read()
    cls_ivars = {}
    cls_super = {}
    cur = None
    for line in h.split('\n'):
        m = re.match(r'@interface (\S+) : (\S+)', line)
        if m:
            cur = m.group(1)
            cls_ivars.setdefault(cur, set())
            cls_super[cur] = m.group(2)
            continue
        if line.strip() == '@end':
            cur = None
            continue
        if cur:
            m2 = re.match(r'\s+\S.*?\s(_\w+);\s*//\s*off', line)
            if m2:
                cls_ivars[cur].add(m2.group(1))
    return h, cls_ivars, cls_super


def all_ivars(cls, cls_ivars, cls_super, depth=0):
    out = set(cls_ivars.get(cls, ()))
    sup = cls_super.get(cls)
    if sup and sup in cls_ivars and depth < 12:
        out |= all_ivars(sup, cls_ivars, cls_super, depth + 1)
    return out


def main():
    h, cls_ivars, cls_super = load_header()
    problems = []

    if h.count('@interface') != h.count('@end'):
        problems.append('LZLanchu.h: @interface %d / @end %d 不配对' % (h.count('@interface'), h.count('@end')))
    if h.count('{') != h.count('}'):
        problems.append('LZLanchu.h: 花括号不平衡 %d/%d' % (h.count('{'), h.count('}')))

    for f in sorted(os.listdir(SRC)):
        if not f.endswith('.m'):
            continue
        s = io.open(os.path.join(SRC, f), encoding='utf-8').read()
        m = re.search(r'@implementation (\S+)', s)
        cls = m.group(1) if m else f[:-2]
        known = all_ivars(cls, cls_ivars, cls_super) | {'_cmd', '_self'}

        if s.count('@implementation') != s.count('@end'):
            problems.append('%s: @implementation/@end 不配对' % f)

        # 去注释、去字符串后检查括号
        body = re.sub(r'//[^\n]*', '', s)
        body = re.sub(r'/\*.*?\*/', '', body, flags=re.S)
        body = re.sub(r'"[^"\n]*"', '""', body)
        if body.count('{') != body.count('}'):
            problems.append('%s: 花括号不平衡 %d/%d' % (f, body.count('{'), body.count('}')))
        if body.count('(') != body.count(')'):
            problems.append('%s: 圆括号不平衡 %d/%d' % (f, body.count('('), body.count(')')))

        # 逐个方法块检查；顺带把「方法名 / 参数名」也算进已知标识符
        for mm in re.finditer(r'^- \(([^)]*)\)(.*?)\{(.*?)\n\}', s, re.S | re.M):
            rtype, sig, mbody = mm.group(1).strip(), mm.group(2), mm.group(3)
            known |= set(re.findall(r'(?<![\w>])_\w+', sig))
            if rtype == 'void':
                mm2 = re.search(r'(?<!//)\breturn\s+[^;]+;', mbody)
                if mm2:
                    problems.append('%s: void 方法里 return 了值 → %s' %
                                    (f, mm2.group(0)[:40]))
        # ivar 引用
        for iv in set(re.findall(r'(?<![\w.>])_(?!cmd\b|self\b)(\w+)', body)):
            name = '_' + iv
            if name.startswith('__'):
                continue          # __attribute__ / __unused 这类关键字
            if name not in known:
                problems.append('%s: 引用了未声明的 ivar %s' % (f, name))

    if problems:
        print('共 %d 个问题：' % len(problems))
        for p in problems:
            print('  -', p)
        return 1
    print('自检通过：头文件 %d 个类，括号/配对/ivar 引用全部正常' % len(cls_ivars))
    return 0


if __name__ == '__main__':
    sys.exit(main())
