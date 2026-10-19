//
//  功能视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 功能视图

- (void)构建 {   // 0x2af24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 构建 即可补全。
    // 0x02af24  sub      sp, sp, #0xf0                           
    // 0x02af28  stp      d11, d10, [sp, #0x70]                   
    // 0x02af2c  stp      d9, d8, [sp, #0x80]                     
    // 0x02af30  stp      x28, x27, [sp, #0x90]                   
    // 0x02af34  stp      x26, x25, [sp, #0xa0]                   
    // 0x02af38  stp      x24, x23, [sp, #0xb0]                   
    // 0x02af3c  stp      x22, x21, [sp, #0xc0]                   
    // 0x02af40  stp      x20, x19, [sp, #0xd0]                   
    // 0x02af44  stp      x29, x30, [sp, #0xe0]                   
    // 0x02af48  add      x29, sp, #0xe0                          
    // 0x02af4c  mov      x19, x0                                 
    // 0x02af50  adrp     x8, #0x8c000                            
    // 0x02af54  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02af58  ldr      x8, [x8]                                
    // 0x02af5c  str      x8, [sp, #0x68]                         
    // 0x02af60  adrp     x20, #0xad000                           
    // 0x02af64  ldr      x0, [x20, #0x1d0]                       ; class(?0x0)
    // 0x02af68  bl       #0x68f5c                                ; _objc_alloc
    // 0x02af6c  adrp     x8, #0x7c000                            
    // 0x02af70  ldr      d8, [x8, #0x588]                        ; ptr_0x7c588
    // 0x02af74  fmov     d0, xzr                                 
    // 0x02af78  fmov     d1, #14.00000000                        
    // 0x02af7c  fmov     d3, #22.00000000                        
    // 0x02af80  fmov     d2, d8                                  
}

- (void)点按:(id)点按 {   // 0x2b514
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 点按: 即可补全。
    // 0x02b514  stp      x20, x19, [sp, #-0x20]!                 
    // 0x02b518  stp      x29, x30, [sp, #0x10]                   
    // 0x02b51c  add      x29, sp, #0x10                          
    // 0x02b520  mov      x19, x0                                 
    // 0x02b524  mov      x0, x2                                  
    // 0x02b528  bl       #0x6fa60                                ; [x2 tag] x2, x3, x4, x5, x6, x7
    // 0x02b52c  cmp      x0, #4                                  
    // 0x02b530  b.hi     #0x2b55c                                
    // 0x02b534  adrp     x8, #0x7c000                            
    // 0x02b538  add      x8, x8, #0x5b8                          
    // 0x02b53c  adr      x9, #0x2b54c                            
    // 0x02b540  ldrb     w10, [x8, x0]                           
    // 0x02b544  add      x9, x9, x10, lsl #2                     
    // 0x02b548  br       x9                                      
    // 0x02b54c  mov      x0, x19                                 
    // 0x02b550  ldp      x29, x30, [sp, #0x10]                   
    // 0x02b554  ldp      x20, x19, [sp], #0x20                   
    // 0x02b558  b        #0x72100                                ; [x0 新增动作] x2, x3, x4, x5, x6, x7
    // 0x02b55c  ldp      x29, x30, [sp, #0x10]                   
    // 0x02b560  ldp      x20, x19, [sp], #0x20                   
    // 0x02b564  ret                                              
    // 0x02b568  mov      x0, x19                                 
    // 0x02b56c  ldp      x29, x30, [sp, #0x10]                   
    // 0x02b570  ldp      x20, x19, [sp], #0x20                   
}

