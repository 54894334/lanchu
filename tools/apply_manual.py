#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""apply_manual.py — 把「手工逐条还原」的方法贴回生成物

m5_gen.py 会整目录重写 src/*.m，手改内容会被覆盖。
每次重跑生成器后执行本脚本，即可把手写实现重新贴回去。

新增手工还原的方法时，在 PATCHES 里加一条 (文件名, 方法签名前缀, 新的方法体)。
"""
import io, os, sys

SRC = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'src')


def replace_method(src, sig_prefix, newbody):
    i = src.index(sig_prefix)
    j = src.index('\n}\n', i)
    return src[:i] + newbody.rstrip('\n') + src[j + 2:]


# ---------- CQTouchInjector 抖动后的点:开启: (0x21bb4) ----------
JITTER = '''- (CGPoint)抖动后的点:(CGPoint)抖动后的点 开启:(BOOL)开启 {   // 0x21bb4 · 逐条还原
    // 汇编依据：0x21bd4 cbz w2（未开启直接返回原点）
    //           0x21bdc/0x21bf8 ldp d12,d1,[x19,#0x20] → 下限/上限（ivar off 32 / 40）
    //           0x21be0 arc4random_uniform(10000) / 10000.0 → 0~1 随机
    //           0x21c00 fmadd → lo + rand*(hi-lo)；0x21c20 fmul → 乘到坐标上
    // 注意是「乘法抖动」，不是坐标偏移：抖动 0.95~1.05 表示 ±5%
    if (!开启) return 抖动后的点;

    double lo = _抖动下限;
    double hi = _抖动上限;
    double span = hi - lo;

    double rx = (double)arc4random_uniform(10000) / 10000.0;
    double kx = lo + rx * span;

    double ry = (double)arc4random_uniform(10000) / 10000.0;
    double ky = lo + ry * span;

    return CGPointMake(抖动后的点.x * kx, 抖动后的点.y * ky);
}
'''

# ---------- CQTouchInjector HID坐标: (0x21ccc) ----------
HIDCOORD = '''- (CGPoint)HID坐标:(CGPoint)HID坐标 {   // 0x21ccc · 逐条还原
    // 汇编依据：
    //   0x21cf8 [UIScreen mainScreen] / 0x21d08 bounds → d10=width, d11=height
    //   0x21d18 常量 100.0 → d12 = p.x/100, d13 = d12*width（百分比→绝对点）
    //                        d10 = p.y/100, d11 = d10*height
    //   0x21d34 [self 坐标量程] 后四路分支：
    //        2 → 原样返回（认为调用方给的已是 HID 原生坐标）
    //        1 → 返回 x/100, y/100（归一化）
    //        3 → 返回 百分比×屏幕尺寸（绝对点）
    //        0 → 看实测系数：两个都 >0 用 绝对点/系数；否则退回归一化
    CGRect b = [UIScreen mainScreen].bounds;

    double nx = 抖动后的点.x / 100.0;
    double pw = nx * b.size.width;
    double ny = 抖动后的点.y / 100.0;
    double ph = ny * b.size.height;

    NSInteger scale = [self 坐标量程];
    CGPoint out;

    switch (scale) {
        case 2:
            out = 抖动后的点;
            break;
        case 3:
            out = CGPointMake(pw, ph);
            break;
        case 1:
            out = CGPointMake(nx, ny);
            break;
        case 0:
        default:
            if (_实测系数X > 0 && _实测系数Y > 0) {
                out = CGPointMake(pw / _实测系数X, ph / _实测系数Y);
            } else {
                out = CGPointMake(nx, ny);
            }
            break;
    }
    // 原实现在返回前还会过一次 0x2417c（未逐条还原，疑似边界裁剪），此处直通
    return out;
}
'''

PATCHES = [
    ('CQTouchInjector.m', '- (CGPoint)抖动后的点:(CGPoint)抖动后的点 开启:(BOOL)开启 {', JITTER),
    ('CQTouchInjector.m', '- (CGPoint)HID坐标:(CGPoint)HID坐标 {', HIDCOORD),
]


def main():
    done = 0
    for fname, sig, body in PATCHES:
        p = os.path.join(SRC, fname)
        s = io.open(p, encoding='utf-8', newline='').read()
        if sig not in s:
            print('跳过（找不到方法）: %s %s' % (fname, sig[:40]))
            continue
        try:
            s = replace_method(s, sig, body)
        except ValueError:
            print('跳过（方法体边界异常）: %s' % fname)
            continue
        io.open(p, 'w', encoding='utf-8', newline='').write(s)
        done += 1
    print('已贴回 %d/%d 个手工还原方法' % (done, len(PATCHES)))


if __name__ == '__main__':
    main()
