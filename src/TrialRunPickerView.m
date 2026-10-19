//
//  试跑选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 试跑选择视图

- (void)设置组:(id)设置组 {   // 0x3daa0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 设置组: 即可补全。
    // 0x03daa0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03daa4  stp      x20, x19, [sp, #0x10]                   
    // 0x03daa8  stp      x29, x30, [sp, #0x20]                   
    // 0x03daac  add      x29, sp, #0x20                          
    // 0x03dab0  mov      x21, x2                                 
    // 0x03dab4  mov      x19, x0                                 
    // 0x03dab8  mov      x0, x2                                  
    // 0x03dabc  bl       #0x6904c                                ; _objc_retain
    // 0x03dac0  mov      x20, x0                                 
    // 0x03dac4  adrp     x8, #0xad000                            
    // 0x03dac8  ldrsw    x8, [x8, #0xa38]                        
    // 0x03dacc  add      x0, x19, x8                             
    // 0x03dad0  ldr      x8, [x0]                                
    // 0x03dad4  cmp      x8, x20                                 
    // 0x03dad8  b.eq     #0x3db10                                
    // 0x03dadc  mov      x1, x21                                 
    // 0x03dae0  bl       #0x690a0                                ; _objc_storeStrong
    // 0x03dae4  mov      x0, x19                                 
    // 0x03dae8  bl       #0x744c0                                ; [x0 选中] x2, x3, x4, x5, x6, x7
    // 0x03daec  mov      x29, x29                                
    // 0x03daf0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03daf4  mov      x21, x0                                 
    // 0x03daf8  bl       #0x6b920                                ; [x0 removeAllObjects] x2, x3, x4, x5, x6, x7
    // 0x03dafc  bl       #0x3fe88                                ; func_0x3fe88
}

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x3db24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 initWithFrame: 即可补全。
    // 0x03db24  sub      sp, sp, #0x50                           
    // 0x03db28  stp      d9, d8, [sp, #0x10]                     
    // 0x03db2c  stp      x22, x21, [sp, #0x20]                   
    // 0x03db30  stp      x20, x19, [sp, #0x30]                   
    // 0x03db34  stp      x29, x30, [sp, #0x40]                   
    // 0x03db38  add      x29, sp, #0x40                          
    // 0x03db3c  adrp     x8, #0xad000                            
    // 0x03db40  ldr      x8, [x8, #0x540]                        ; class(试跑选择视图)
    // 0x03db44  stp      x0, x8, [sp]                            
    // 0x03db48  adrp     x8, #0xaa000                            
    // 0x03db4c  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x03db50  mov      x0, sp                                  
    // 0x03db54  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x03db58  mov      x19, x0                                 
    // 0x03db5c  cbz      x0, #0x3dc3c                            
    // 0x03db60  bl       #0x200c4                                ; _CQThemeBgPanel
    // 0x03db64  mov      x29, x29                                
    // 0x03db68  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03db6c  bl       #0x3fef4                                ; func_0x3fef4
    // 0x03db70  bl       #0x6bea0                                ; [x0 setBackgroundColor:] x2, x3, x4, x5, x6, x7
    // 0x03db74  bl       #0x3fe80                                ; func_0x3fe80
    // 0x03db78  bl       #0x202ec                                ; _CQThemeRadiusPanel
    // 0x03db7c  fmov     d8, d0                                  
    // 0x03db80  mov      x0, x19                                 
}