- (void)使用方法 {   // 0x2b5a8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 使用方法 即可补全。
    // 0x02b5a8  sub      sp, sp, #0x40                           
    // 0x02b5ac  stp      x20, x19, [sp, #0x20]                   
    // 0x02b5b0  stp      x29, x30, [sp, #0x30]                   
    // 0x02b5b4  add      x29, sp, #0x30                          
    // 0x02b5b8  adrp     x8, #0x8c000                            
    // 0x02b5bc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02b5c0  ldr      x8, [x8]                                
    // 0x02b5c4  str      x8, [sp, #0x18]                         
    // 0x02b5c8  adrp     x8, #0xad000                            
    // 0x02b5cc  ldr      x19, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x02b5d0  adrp     x8, #0x90000                            
    // 0x02b5d4  add      x8, x8, #0xe10                          
    // 0x02b5d8  adrp     x9, #0x90000                            
    // 0x02b5dc  add      x9, x9, #0xe30                          
    // 0x02b5e0  stp      x8, x9, [sp, #8]                        
    // 0x02b5e4  adrp     x8, #0xad000                            
    // 0x02b5e8  ldr      x0, [x8, #0x110]                        ; class(NSArray)
    // 0x02b5ec  add      x2, sp, #8                              
    // 0x02b5f0  mov      w3, #2                                  
    // 0x02b5f4  bl       #0x6a120                                ; [class(NSArray) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x02b5f8  mov      x29, x29                                
    // 0x02b5fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02b600  mov      x20, x0                                 
    // 0x02b604  adrp     x2, #0x90000                            
}

- (void)运行统计 {   // 0x2b66c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 运行统计 即可补全。
    // 0x02b66c  adrp     x8, #0xad000                            
    // 0x02b670  ldr      x0, [x8, #0x3a0]                        ; class(统计视图)
    // 0x02b674  b        #0x72340                                ; [class(统计视图) 显示] x2, x3, x4, x5, x6, x7
}

- (void)新增动作 {   // 0x2b678
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 新增动作 即可补全。
    // 0x02b678  sub      sp, sp, #0x1e0                          
    // 0x02b67c  stp      x28, x27, [sp, #0x180]                  
    // 0x02b680  stp      x26, x25, [sp, #0x190]                  
    // 0x02b684  stp      x24, x23, [sp, #0x1a0]                  
    // 0x02b688  stp      x22, x21, [sp, #0x1b0]                  
    // 0x02b68c  stp      x20, x19, [sp, #0x1c0]                  
    // 0x02b690  stp      x29, x30, [sp, #0x1d0]                  
    // 0x02b694  add      x29, sp, #0x1d0                         
    // 0x02b698  mov      x20, x0                                 
    // 0x02b69c  adrp     x8, #0x8c000                            
    // 0x02b6a0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02b6a4  ldr      x8, [x8]                                
    // 0x02b6a8  stur     x8, [x29, #-0x58]                       
    // 0x02b6ac  adrp     x8, #0x90000                            
    // 0x02b6b0  add      x8, x8, #0x790                          
    // 0x02b6b4  adrp     x9, #0x90000                            
    // 0x02b6b8  add      x9, x9, #0xc50                          
    // 0x02b6bc  stp      x8, x9, [x29, #-0x78]                   
    // 0x02b6c0  adrp     x8, #0x90000                            
    // 0x02b6c4  add      x8, x8, #0xc70                          
    // 0x02b6c8  adrp     x9, #0x90000                            
    // 0x02b6cc  add      x9, x9, #0xc90                          
    // 0x02b6d0  stp      x8, x9, [x29, #-0x68]                   
    // 0x02b6d4  adrp     x27, #0xad000                           
}

- (void)动作列表 {   // 0x2c3d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 动作列表 即可补全。
    // 0x02c3d8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x02c3dc  stp      x29, x30, [sp, #0x10]                   
    // 0x02c3e0  add      x29, sp, #0x10                          
    // 0x02c3e4  adrp     x8, #0xad000                            
    // 0x02c3e8  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x02c3ec  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x02c3f0  mov      x29, x29                                
    // 0x02c3f4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c3f8  bl       #0x2c5b0                                ; func_0x2c5b0
    // 0x02c3fc  bl       #0x2c580                                ; func_0x2c580
    // 0x02c400  adrp     x8, #0xad000                            
    // 0x02c404  ldr      x0, [x8, #0x2e0]                        ; class(任务编辑视图)
    // 0x02c408  bl       #0x748a0                                ; [class(任务编辑视图) 面板] x2, x3, x4, x5, x6, x7
    // 0x02c40c  mov      x29, x29                                
    // 0x02c410  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c414  mov      x19, x0                                 
    // 0x02c418  bl       #0x72340                                ; [class(任务编辑视图) 显示] x2, x3, x4, x5, x6, x7
    // 0x02c41c  mov      x0, x19                                 
    // 0x02c420  ldp      x29, x30, [sp, #0x10]                   
    // 0x02c424  b        #0x2c540                                ; func_0x2c540
}

