//
//  滑动选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 滑动选择视图

- (void)构建参数 {   // 0x49a14
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 构建参数 即可补全。
    // 0x049a14  sub      sp, sp, #0x1c0                          
    // 0x049a18  stp      d9, d8, [sp, #0x150]                    
    // 0x049a1c  stp      x28, x27, [sp, #0x160]                  
    // 0x049a20  stp      x26, x25, [sp, #0x170]                  
    // 0x049a24  stp      x24, x23, [sp, #0x180]                  
    // 0x049a28  stp      x22, x21, [sp, #0x190]                  
    // 0x049a2c  stp      x20, x19, [sp, #0x1a0]                  
    // 0x049a30  stp      x29, x30, [sp, #0x1b0]                  
    // 0x049a34  add      x29, sp, #0x1b0                         
    // 0x049a38  mov      x20, x0                                 
    // 0x049a3c  adrp     x8, #0x8c000                            
    // 0x049a40  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x049a44  ldr      x8, [x8]                                
    // 0x049a48  stur     x8, [x29, #-0x70]                       
    // 0x049a4c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x049a50  mov      x29, x29                                
    // 0x049a54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x049a58  mov      x19, x0                                 
    // 0x049a5c  mov      w2, #2                                  
    // 0x049a60  bl       #0x6e640                                ; [x0 set类型:] x2, x3, x4, x5, x6, x7
    // 0x049a64  bl       #0x601b8                                ; func_0x601b8
    // 0x049a68  add      x0, sp, #0xd8                           
    // 0x049a6c  bl       #0x60dfc                                ; func_0x60dfc
    // 0x049a70  adrp     x27, #0x8c000                           
}

- (void)方向变化:(id)方向变化 {   // 0x4a130
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 方向变化: 即可补全。
    // 0x04a130  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04a134  stp      x20, x19, [sp, #0x10]                   
    // 0x04a138  stp      x29, x30, [sp, #0x20]                   
    // 0x04a13c  add      x29, sp, #0x20                          
    // 0x04a140  mov      x19, x0                                 
    // 0x04a144  bl       #0x60364                                ; func_0x60364
    // 0x04a148  mov      x20, x0                                 
    // 0x04a14c  bl       #0x6bca0                                ; [x0 selectedSegmentIndex] x2, x3, x4, x5, x6, x7
    // 0x04a150  tbnz     x0, #0x3f, #0x4a190                     
    // 0x04a154  bl       #0x62150                                ; func_0x62150
    // 0x04a158  cmp      x0, #7                                  
    // 0x04a15c  b.gt     #0x4a190                                
    // 0x04a160  bl       #0x62150                                ; func_0x62150
    // 0x04a164  adrp     x8, #0x7c000                            
    // 0x04a168  add      x8, x8, #0x990                          
    // 0x04a16c  ldr      x21, [x8, x0, lsl #3]                   
    // 0x04a170  mov      x0, x19                                 
    // 0x04a174  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04a178  mov      x29, x29                                
    // 0x04a17c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a180  bl       #0x60a10                                ; func_0x60a10
    // 0x04a184  bl       #0x6dec0                                ; [x0 set方向:] x2, x3, x4, x5, x6, x7
    // 0x04a188  bl       #0x6019c                                ; func_0x6019c
    // 0x04a18c  bl       #0x622a8                                ; func_0x622a8
}

- (BOOL)含时长字段 {   // 0x4a19c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 含时长字段 即可补全。
    // 0x04a19c  b        #0x613a0                                ; func_0x613a0
}

- (double)面板附加高度 {   // 0x4a1a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 面板附加高度 即可补全。
    // 0x04a1a0  stp      x29, x30, [sp, #-0x10]!                 
    // 0x04a1a4  mov      x29, sp                                 
    // 0x04a1a8  bl       #0x722a0                                ; [x0 时长随机附加高度] x2, x3, x4, x5, x6, x7
    // 0x04a1ac  mov      x8, #0x4046000000000000                 
    // 0x04a1b0  fmov     d1, x8                                  
    // 0x04a1b4  fadd     d0, d0, d1                              
    // 0x04a1b8  ldp      x29, x30, [sp], #0x10                   
    // 0x04a1bc  ret                                              
}