- (void)构建 {   // 0x3dc58
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 构建 即可补全。
    // 0x03dc58  stp      d11, d10, [sp, #-0x80]!                 
    // 0x03dc5c  stp      d9, d8, [sp, #0x10]                     
    // 0x03dc60  stp      x28, x27, [sp, #0x20]                   
    // 0x03dc64  stp      x26, x25, [sp, #0x30]                   
    // 0x03dc68  stp      x24, x23, [sp, #0x40]                   
    // 0x03dc6c  stp      x22, x21, [sp, #0x50]                   
    // 0x03dc70  stp      x20, x19, [sp, #0x60]                   
    // 0x03dc74  stp      x29, x30, [sp, #0x70]                   
    // 0x03dc78  add      x29, sp, #0x70                          
    // 0x03dc7c  mov      x19, x0                                 
    // 0x03dc80  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x03dc84  fmov     d8, d2                                  
    // 0x03dc88  adrp     x24, #0xad000                           
    // 0x03dc8c  bl       #0x40058                                ; func_0x40058
    // 0x03dc90  adrp     x8, #0x7c000                            
    // 0x03dc94  ldr      d0, [x8, #0x750]                        ; ptr_0x7c750
    // 0x03dc98  fadd     d2, d8, d0                              
    // 0x03dc9c  fmov     d0, #16.00000000                        
    // 0x03dca0  fmov     d1, #10.00000000                        
    // 0x03dca4  fmov     d3, #24.00000000                        
    // 0x03dca8  bl       #0x6af60                                ; [x0 initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x03dcac  bl       #0x3fef4                                ; func_0x3fef4
    // 0x03dcb0  bl       #0x6e180                                ; [x0 set标题:] x2, x3, x4, x5, x6, x7
    // 0x03dcb4  bl       #0x3fe80                                ; func_0x3fe80
}

- (void)刷新 {   // 0x3e4b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 刷新 即可补全。
    // 0x03e4b8  sub      sp, sp, #0x150                          
    // 0x03e4bc  stp      x28, x27, [sp, #0xf0]                   
    // 0x03e4c0  stp      x26, x25, [sp, #0x100]                  
    // 0x03e4c4  stp      x24, x23, [sp, #0x110]                  
    // 0x03e4c8  stp      x22, x21, [sp, #0x120]                  
    // 0x03e4cc  stp      x20, x19, [sp, #0x130]                  
    // 0x03e4d0  stp      x29, x30, [sp, #0x140]                  
    // 0x03e4d4  add      x29, sp, #0x140                         
    // 0x03e4d8  mov      x19, x0                                 
    // 0x03e4dc  adrp     x8, #0x8c000                            
    // 0x03e4e0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03e4e4  ldr      x8, [x8]                                
    // 0x03e4e8  stur     x8, [x29, #-0x58]                       
    // 0x03e4ec  bl       #0x731c0                                ; [x0 组] x2, x3, x4, x5, x6, x7
    // 0x03e4f0  mov      x29, x29                                
    // 0x03e4f4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03e4f8  bl       #0x40030                                ; func_0x40030
    // 0x03e4fc  cbnz     x20, #0x3e518                           
    // 0x03e500  mov      x0, x19                                 
    // 0x03e504  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x03e508  mov      x29, x29                                
    // 0x03e50c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03e510  bl       #0x3ffc8                                ; func_0x3ffc8
    // 0x03e514  bl       #0x3fe80                                ; func_0x3fe80
}

- (id)当前组 {   // 0x3e844
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 当前组 即可补全。
    // 0x03e844  sub      sp, sp, #0x110                          
    // 0x03e848  stp      x24, x23, [sp, #0xd0]                   
    // 0x03e84c  stp      x22, x21, [sp, #0xe0]                   
    // 0x03e850  stp      x20, x19, [sp, #0xf0]                   
    // 0x03e854  stp      x29, x30, [sp, #0x100]                  
    // 0x03e858  add      x29, sp, #0x100                         
    // 0x03e85c  adrp     x8, #0x8c000                            
    // 0x03e860  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03e864  ldr      x8, [x8]                                
    // 0x03e868  stur     x8, [x29, #-0x38]                       
    // 0x03e86c  movi     v0.16b, #0                              
    // 0x03e870  stp      q0, q0, [sp]                            
    // 0x03e874  stp      q0, q0, [sp, #0x20]                     
    // 0x03e878  adrp     x8, #0xad000                            
    // 0x03e87c  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x03e880  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03e884  mov      x29, x29                                
    // 0x03e888  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03e88c  mov      x20, x0                                 
    // 0x03e890  bl       #0x73240                                ; [class(CQStore) 组列表] x2, x3, x4, x5, x6, x7
    // 0x03e894  mov      x29, x29                                
    // 0x03e898  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03e89c  mov      x19, x0                                 
    // 0x03e8a0  bl       #0x3fe80                                ; func_0x3fe80
}

