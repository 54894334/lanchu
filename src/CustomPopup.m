//
//  自定义弹窗.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 自定义弹窗

- (void)按钮点击:(id)按钮点击 {   // 0x2fe78
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自定义弹窗 按钮点击: 即可补全。
    // 0x02fe78  stp      x22, x21, [sp, #-0x30]!                 
    // 0x02fe7c  stp      x20, x19, [sp, #0x10]                   
    // 0x02fe80  stp      x29, x30, [sp, #0x20]                   
    // 0x02fe84  add      x29, sp, #0x20                          
    // 0x02fe88  mov      x20, x0                                 
    // 0x02fe8c  bl       #0x32f38                                ; func_0x32f38
    // 0x02fe90  mov      x19, x0                                 
    // 0x02fe94  adrp     x8, #0xad000                            
    // 0x02fe98  ldr      x0, [x8, #0x3c0]                        ; class(?0x0)
    // 0x02fe9c  bl       #0x69010                                ; _objc_opt_class
    // 0x02fea0  bl       #0x3320c                                ; func_0x3320c
    // 0x02fea4  tbz      w0, #0, #0x2feb8                        
    // 0x02fea8  mov      x0, x19                                 
    // 0x02feac  bl       #0x6fa60                                ; [x0 tag] x2, x3, x4, x5, x6, x7
    // 0x02feb0  mov      x21, x0                                 
    // 0x02feb4  b        #0x2febc                                
    // 0x02feb8  mov      x21, #-1                                
    // 0x02febc  adrp     x8, #0xac000                            
    // 0x02fec0  ldr      x1, [x8, #0xd70]                        ; SEL("描述")
    // 0x02fec4  mov      x0, x20                                 
    // 0x02fec8  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x02fecc  mov      x29, x29                                
    // 0x02fed0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02fed4  mov      x22, x0                                 
}

- (void)分组项点击:(id)分组项点击 {   // 0x2ff10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自定义弹窗 分组项点击: 即可补全。
    // 0x02ff10  stp      x22, x21, [sp, #-0x30]!                 
    // 0x02ff14  stp      x20, x19, [sp, #0x10]                   
    // 0x02ff18  stp      x29, x30, [sp, #0x20]                   
    // 0x02ff1c  add      x29, sp, #0x20                          
    // 0x02ff20  mov      x20, x0                                 
    // 0x02ff24  bl       #0x32f38                                ; func_0x32f38
    // 0x02ff28  mov      x19, x0                                 
    // 0x02ff2c  adrp     x8, #0xad000                            
    // 0x02ff30  ldr      x0, [x8, #0x3c0]                        ; class(?0x0)
    // 0x02ff34  bl       #0x69010                                ; _objc_opt_class
    // 0x02ff38  bl       #0x3320c                                ; func_0x3320c
    // 0x02ff3c  tbz      w0, #0, #0x2ff50                        
    // 0x02ff40  mov      x0, x19                                 
    // 0x02ff44  bl       #0x6fa60                                ; [x0 tag] x2, x3, x4, x5, x6, x7
    // 0x02ff48  mov      x21, x0                                 
    // 0x02ff4c  b        #0x2ff54                                
    // 0x02ff50  mov      x21, #-1                                
    // 0x02ff54  adrp     x8, #0xac000                            
    // 0x02ff58  ldr      x1, [x8, #0xd70]                        ; SEL("描述")
    // 0x02ff5c  mov      x0, x20                                 
    // 0x02ff60  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x02ff64  mov      x29, x29                                
    // 0x02ff68  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02ff6c  mov      x22, x0                                 
}

- (id)描述 {   // 0x3076c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自定义弹窗 描述 即可补全。
    // 0x03076c  adrp     x0, #0x91000                            
    // 0x030770  add      x0, x0, #0xcf0                          
    // 0x030774  ret                                              
}

@end