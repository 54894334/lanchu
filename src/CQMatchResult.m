//
//  CQ匹配结果.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQ匹配结果

- (double)相似度 {   // 0x1ebec
    return _相似度;
}

- (void)set相似度:(double)set相似度 {   // 0x1ebf4
    _相似度 = set相似度;
}

- (CGPoint)中心 {   // 0x1ebfc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQ匹配结果 中心 即可补全。
    // 0x01ebfc  ldp      d0, d1, [x0, #0x18]                     
    // 0x01ec00  ret                                              
}

- (void)set中心:(CGPoint)set中心 {   // 0x1ec04
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQ匹配结果 set中心: 即可补全。
    // 0x01ec04  stp      d0, d1, [x0, #0x18]                     
    // 0x01ec08  ret                                              
}

- (CGRect)矩形 {   // 0x1ec0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQ匹配结果 矩形 即可补全。
    // 0x01ec0c  ldp      d0, d1, [x0, #0x28]                     
    // 0x01ec10  ldp      d2, d3, [x0, #0x38]                     
    // 0x01ec14  ret                                              
}

- (void)set矩形:(CGRect)set矩形 {   // 0x1ec18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQ匹配结果 set矩形: 即可补全。
    // 0x01ec18  stp      d0, d1, [x0, #0x28]                     
    // 0x01ec1c  stp      d2, d3, [x0, #0x38]                     
    // 0x01ec20  ret                                              
}

- (BOOL)命中 {   // 0x1ec24
    return _命中;
}

- (void)set命中:(BOOL)set命中 {   // 0x1ec2c
    _命中 = set命中;
}

@end