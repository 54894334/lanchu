//
//  输入弹窗视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 输入弹窗视图

- (void)取消 {   // 0x3265c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入弹窗视图 取消 即可补全。
    // 0x03265c  b        #0x71f60                                ; [x0 收起] x2, x3, x4, x5, x6, x7
}

- (void)完成输入 {   // 0x32660
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入弹窗视图 完成输入 即可补全。
    // 0x032660  stp      x20, x19, [sp, #-0x20]!                 
    // 0x032664  stp      x29, x30, [sp, #0x10]                   
    // 0x032668  add      x29, sp, #0x10                          
    // 0x03266c  mov      x20, x0                                 
    // 0x032670  adrp     x8, #0xad000                            
    // 0x032674  ldrsw    x8, [x8, #0x908]                        
    // 0x032678  ldr      x0, [x0, x8]                            
    // 0x03267c  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x032680  mov      x29, x29                                
    // 0x032684  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x032688  bl       #0x3329c                                ; func_0x3329c
    // 0x03268c  adrp     x8, #0xad000                            
    // 0x032690  ldrsw    x8, [x8, #0x904]                        
    // 0x032694  ldr      x0, [x20, x8]                           
    // 0x032698  cbz      x0, #0x326a0                            
    // 0x03269c  bl       #0x33220                                ; func_0x33220
    // 0x0326a0  mov      x0, x19                                 
    // 0x0326a4  ldp      x29, x30, [sp, #0x10]                   
    // 0x0326a8  b        #0x32e98                                ; func_0x32e98
}

- (void)收起 {   // 0x326ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入弹窗视图 收起 即可补全。
    // 0x0326ac  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0326b0  stp      x29, x30, [sp, #0x10]                   
    // 0x0326b4  add      x29, sp, #0x10                          
    // 0x0326b8  mov      x19, x0                                 
    // 0x0326bc  adrp     x8, #0xac000                            
    // 0x0326c0  ldr      x1, [x8, #0xd70]                        ; SEL("描述")
    // 0x0326c4  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x0326c8  mov      x29, x29                                
    // 0x0326cc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0326d0  mov      x20, x0                                 
    // 0x0326d4  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x0326d8  mov      x0, x19                                 
    // 0x0326dc  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x0326e0  mov      x0, x20                                 
    // 0x0326e4  ldp      x29, x30, [sp, #0x10]                   
    // 0x0326e8  b        #0x32e98                                ; func_0x32e98
}

- (id)描述 {   // 0x326ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入弹窗视图 描述 即可补全。
    // 0x0326ec  adrp     x0, #0x91000                            
    // 0x0326f0  add      x0, x0, #0xd10                          
    // 0x0326f4  ret                                              
}

@end