- (id)选中动作按序 {   // 0x3e964
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 选中动作按序 即可补全。
    // 0x03e964  sub      sp, sp, #0x140                          
    // 0x03e968  stp      x28, x27, [sp, #0xe0]                   
    // 0x03e96c  stp      x26, x25, [sp, #0xf0]                   
    // 0x03e970  stp      x24, x23, [sp, #0x100]                  
    // 0x03e974  stp      x22, x21, [sp, #0x110]                  
    // 0x03e978  stp      x20, x19, [sp, #0x120]                  
    // 0x03e97c  stp      x29, x30, [sp, #0x130]                  
    // 0x03e980  add      x29, sp, #0x130                         
    // 0x03e984  mov      x20, x0                                 
    // 0x03e988  adrp     x8, #0x8c000                            
    // 0x03e98c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03e990  ldr      x8, [x8]                                
    // 0x03e994  stur     x8, [x29, #-0x60]                       
    // 0x03e998  adrp     x8, #0xad000                            
    // 0x03e99c  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x03e9a0  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x03e9a4  mov      x29, x29                                
    // 0x03e9a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03e9ac  str      x0, [sp, #8]                            
    // 0x03e9b0  movi     v0.16b, #0                              
    // 0x03e9b4  stp      q0, q0, [sp, #0x10]                     
    // 0x03e9b8  stp      q0, q0, [sp, #0x30]                     
    // 0x03e9bc  mov      x0, x20                                 
    // 0x03e9c0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
}

- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection {   // 0x3eaf0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 tableView:numberOfRowsInSection: 即可补全。
    // 0x03eaf0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03eaf4  stp      x29, x30, [sp, #0x10]                   
    // 0x03eaf8  add      x29, sp, #0x10                          
    // 0x03eafc  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x03eb00  mov      x29, x29                                
    // 0x03eb04  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03eb08  bl       #0x40038                                ; func_0x40038
    // 0x03eb0c  mov      x20, x0                                 
    // 0x03eb10  bl       #0x3fec4                                ; func_0x3fec4
    // 0x03eb14  mov      x0, x20                                 
    // 0x03eb18  ldp      x29, x30, [sp, #0x10]                   
    // 0x03eb1c  ldp      x20, x19, [sp], #0x20                   
    // 0x03eb20  ret                                              
}

- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath {   // 0x3eb24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 tableView:cellForRowAtIndexPath: 即可补全。
    // 0x03eb24  sub      sp, sp, #0x60                           
    // 0x03eb28  stp      x26, x25, [sp, #0x10]                   
    // 0x03eb2c  stp      x24, x23, [sp, #0x20]                   
    // 0x03eb30  stp      x22, x21, [sp, #0x30]                   
    // 0x03eb34  stp      x20, x19, [sp, #0x40]                   
    // 0x03eb38  stp      x29, x30, [sp, #0x50]                   
    // 0x03eb3c  add      x29, sp, #0x50                          
    // 0x03eb40  mov      x20, x2                                 
    // 0x03eb44  mov      x21, x0                                 
    // 0x03eb48  mov      x0, x3                                  
    // 0x03eb4c  bl       #0x6904c                                ; _objc_retain
    // 0x03eb50  mov      x19, x0                                 
    // 0x03eb54  adrp     x2, #0x90000                            
    // 0x03eb58  add      x2, x2, #0x370                          
    // 0x03eb5c  mov      x0, x20                                 
    // 0x03eb60  mov      x3, x19                                 
    // 0x03eb64  bl       #0x6aa20                                ; [x2 dequeueReusableCellWithIdentifier:forIndexPath:] x2, x3, x4, x5, x6, x7
    // 0x03eb68  mov      x29, x29                                
    // 0x03eb6c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03eb70  mov      x20, x0                                 
    // 0x03eb74  adrp     x8, #0xad000                            
    // 0x03eb78  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x03eb7c  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x03eb80  mov      x29, x29                                
}

- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath {   // 0x3eda4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 tableView:didSelectRowAtIndexPath: 即可补全。
    // 0x03eda4  sub      sp, sp, #0x80                           
    // 0x03eda8  stp      x28, x27, [sp, #0x20]                   
    // 0x03edac  stp      x26, x25, [sp, #0x30]                   
    // 0x03edb0  stp      x24, x23, [sp, #0x40]                   
    // 0x03edb4  stp      x22, x21, [sp, #0x50]                   
    // 0x03edb8  stp      x20, x19, [sp, #0x60]                   
    // 0x03edbc  stp      x29, x30, [sp, #0x70]                   
    // 0x03edc0  add      x29, sp, #0x70                          
    // 0x03edc4  mov      x20, x0                                 
    // 0x03edc8  mov      x0, x3                                  
    // 0x03edcc  bl       #0x6904c                                ; _objc_retain
    // 0x03edd0  mov      x19, x0                                 
    // 0x03edd4  bl       #0x6bb60                                ; [x3 row] x2, x3, x4, x5, x6, x7
    // 0x03edd8  mov      x21, x0                                 
    // 0x03eddc  mov      x0, x20                                 
    // 0x03ede0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x03ede4  mov      x29, x29                                
    // 0x03ede8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03edec  mov      x22, x0                                 
    // 0x03edf0  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x03edf4  mov      x23, x0                                 
    // 0x03edf8  bl       #0x3fe70                                ; func_0x3fe70
    // 0x03edfc  cmp      x21, x23                                
    // 0x03ee00  b.ge     #0x3efb0                                
}

- (void)全选 {   // 0x3efd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 全选 即可补全。
    // 0x03efd4  sub      sp, sp, #0x130                          
    // 0x03efd8  stp      x28, x27, [sp, #0xd0]                   
    // 0x03efdc  stp      x26, x25, [sp, #0xe0]                   
    // 0x03efe0  stp      x24, x23, [sp, #0xf0]                   
    // 0x03efe4  stp      x22, x21, [sp, #0x100]                  
    // 0x03efe8  stp      x20, x19, [sp, #0x110]                  
    // 0x03efec  stp      x29, x30, [sp, #0x120]                  
    // 0x03eff0  add      x29, sp, #0x120                         
    // 0x03eff4  mov      x19, x0                                 
    // 0x03eff8  adrp     x8, #0x8c000                            
    // 0x03effc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03f000  ldr      x8, [x8]                                
    // 0x03f004  stur     x8, [x29, #-0x58]                       
    // 0x03f008  movi     v0.16b, #0                              
    // 0x03f00c  stp      q0, q0, [sp]                            
    // 0x03f010  stp      q0, q0, [sp, #0x20]                     
    // 0x03f014  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x03f018  mov      x29, x29                                
    // 0x03f01c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03f020  mov      x20, x0                                 
    // 0x03f024  mov      x2, sp                                  
    // 0x03f028  add      x3, sp, #0x48                           
    // 0x03f02c  bl       #0x3fe98                                ; func_0x3fe98
    // 0x03f030  cbz      x0, #0x3f0d8                            
}

