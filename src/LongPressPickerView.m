//
//  长按选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 长按选择视图

- (void)构建参数 {   // 0x49634
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 长按选择视图 构建参数 即可补全。
    // 0x049634  sub      sp, sp, #0x120                          
    // 0x049638  mov      x2, x30                                 
    // 0x04963c  bl       #0x616b0                                ; func_0x616b0
    // 0x049640  mov      x30, x2                                 
    // 0x049644  stp      x29, x30, [sp, #0x110]                  
    // 0x049648  add      x29, sp, #0x110                         
    // 0x04964c  mov      x20, x0                                 
    // 0x049650  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x049654  mov      x29, x29                                
    // 0x049658  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04965c  mov      x19, x0                                 
    // 0x049660  mov      w2, #3                                  
    // 0x049664  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x049668  bl       #0x601b8                                ; func_0x601b8
    // 0x04966c  sub      x0, x29, #0x70                          
    // 0x049670  bl       #0x60dfc                                ; func_0x60dfc
    // 0x049674  adrp     x26, #0x8c000                           
    // 0x049678  ldr      x26, [x26, #0xd8]                       ; ptr_0x8c0d8
    // 0x04967c  str      x26, [sp, #0x78]                        
    // 0x049680  adrp     x8, #0x7b000                            
    // 0x049684  ldr      d9, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x049688  str      d9, [sp, #0x80]                         
    // 0x04968c  adrp     x8, #0x49000                            
    // 0x049690  add      x8, x8, #0x8f8                          
}

- (BOOL)含时长字段 {   // 0x499dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 长按选择视图 含时长字段 即可补全。
    // 0x0499dc  b        #0x613a0                                ; func_0x613a0
}

- (double)面板附加高度 {   // 0x499e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 长按选择视图 面板附加高度 即可补全。
    // 0x0499e0  b        #0x722a0                                ; [x0 时长随机附加高度] x2, x3, x4, x5, x6, x7
}

@end