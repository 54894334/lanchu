//
//  双击选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 双击选择视图

- (void)构建参数 {   // 0x4928c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 双击选择视图 构建参数 即可补全。
    // 0x04928c  sub      sp, sp, #0x120                          
    // 0x049290  mov      x2, x30                                 
    // 0x049294  bl       #0x616b0                                ; func_0x616b0
    // 0x049298  mov      x30, x2                                 
    // 0x04929c  stp      x29, x30, [sp, #0x110]                  
    // 0x0492a0  add      x29, sp, #0x110                         
    // 0x0492a4  mov      x20, x0                                 
    // 0x0492a8  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x0492ac  mov      x29, x29                                
    // 0x0492b0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0492b4  mov      x19, x0                                 
    // 0x0492b8  mov      w2, #1                                  
    // 0x0492bc  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x0492c0  bl       #0x601b8                                ; func_0x601b8
    // 0x0492c4  sub      x0, x29, #0x70                          
    // 0x0492c8  bl       #0x60dfc                                ; func_0x60dfc
    // 0x0492cc  adrp     x26, #0x8c000                           
    // 0x0492d0  ldr      x26, [x26, #0xd8]                       ; ptr_0x8c0d8
    // 0x0492d4  str      x26, [sp, #0x78]                        
    // 0x0492d8  adrp     x8, #0x7b000                            
    // 0x0492dc  ldr      d9, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x0492e0  str      d9, [sp, #0x80]                         
    // 0x0492e4  adrp     x8, #0x49000                            
    // 0x0492e8  add      x8, x8, #0x548                          
}

- (BOOL)含时长字段 {   // 0x4962c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 双击选择视图 含时长字段 即可补全。
    // 0x04962c  b        #0x613a0                                ; func_0x613a0
}

- (double)面板附加高度 {   // 0x49630
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 双击选择视图 面板附加高度 即可补全。
    // 0x049630  b        #0x722a0                                ; [x0 时长随机附加高度] x2, x3, x4, x5, x6, x7
}

@end