- (void)试跑选中 {   // 0x3f11c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 试跑选中 即可补全。
    // 0x03f11c  sub      sp, sp, #0x140                          
    // 0x03f120  stp      x28, x27, [sp, #0xe0]                   
    // 0x03f124  stp      x26, x25, [sp, #0xf0]                   
    // 0x03f128  stp      x24, x23, [sp, #0x100]                  
    // 0x03f12c  stp      x22, x21, [sp, #0x110]                  
    // 0x03f130  stp      x20, x19, [sp, #0x120]                  
    // 0x03f134  stp      x29, x30, [sp, #0x130]                  
    // 0x03f138  add      x29, sp, #0x130                         
    // 0x03f13c  mov      x20, x0                                 
    // 0x03f140  adrp     x8, #0x8c000                            
    // 0x03f144  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03f148  ldr      x8, [x8]                                
    // 0x03f14c  stur     x8, [x29, #-0x60]                       
    // 0x03f150  bl       #0x744e0                                ; [x0 选中动作按序] x2, x3, x4, x5, x6, x7
    // 0x03f154  mov      x29, x29                                
    // 0x03f158  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03f15c  bl       #0x40038                                ; func_0x40038
    // 0x03f160  cbz      x0, #0x3f28c                            
    // 0x03f164  adrp     x8, #0xad000                            
    // 0x03f168  ldr      x0, [x8, #0x250]                        ; class(?0x0)
    // 0x03f16c  bl       #0x6bd00                                ; [class(?0x0) set] x2, x3, x4, x5, x6, x7
    // 0x03f170  mov      x29, x29                                
    // 0x03f174  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03f178  mov      x21, x0                                 
}

- (void)从首项连跑 {   // 0x3f2f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 从首项连跑 即可补全。
    // 0x03f2f8  sub      sp, sp, #0x160                          
    // 0x03f2fc  stp      x28, x27, [sp, #0x100]                  
    // 0x03f300  stp      x26, x25, [sp, #0x110]                  
    // 0x03f304  stp      x24, x23, [sp, #0x120]                  
    // 0x03f308  stp      x22, x21, [sp, #0x130]                  
    // 0x03f30c  stp      x20, x19, [sp, #0x140]                  
    // 0x03f310  stp      x29, x30, [sp, #0x150]                  
    // 0x03f314  add      x29, sp, #0x150                         
    // 0x03f318  mov      x21, x0                                 
    // 0x03f31c  adrp     x8, #0x8c000                            
    // 0x03f320  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03f324  ldr      x8, [x8]                                
    // 0x03f328  stur     x8, [x29, #-0x60]                       
    // 0x03f32c  bl       #0x744e0                                ; [x0 选中动作按序] x2, x3, x4, x5, x6, x7
    // 0x03f330  mov      x29, x29                                
    // 0x03f334  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03f338  bl       #0x40038                                ; func_0x40038
    // 0x03f33c  cbz      x0, #0x3f4cc                            
    // 0x03f340  str      x19, [sp, #0x20]                        
    // 0x03f344  mov      x0, x19                                 
    // 0x03f348  bl       #0x6acc0                                ; [x19 firstObject] x2, x3, x4, x5, x6, x7
    // 0x03f34c  mov      x29, x29                                
    // 0x03f350  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03f354  mov      x20, x0                                 
}

- (void)执行试跑:(id)执行试跑 说明:(id)说明 {   // 0x3f59c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 执行试跑:说明: 即可补全。
    // 0x03f59c  stp      d9, d8, [sp, #-0x70]!                   
    // 0x03f5a0  stp      x28, x27, [sp, #0x10]                   
    // 0x03f5a4  stp      x26, x25, [sp, #0x20]                   
    // 0x03f5a8  stp      x24, x23, [sp, #0x30]                   
    // 0x03f5ac  stp      x22, x21, [sp, #0x40]                   
    // 0x03f5b0  stp      x20, x19, [sp, #0x50]                   
    // 0x03f5b4  stp      x29, x30, [sp, #0x60]                   
    // 0x03f5b8  add      x29, sp, #0x60                          
    // 0x03f5bc  sub      sp, sp, #0x210                          
    // 0x03f5c0  mov      x20, x3                                 
    // 0x03f5c4  mov      x23, x0                                 
    // 0x03f5c8  adrp     x8, #0x8c000                            
    // 0x03f5cc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03f5d0  ldr      x8, [x8]                                
    // 0x03f5d4  stur     x8, [x29, #-0x78]                       
    // 0x03f5d8  mov      x0, x2                                  
    // 0x03f5dc  bl       #0x6904c                                ; _objc_retain
    // 0x03f5e0  str      x0, [sp, #0x10]                         
    // 0x03f5e4  mov      x0, x20                                 
    // 0x03f5e8  bl       #0x6904c                                ; _objc_retain
    // 0x03f5ec  str      x0, [sp, #8]                            
    // 0x03f5f0  adrp     x8, #0xad000                            
    // 0x03f5f4  ldr      x0, [x8, #0x108]                        ; class(CQTaskEngine)
    // 0x03f5f8  bl       #0x6f560                                ; [class(CQTaskEngine) shared] x2, x3, x4, x5, x6, x7
}