- (void)布局参数区 {   // 0x4a1c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 布局参数区 即可补全。
    // 0x04a1c0  sub      sp, sp, #0x50                           
    // 0x04a1c4  stp      d9, d8, [sp, #0x20]                     
    // 0x04a1c8  stp      x20, x19, [sp, #0x30]                   
    // 0x04a1cc  stp      x29, x30, [sp, #0x40]                   
    // 0x04a1d0  add      x29, sp, #0x40                          
    // 0x04a1d4  mov      x19, x0                                 
    // 0x04a1d8  adrp     x8, #0xad000                            
    // 0x04a1dc  ldr      x8, [x8, #0x568]                        ; class(滑动选择视图)
    // 0x04a1e0  stp      x0, x8, [sp, #0x10]                     
    // 0x04a1e4  adrp     x8, #0xab000                            
    // 0x04a1e8  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x04a1ec  bl       #0x61664                                ; func_0x61664
    // 0x04a1f0  mov      x0, x19                                 
    // 0x04a1f4  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x04a1f8  mov      x29, x29                                
    // 0x04a1fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a200  bl       #0x60850                                ; func_0x60850
    // 0x04a204  fmov     d8, d2                                  
    // 0x04a208  bl       #0x60184                                ; func_0x60184
    // 0x04a20c  bl       #0x60c4c                                ; func_0x60c4c
    // 0x04a210  fmov     d1, #4.00000000                         
    // 0x04a214  fadd     d9, d0, d1                              
    // 0x04a218  fmov     d0, #-28.00000000                       
    // 0x04a21c  fadd     d2, d8, d0                              
}

- (id)新建标记视图 {   // 0x4a270
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 新建标记视图 即可补全。
    // 0x04a270  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04a274  stp      x29, x30, [sp, #0x10]                   
    // 0x04a278  add      x29, sp, #0x10                          
    // 0x04a27c  mov      x19, x0                                 
    // 0x04a280  adrp     x8, #0xad000                            
    // 0x04a284  ldr      x0, [x8, #0x468]                        ; class(方向箭头视图)
    // 0x04a288  bl       #0x68f5c                                ; _objc_alloc
    // 0x04a28c  mov      x8, #0x405e000000000000                 
    // 0x04a290  fmov     d2, x8                                  
    // 0x04a294  mov      x8, #0x4046000000000000                 
    // 0x04a298  bl       #0x61a0c                                ; func_0x61a0c
    // 0x04a29c  adrp     x8, #0xad000                            
    // 0x04a2a0  ldrsw    x20, [x8, #0xb04]                       
    // 0x04a2a4  ldr      x8, [x19, x20]                          
    // 0x04a2a8  str      x0, [x19, x20]                          
    // 0x04a2ac  bl       #0x603c4                                ; func_0x603c4
    // 0x04a2b0  ldr      x0, [x19, x20]                          
    // 0x04a2b4  ldp      x29, x30, [sp, #0x10]                   
    // 0x04a2b8  ldp      x20, x19, [sp], #0x20                   
    // 0x04a2bc  b        #0x69064                                ; _objc_retainAutoreleaseReturnValue
}

- (void)摆放标记:(CGPoint)摆放标记 {   // 0x4a2c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 摆放标记: 即可补全。
    // 0x04a2c0  sub      sp, sp, #0xd0                           
    // 0x04a2c4  stp      d13, d12, [sp, #0x70]                   
    // 0x04a2c8  stp      d11, d10, [sp, #0x80]                   
    // 0x04a2cc  stp      d9, d8, [sp, #0x90]                     
    // 0x04a2d0  stp      x22, x21, [sp, #0xa0]                   
    // 0x04a2d4  stp      x20, x19, [sp, #0xb0]                   
    // 0x04a2d8  stp      x29, x30, [sp, #0xc0]                   
    // 0x04a2dc  add      x29, sp, #0xc0                          
    // 0x04a2e0  bl       #0x61eb0                                ; func_0x61eb0
    // 0x04a2e4  mov      x19, x0                                 
    // 0x04a2e8  adrp     x8, #0xad000                            
    // 0x04a2ec  ldrsw    x21, [x8, #0xb04]                       
    // 0x04a2f0  ldr      x8, [x0, x21]                           
    // 0x04a2f4  cbz      x8, #0x4a3a8                            
    // 0x04a2f8  mov      x0, x19                                 
    // 0x04a2fc  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04a300  mov      x29, x29                                
    // 0x04a304  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a308  bl       #0x622e0                                ; func_0x622e0
    // 0x04a30c  bl       #0x4a3e8                                ; func_0x4a3e8
    // 0x04a310  fmov     d10, d0                                 
    // 0x04a314  fmov     d11, d1                                 
    // 0x04a318  bl       #0x60184                                ; func_0x60184
    // 0x04a31c  mov      x0, x19                                 
}

- (void)更新标记 {   // 0x4a474
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 更新标记 即可补全。
    // 0x04a474  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04a478  stp      x20, x19, [sp, #0x10]                   
    // 0x04a47c  stp      x29, x30, [sp, #0x20]                   
    // 0x04a480  add      x29, sp, #0x20                          
    // 0x04a484  mov      x19, x0                                 
    // 0x04a488  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04a48c  mov      x29, x29                                
    // 0x04a490  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a494  bl       #0x622e0                                ; func_0x622e0
    // 0x04a498  mov      x2, x0                                  
    // 0x04a49c  adrp     x8, #0xad000                            
    // 0x04a4a0  ldrsw    x21, [x8, #0xb04]                       
    // 0x04a4a4  ldr      x0, [x19, x21]                          
    // 0x04a4a8  bl       #0x6dec0                                ; [x0 set方向:] x0, x3, x4, x5, x6, x7
    // 0x04a4ac  bl       #0x60184                                ; func_0x60184
    // 0x04a4b0  mov      x0, x19                                 
    // 0x04a4b4  bl       #0x706c0                                ; [x0 动作] x0, x3, x4, x5, x6, x7
    // 0x04a4b8  mov      x29, x29                                
    // 0x04a4bc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a4c0  bl       #0x622e8                                ; func_0x622e8
    // 0x04a4c4  ldr      x0, [x19, x21]                          
    // 0x04a4c8  bl       #0x6f320                                ; [x0 set长度:] x0, x3, x4, x5, x6, x7
    // 0x04a4cc  mov      x0, x20                                 
    // 0x04a4d0  ldp      x29, x30, [sp, #0x20]                   
}