- (void)录制 {   // 0x2c428
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 录制 即可补全。
    // 0x02c428  stp      x20, x19, [sp, #-0x20]!                 
    // 0x02c42c  stp      x29, x30, [sp, #0x10]                   
    // 0x02c430  add      x29, sp, #0x10                          
    // 0x02c434  adrp     x8, #0xad000                            
    // 0x02c438  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x02c43c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x02c440  mov      x29, x29                                
    // 0x02c444  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c448  bl       #0x2c5b0                                ; func_0x2c5b0
    // 0x02c44c  bl       #0x2c580                                ; func_0x2c580
    // 0x02c450  adrp     x8, #0xad000                            
    // 0x02c454  ldr      x0, [x8, #0x198]                        ; class(录制视图)
    // 0x02c458  bl       #0x748a0                                ; [class(录制视图) 面板] x2, x3, x4, x5, x6, x7
    // 0x02c45c  mov      x29, x29                                
    // 0x02c460  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c464  mov      x19, x0                                 
    // 0x02c468  bl       #0x72340                                ; [class(录制视图) 显示] x2, x3, x4, x5, x6, x7
    // 0x02c46c  mov      x0, x19                                 
    // 0x02c470  ldp      x29, x30, [sp, #0x10]                   
    // 0x02c474  b        #0x2c540                                ; func_0x2c540
}

- (void)设置 {   // 0x2c478
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 设置 即可补全。
    // 0x02c478  stp      x20, x19, [sp, #-0x20]!                 
    // 0x02c47c  stp      x29, x30, [sp, #0x10]                   
    // 0x02c480  add      x29, sp, #0x10                          
    // 0x02c484  adrp     x20, #0xad000                           
    // 0x02c488  ldr      x0, [x20, #0x90]                        ; class(CQOverlay)
    // 0x02c48c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x02c490  mov      x29, x29                                
    // 0x02c494  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c498  bl       #0x2c5b0                                ; func_0x2c5b0
    // 0x02c49c  bl       #0x2c580                                ; func_0x2c580
    // 0x02c4a0  ldr      x0, [x20, #0x90]                        ; class(CQOverlay)
    // 0x02c4a4  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x02c4a8  mov      x29, x29                                
    // 0x02c4ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c4b0  mov      x19, x0                                 
    // 0x02c4b4  adrp     x8, #0xad000                            
    // 0x02c4b8  ldr      x0, [x8, #0x3a8]                        ; class(设置视图)
    // 0x02c4bc  bl       #0x748a0                                ; [class(设置视图) 面板] x2, x3, x4, x5, x6, x7
    // 0x02c4c0  mov      x29, x29                                
    // 0x02c4c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02c4c8  mov      x20, x0                                 
    // 0x02c4cc  mov      x0, x19                                 
    // 0x02c4d0  mov      x2, x20                                 
    // 0x02c4d4  bl       #0x71760                                ; [class(CQOverlay) 弹出面板:] class(设置视图), x3, x4, x5, x6, x7
}

- (NSMutableArray *)按钮列表 {   // 0x2c4e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 按钮列表 即可补全。
    // 0x02c4e8  adrp     x8, #0xad000                            
    // 0x02c4ec  ldrsw    x8, [x8, #0x72c]                        
    // 0x02c4f0  ldr      x0, [x0, x8]                            
    // 0x02c4f4  ret                                              
}

- (void)set按钮列表:(NSMutableArray *)set按钮列表 {   // 0x2c4f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 功能视图 set按钮列表: 即可补全。
    // 0x02c4f8  mov      x1, x2                                  
    // 0x02c4fc  adrp     x8, #0xad000                            
    // 0x02c500  ldrsw    x8, [x8, #0x72c]                        
    // 0x02c504  add      x0, x0, x8                              
    // 0x02c508  b        #0x690a0                                ; _objc_storeStrong
}

@end