- (void)关闭自己 {   // 0x3fc94
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 关闭自己 即可补全。
    // 0x03fc94  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03fc98  stp      x29, x30, [sp, #0x10]                   
    // 0x03fc9c  add      x29, sp, #0x10                          
    // 0x03fca0  adrp     x8, #0xad000                            
    // 0x03fca4  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x03fca8  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x03fcac  mov      x29, x29                                
    // 0x03fcb0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03fcb4  mov      x19, x0                                 
    // 0x03fcb8  bl       #0x70200                                ; [class(CQOverlay) 关闭面板] x2, x3, x4, x5, x6, x7
    // 0x03fcbc  mov      x0, x19                                 
    // 0x03fcc0  ldp      x29, x30, [sp, #0x10]                   
    // 0x03fcc4  b        #0x3ff0c                                ; func_0x3ff0c
}

- (id)结束回调 {   // 0x3fcc8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 结束回调 即可补全。
    // 0x03fcc8  adrp     x8, #0xad000                            
    // 0x03fccc  ldrsw    x8, [x8, #0xa3c]                        
    // 0x03fcd0  b        #0x3febc                                ; func_0x3febc
}

- (void)set结束回调:(id)set结束回调 {   // 0x3fcd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set结束回调: 即可补全。
    // 0x03fcd4  adrp     x8, #0xad000                            
    // 0x03fcd8  ldrsw    x3, [x8, #0xa3c]                        
    // 0x03fcdc  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)表 {   // 0x3fce0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 表 即可补全。
    // 0x03fce0  adrp     x8, #0xad000                            
    // 0x03fce4  ldrsw    x8, [x8, #0xa40]                        
    // 0x03fce8  b        #0x3febc                                ; func_0x3febc
}

- (void)set表:(id)set表 {   // 0x3fcec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set表: 即可补全。
    // 0x03fcec  mov      x1, x2                                  
    // 0x03fcf0  adrp     x8, #0xad000                            
    // 0x03fcf4  ldrsw    x8, [x8, #0xa40]                        
    // 0x03fcf8  b        #0x3fe78                                ; func_0x3fe78
}

- (id)标题 {   // 0x3fcfc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 标题 即可补全。
    // 0x03fcfc  adrp     x8, #0xad000                            
    // 0x03fd00  ldrsw    x8, [x8, #0xa44]                        
    // 0x03fd04  b        #0x3febc                                ; func_0x3febc
}

- (void)set标题:(id)set标题 {   // 0x3fd08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set标题: 即可补全。
    // 0x03fd08  mov      x1, x2                                  
    // 0x03fd0c  adrp     x8, #0xad000                            
    // 0x03fd10  ldrsw    x8, [x8, #0xa44]                        
    // 0x03fd14  b        #0x3fe78                                ; func_0x3fe78
}

- (id)副标题 {   // 0x3fd18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 副标题 即可补全。
    // 0x03fd18  adrp     x8, #0xad000                            
    // 0x03fd1c  ldrsw    x8, [x8, #0xa48]                        
    // 0x03fd20  b        #0x3febc                                ; func_0x3febc
}

- (void)set副标题:(id)set副标题 {   // 0x3fd24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set副标题: 即可补全。
    // 0x03fd24  mov      x1, x2                                  
    // 0x03fd28  adrp     x8, #0xad000                            
    // 0x03fd2c  ldrsw    x8, [x8, #0xa48]                        
    // 0x03fd30  b        #0x3fe78                                ; func_0x3fe78
}

