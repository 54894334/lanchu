//
//  穿透窗口.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 穿透窗口

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x37994
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口 initWithFrame: 即可补全。
    // 0x037994  sub      sp, sp, #0x30                           
    // 0x037998  stp      x20, x19, [sp, #0x10]                   
    // 0x03799c  stp      x29, x30, [sp, #0x20]                   
    // 0x0379a0  add      x29, sp, #0x20                          
    // 0x0379a4  adrp     x8, #0xad000                            
    // 0x0379a8  ldr      x8, [x8, #0x518]                        ; class(穿透窗口)
    // 0x0379ac  stp      x0, x8, [sp]                            
    // 0x0379b0  adrp     x8, #0xaa000                            
    // 0x0379b4  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x0379b8  mov      x0, sp                                  
    // 0x0379bc  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x0379c0  mov      x19, x0                                 
    // 0x0379c4  cbz      x0, #0x37a54                            
    // 0x0379c8  adrp     x8, #0xad000                            
    // 0x0379cc  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x0379d0  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x0379d4  mov      x29, x29                                
    // 0x0379d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0379dc  mov      x20, x0                                 
    // 0x0379e0  mov      x0, x19                                 
    // 0x0379e4  mov      x2, x20                                 
    // 0x0379e8  bl       #0x6bea0                                ; [x0 setBackgroundColor:] class(?0x0), x3, x4, x5, x6, x7
    // 0x0379ec  bl       #0x37d48                                ; func_0x37d48
    // 0x0379f0  mov      x0, x19                                 
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x37a68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口 hitTest:withEvent: 即可补全。
    // 0x037a68  sub      sp, sp, #0x120                          
    // 0x037a6c  stp      x24, x23, [sp, #0xe0]                   
    // 0x037a70  stp      x22, x21, [sp, #0xf0]                   
    // 0x037a74  stp      x20, x19, [sp, #0x100]                  
    // 0x037a78  stp      x29, x30, [sp, #0x110]                  
    // 0x037a7c  add      x29, sp, #0x110                         
    // 0x037a80  mov      x20, x0                                 
    // 0x037a84  adrp     x8, #0x8c000                            
    // 0x037a88  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x037a8c  ldr      x8, [x8]                                
    // 0x037a90  stur     x8, [x29, #-0x38]                       
    // 0x037a94  adrp     x8, #0xad000                            
    // 0x037a98  ldr      x8, [x8, #0x518]                        ; class(穿透窗口)
    // 0x037a9c  stp      x0, x8, [sp, #0x48]                     
    // 0x037aa0  adrp     x8, #0xac000                            
    // 0x037aa4  ldr      x1, [x8, #0xdd0]                        ; SEL("hitTest:withEvent:")
    // 0x037aa8  add      x0, sp, #0x48                           
    // 0x037aac  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x037ab0  mov      x29, x29                                
    // 0x037ab4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x037ab8  mov      x19, x0                                 
    // 0x037abc  cmp      x0, #0                                  
    // 0x037ac0  ccmp     x0, x20, #4, ne                         
    // 0x037ac4  b.ne     #0x37ad0                                
}

- (NSMutableArray *)响应视图 {   // 0x37c2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口 响应视图 即可补全。
    // 0x037c2c  adrp     x8, #0xad000                            
    // 0x037c30  ldrsw    x8, [x8, #0x98c]                        
    // 0x037c34  ldr      x0, [x0, x8]                            
    // 0x037c38  ret                                              
}

- (void)set响应视图:(NSMutableArray *)set响应视图 {   // 0x37c3c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 穿透窗口 set响应视图: 即可补全。
    // 0x037c3c  mov      x1, x2                                  
    // 0x037c40  adrp     x8, #0xad000                            
    // 0x037c44  ldrsw    x8, [x8, #0x98c]                        
    // 0x037c48  add      x0, x0, x8                              
    // 0x037c4c  b        #0x690a0                                ; _objc_storeStrong
}

@end