- (void)同步起止 {   // 0x4a4d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 同步起止 即可补全。
    // 0x04a4d8  mov      x2, x30                                 
    // 0x04a4dc  bl       #0x608e4                                ; func_0x608e4
    // 0x04a4e0  mov      x30, x2                                 
    // 0x04a4e4  stp      x29, x30, [sp, #0x50]                   
    // 0x04a4e8  add      x29, sp, #0x50                          
    // 0x04a4ec  mov      x19, x0                                 
    // 0x04a4f0  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04a4f4  mov      x29, x29                                
    // 0x04a4f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a4fc  bl       #0x622d0                                ; func_0x622d0
    // 0x04a500  fmov     d8, d0                                  
    // 0x04a504  fmov     d9, d1                                  
    // 0x04a508  bl       #0x60184                                ; func_0x60184
    // 0x04a50c  mov      x0, x19                                 
    // 0x04a510  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04a514  mov      x29, x29                                
    // 0x04a518  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a51c  bl       #0x622e0                                ; func_0x622e0
    // 0x04a520  bl       #0x4a3e8                                ; func_0x4a3e8
    // 0x04a524  fmov     d10, d0                                 
    // 0x04a528  fmov     d11, d1                                 
    // 0x04a52c  bl       #0x60184                                ; func_0x60184
    // 0x04a530  adrp     x8, #0xad000                            
    // 0x04a534  ldr      x0, [x8, #0xa0]                         ; class(?0x0)
}

- (void)刷新准星 {   // 0x4a620
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 刷新准星 即可补全。
    // 0x04a620  sub      sp, sp, #0x30                           
    // 0x04a624  stp      x20, x19, [sp, #0x10]                   
    // 0x04a628  stp      x29, x30, [sp, #0x20]                   
    // 0x04a62c  add      x29, sp, #0x20                          
    // 0x04a630  mov      x19, x0                                 
    // 0x04a634  bl       #0x70cc0                                ; [x0 同步起止] x2, x3, x4, x5, x6, x7
    // 0x04a638  adrp     x8, #0xad000                            
    // 0x04a63c  ldr      x8, [x8, #0x568]                        ; class(滑动选择视图)
    // 0x04a640  stp      x19, x8, [sp]                           
    // 0x04a644  adrp     x8, #0xab000                            
    // 0x04a648  ldr      x1, [x8, #0xb80]                        ; SEL("刷新准星")
    // 0x04a64c  bl       #0x60a00                                ; func_0x60a00
    // 0x04a650  ldp      x29, x30, [sp, #0x20]                   
    // 0x04a654  b        #0x60ccc                                ; func_0x60ccc
}

- (id)坐标文本 {   // 0x4a658
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 滑动选择视图 坐标文本 即可补全。
    // 0x04a658  sub      sp, sp, #0xa0                           
    // 0x04a65c  stp      d13, d12, [sp, #0x30]                   
    // 0x04a660  stp      d11, d10, [sp, #0x40]                   
    // 0x04a664  stp      d9, d8, [sp, #0x50]                     
    // 0x04a668  stp      x24, x23, [sp, #0x60]                   
    // 0x04a66c  stp      x22, x21, [sp, #0x70]                   
    // 0x04a670  stp      x20, x19, [sp, #0x80]                   
    // 0x04a674  stp      x29, x30, [sp, #0x90]                   
    // 0x04a678  add      x29, sp, #0x90                          
    // 0x04a67c  mov      x19, x0                                 
    // 0x04a680  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04a684  mov      x29, x29                                
    // 0x04a688  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a68c  bl       #0x622d0                                ; func_0x622d0
    // 0x04a690  fmov     d8, d0                                  
    // 0x04a694  fmov     d9, d1                                  
    // 0x04a698  bl       #0x60184                                ; func_0x60184
    // 0x04a69c  mov      x0, x19                                 
    // 0x04a6a0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04a6a4  mov      x29, x29                                
    // 0x04a6a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a6ac  mov      x21, x0                                 
    // 0x04a6b0  bl       #0x721c0                                ; [x0 方向] x2, x3, x4, x5, x6, x7
    // 0x04a6b4  mov      x20, x0                                 
}

@end