- (id)单选按钮 {   // 0x3fd34
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 单选按钮 即可补全。
    // 0x03fd34  adrp     x8, #0xad000                            
    // 0x03fd38  ldrsw    x8, [x8, #0xa4c]                        
    // 0x03fd3c  b        #0x3febc                                ; func_0x3febc
}

- (void)set单选按钮:(id)set单选按钮 {   // 0x3fd40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set单选按钮: 即可补全。
    // 0x03fd40  mov      x1, x2                                  
    // 0x03fd44  adrp     x8, #0xad000                            
    // 0x03fd48  ldrsw    x8, [x8, #0xa4c]                        
    // 0x03fd4c  b        #0x3fe78                                ; func_0x3fe78
}

- (id)连跑按钮 {   // 0x3fd50
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 连跑按钮 即可补全。
    // 0x03fd50  adrp     x8, #0xad000                            
    // 0x03fd54  ldrsw    x8, [x8, #0xa50]                        
    // 0x03fd58  b        #0x3febc                                ; func_0x3febc
}

- (void)set连跑按钮:(id)set连跑按钮 {   // 0x3fd5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set连跑按钮: 即可补全。
    // 0x03fd5c  mov      x1, x2                                  
    // 0x03fd60  adrp     x8, #0xad000                            
    // 0x03fd64  ldrsw    x8, [x8, #0xa50]                        
    // 0x03fd68  b        #0x3fe78                                ; func_0x3fe78
}

- (id)动作 {   // 0x3fd6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 动作 即可补全。
    // 0x03fd6c  adrp     x8, #0xad000                            
    // 0x03fd70  ldrsw    x8, [x8, #0xa54]                        
    // 0x03fd74  b        #0x3febc                                ; func_0x3febc
}

- (void)set动作:(id)set动作 {   // 0x3fd78
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set动作: 即可补全。
    // 0x03fd78  adrp     x8, #0xad000                            
    // 0x03fd7c  ldrsw    x3, [x8, #0xa54]                        
    // 0x03fd80  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)选中 {   // 0x3fd84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 选中 即可补全。
    // 0x03fd84  adrp     x8, #0xad000                            
    // 0x03fd88  ldrsw    x8, [x8, #0xa58]                        
    // 0x03fd8c  b        #0x3febc                                ; func_0x3febc
}

- (void)set选中:(id)set选中 {   // 0x3fd90
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set选中: 即可补全。
    // 0x03fd90  mov      x1, x2                                  
    // 0x03fd94  adrp     x8, #0xad000                            
    // 0x03fd98  ldrsw    x8, [x8, #0xa58]                        
    // 0x03fd9c  b        #0x3fe78                                ; func_0x3fe78
}

- (id)组 {   // 0x3fda0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 组 即可补全。
    // 0x03fda0  adrp     x8, #0xad000                            
    // 0x03fda4  ldrsw    x8, [x8, #0xa38]                        
    // 0x03fda8  b        #0x3febc                                ; func_0x3febc
}

- (void)set组:(id)set组 {   // 0x3fdac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set组: 即可补全。
    // 0x03fdac  mov      x1, x2                                  
    // 0x03fdb0  adrp     x8, #0xad000                            
    // 0x03fdb4  ldrsw    x8, [x8, #0xa38]                        
    // 0x03fdb8  b        #0x3fe78                                ; func_0x3fe78
}

- (BOOL)已默认全选 {   // 0x3fdbc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 已默认全选 即可补全。
    // 0x03fdbc  adrp     x8, #0xad000                            
    // 0x03fdc0  ldrsw    x8, [x8, #0xa5c]                        
    // 0x03fdc4  ldrb     w0, [x0, x8]                            
    // 0x03fdc8  ret                                              
}

- (void)set已默认全选:(BOOL)set已默认全选 {   // 0x3fdcc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑选择视图 set已默认全选: 即可补全。
    // 0x03fdcc  adrp     x8, #0xad000                            
    // 0x03fdd0  ldrsw    x8, [x8, #0xa5c]                        
    // 0x03fdd4  strb     w2, [x0, x8]                            
    // 0x03fdd8  ret                                              
}

@end