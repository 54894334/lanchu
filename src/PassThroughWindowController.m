//
//  穿透窗口控制器.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 穿透窗口控制器

- (void)viewDidLoad {   // 0x37c64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口控制器 viewDidLoad 即可补全。
    // 0x037c64  sub      sp, sp, #0x40                           
    // 0x037c68  stp      x22, x21, [sp, #0x10]                   
    // 0x037c6c  stp      x20, x19, [sp, #0x20]                   
    // 0x037c70  stp      x29, x30, [sp, #0x30]                   
    // 0x037c74  add      x29, sp, #0x30                          
    // 0x037c78  mov      x19, x0                                 
    // 0x037c7c  adrp     x8, #0xad000                            
    // 0x037c80  ldr      x8, [x8, #0x520]                        ; class(穿透窗口控制器)
    // 0x037c84  stp      x0, x8, [sp]                            
    // 0x037c88  adrp     x8, #0xac000                            
    // 0x037c8c  ldr      x1, [x8, #0xdd8]                        ; SEL("viewDidLoad")
    // 0x037c90  mov      x0, sp                                  
    // 0x037c94  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x037c98  adrp     x8, #0xad000                            
    // 0x037c9c  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x037ca0  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x037ca4  mov      x29, x29                                
    // 0x037ca8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x037cac  mov      x20, x0                                 
    // 0x037cb0  mov      x0, x19                                 
    // 0x037cb4  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x037cb8  mov      x29, x29                                
    // 0x037cbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x037cc0  mov      x21, x0                                 
}

- (BOOL)prefersStatusBarHidden {   // 0x37d30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口控制器 prefersStatusBarHidden 即可补全。
    // 0x037d30  mov      w0, #0                                  
    // 0x037d34  ret                                              
}

- (BOOL)shouldAutorotate {   // 0x37d38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口控制器 shouldAutorotate 即可补全。
    // 0x037d38  mov      w0, #1                                  
    // 0x037d3c  ret                                              
}

- (unsigned long long)supportedInterfaceOrientations {   // 0x37d40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口控制器 supportedInterfaceOrientations 即可补全。
    // 0x037d40  mov      w0, #0x1e                               
    // 0x037d44  ret                                              
}

@end