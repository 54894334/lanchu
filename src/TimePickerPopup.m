//
//  时间选择弹窗.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 时间选择弹窗

- (void)确定 {   // 0x32d10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 时间选择弹窗 确定 即可补全。
    // 0x032d10  stp      x20, x19, [sp, #-0x20]!                 
    // 0x032d14  stp      x29, x30, [sp, #0x10]                   
    // 0x032d18  add      x29, sp, #0x10                          
    // 0x032d1c  mov      x20, x0                                 
    // 0x032d20  adrp     x8, #0xad000                            
    // 0x032d24  ldrsw    x8, [x8, #0x910]                        
    // 0x032d28  ldr      x0, [x0, x8]                            
    // 0x032d2c  bl       #0x6a860                                ; [x0 date] x2, x3, x4, x5, x6, x7
    // 0x032d30  mov      x29, x29                                
    // 0x032d34  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x032d38  bl       #0x3329c                                ; func_0x3329c
    // 0x032d3c  adrp     x8, #0xad000                            
    // 0x032d40  ldrsw    x8, [x8, #0x90c]                        
    // 0x032d44  ldr      x0, [x20, x8]                           
    // 0x032d48  cbz      x0, #0x32d50                            
    // 0x032d4c  bl       #0x33220                                ; func_0x33220
    // 0x032d50  mov      x0, x19                                 
    // 0x032d54  ldp      x29, x30, [sp, #0x10]                   
    // 0x032d58  b        #0x32e98                                ; func_0x32e98
}

- (void)取消 {   // 0x32d5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 时间选择弹窗 取消 即可补全。
    // 0x032d5c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x032d60  stp      x29, x30, [sp, #0x10]                   
    // 0x032d64  add      x29, sp, #0x10                          
    // 0x032d68  mov      x19, x0                                 
    // 0x032d6c  bl       #0x71f60                                ; [x0 收起] x2, x3, x4, x5, x6, x7
    // 0x032d70  adrp     x8, #0xad000                            
    // 0x032d74  ldrsw    x8, [x8, #0x90c]                        
    // 0x032d78  ldr      x0, [x19, x8]                           
    // 0x032d7c  cbz      x0, #0x32d94                            
    // 0x032d80  ldr      x2, [x0, #0x10]                         
    // 0x032d84  mov      x1, #0                                  
    // 0x032d88  ldp      x29, x30, [sp, #0x10]                   
    // 0x032d8c  ldp      x20, x19, [sp], #0x20                   
    // 0x032d90  br       x2                                      
    // 0x032d94  ldp      x29, x30, [sp, #0x10]                   
    // 0x032d98  ldp      x20, x19, [sp], #0x20                   
    // 0x032d9c  ret                                              
}

- (void)收起 {   // 0x32da0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 时间选择弹窗 收起 即可补全。
    // 0x032da0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x032da4  stp      x29, x30, [sp, #0x10]                   
    // 0x032da8  add      x29, sp, #0x10                          
    // 0x032dac  mov      x19, x0                                 
    // 0x032db0  adrp     x8, #0xac000                            
    // 0x032db4  ldr      x1, [x8, #0xd70]                        ; SEL("描述")
    // 0x032db8  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x032dbc  mov      x29, x29                                
    // 0x032dc0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x032dc4  mov      x20, x0                                 
    // 0x032dc8  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x032dcc  mov      x0, x19                                 
    // 0x032dd0  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x032dd4  mov      x0, x20                                 
    // 0x032dd8  ldp      x29, x30, [sp, #0x10]                   
    // 0x032ddc  b        #0x32e98                                ; func_0x32e98
}

- (id)描述 {   // 0x32de0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 时间选择弹窗 描述 即可补全。
    // 0x032de0  adrp     x0, #0x91000                            
    // 0x032de4  add      x0, x0, #0xd30                          
    // 0x032de8  ret                                              
}

@end