//
//  CQOCR行.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQOCR行

- (NSString *)文本 {   // 0x1faf4
    return _文本;
}

- (void)set文本:(NSString *)set文本 {   // 0x1fafc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOCR行 set文本: 即可补全。
    // 0x01fafc  mov      w3, #8                                  
    // 0x01fb00  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (CGRect)框 {   // 0x1fb04
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOCR行 框 即可补全。
    // 0x01fb04  ldp      d0, d1, [x0, #0x10]                     
    // 0x01fb08  ldp      d2, d3, [x0, #0x20]                     
    // 0x01fb0c  ret                                              
}

- (void)set框:(CGRect)set框 {   // 0x1fb10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOCR行 set框: 即可补全。
    // 0x01fb10  stp      d0, d1, [x0, #0x10]                     
    // 0x01fb14  stp      d2, d3, [x0, #0x20]                     
    // 0x01fb18  ret                                              
}

@end