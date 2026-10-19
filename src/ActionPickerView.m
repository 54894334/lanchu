//
//  动作选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 动作选择视图

- (id)initWith动作:(id)initWith动作 {   // 0x406ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 initWith动作: 即可补全。
    // 0x0406ec  sub      sp, sp, #0x90                           
    // 0x0406f0  mov      x1, x30                                 
    // 0x0406f4  bl       #0x603cc                                ; func_0x603cc
    // 0x0406f8  mov      x30, x1                                 
    // 0x0406fc  stp      x29, x30, [sp, #0x80]                   
    // 0x040700  add      x29, sp, #0x80                          
    // 0x040704  mov      x21, x2                                 
    // 0x040708  mov      x20, x0                                 
    // 0x04070c  bl       #0x60364                                ; func_0x60364
    // 0x040710  mov      x19, x0                                 
    // 0x040714  adrp     x8, #0xad000                            
    // 0x040718  ldr      x0, [x8, #0xa0]                         ; class(?0x0)
    // 0x04071c  bl       #0x6b440                                ; [class(?0x0) mainScreen] x2, x3, x4, x5, x6, x7
    // 0x040720  mov      x29, x29                                
    // 0x040724  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x040728  bl       #0x620a0                                ; func_0x620a0
    // 0x04072c  bl       #0x611d4                                ; func_0x611d4
    // 0x040730  bl       #0x6019c                                ; func_0x6019c
    // 0x040734  adrp     x8, #0xad000                            
    // 0x040738  ldr      x8, [x8, #0x548]                        ; class(动作选择视图)
    // 0x04073c  stp      x20, x8, [sp]                           
    // 0x040740  adrp     x8, #0xaa000                            
    // 0x040744  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x040748  mov      x0, sp                                  
}

- (id)动作 {   // 0x40cec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 动作 即可补全。
    // 0x040cec  b        #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x40cf0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 hitTest:withEvent: 即可补全。
    // 0x040cf0  sub      sp, sp, #0x50                           
    // 0x040cf4  stp      x24, x23, [sp, #0x10]                   
    // 0x040cf8  stp      x22, x21, [sp, #0x20]                   
    // 0x040cfc  stp      x20, x19, [sp, #0x30]                   
    // 0x040d00  stp      x29, x30, [sp, #0x40]                   
    // 0x040d04  add      x29, sp, #0x40                          
    // 0x040d08  mov      x20, x0                                 
    // 0x040d0c  adrp     x8, #0xad000                            
    // 0x040d10  ldr      x8, [x8, #0x548]                        ; class(动作选择视图)
    // 0x040d14  stp      x0, x8, [sp]                            
    // 0x040d18  adrp     x8, #0xac000                            
    // 0x040d1c  ldr      x1, [x8, #0xdd0]                        ; SEL("hitTest:withEvent:")
    // 0x040d20  mov      x0, sp                                  
    // 0x040d24  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x040d28  mov      x29, x29                                
    // 0x040d2c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x040d30  mov      x19, x0                                 
    // 0x040d34  cmp      x0, #0                                  
    // 0x040d38  ccmp     x0, x20, #4, ne                         
    // 0x040d3c  b.ne     #0x40d48                                
    // 0x040d40  mov      x20, #0                                 
    // 0x040d44  b        #0x40dd8                                
    // 0x040d48  mov      x0, x20                                 
    // 0x040d4c  bl       #0x727a0                                ; [#0 标记视图] x2, x3, x4, x5, x6, x7
}

- (id)新建标记视图 {   // 0x40df8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 新建标记视图 即可补全。
    // 0x040df8  stp      d9, d8, [sp, #-0x60]!                   
    // 0x040dfc  stp      x26, x25, [sp, #0x10]                   
    // 0x040e00  stp      x24, x23, [sp, #0x20]                   
    // 0x040e04  stp      x22, x21, [sp, #0x30]                   
    // 0x040e08  stp      x20, x19, [sp, #0x40]                   
    // 0x040e0c  stp      x29, x30, [sp, #0x50]                   
    // 0x040e10  add      x29, sp, #0x50                          
    // 0x040e14  adrp     x22, #0xad000                           
    // 0x040e18  bl       #0x610f8                                ; func_0x610f8
    // 0x040e1c  mov      x8, #0x404c000000000000                 
    // 0x040e20  fmov     d8, x8                                  
    // 0x040e24  bl       #0x606b4                                ; func_0x606b4
    // 0x040e28  mov      x19, x0                                 
    // 0x040e2c  adrp     x25, #0xad000                           
    // 0x040e30  ldr      x0, [x25, #0x1b8]                       ; class(?0x0)
    // 0x040e34  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x040e38  mov      x29, x29                                
    // 0x040e3c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x040e40  bl       #0x60300                                ; func_0x60300
    // 0x040e44  bl       #0x60184                                ; func_0x60184
    // 0x040e48  mov      x0, x19                                 
    // 0x040e4c  bl       #0x6b2c0                                ; [x0 layer] x2, x3, x4, x5, x6, x7
    // 0x040e50  mov      x29, x29                                
    // 0x040e54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)摆放标记:(CGPoint)摆放标记 {   // 0x411bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 摆放标记: 即可补全。
    // 0x0411bc  stp      d9, d8, [sp, #-0x30]!                   
    // 0x0411c0  stp      x20, x19, [sp, #0x10]                   
    // 0x0411c4  stp      x29, x30, [sp, #0x20]                   
    // 0x0411c8  add      x29, sp, #0x20                          
    // 0x0411cc  bl       #0x61eb0                                ; func_0x61eb0
    // 0x0411d0  bl       #0x727a0                                ; [x0 标记视图] x2, x3, x4, x5, x6, x7
    // 0x0411d4  mov      x29, x29                                
    // 0x0411d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0411dc  mov      x19, x0                                 
    // 0x0411e0  bl       #0x60e14                                ; func_0x60e14
    // 0x0411e4  bl       #0x6bfa0                                ; [x0 setCenter:] x2, x3, x4, x5, x6, x7
    // 0x0411e8  mov      x0, x19                                 
    // 0x0411ec  ldp      x29, x30, [sp, #0x20]                   
    // 0x0411f0  b        #0x601ac                                ; func_0x601ac
}

- (void)更新标记 {   // 0x411f4
}

- (void)拖动:(id)拖动 {   // 0x411f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 拖动: 即可补全。
    // 0x0411f8  stp      d9, d8, [sp, #-0x40]!                   
    // 0x0411fc  stp      x22, x21, [sp, #0x10]                   
    // 0x041200  stp      x20, x19, [sp, #0x20]                   
    // 0x041204  stp      x29, x30, [sp, #0x30]                   
    // 0x041208  add      x29, sp, #0x30                          
    // 0x04120c  mov      x19, x0                                 
    // 0x041210  bl       #0x60364                                ; func_0x60364
    // 0x041214  mov      x20, x0                                 
    // 0x041218  bl       #0x6f6a0                                ; [x0 state] x2, x3, x4, x5, x6, x7
    // 0x04121c  cmp      x0, #1                                  
    // 0x041220  b.ne     #0x41284                                
    // 0x041224  mov      x0, x19                                 
    // 0x041228  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x04122c  mov      x29, x29                                
    // 0x041230  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041234  mov      x21, x0                                 
    // 0x041238  bl       #0x710a0                                ; [x0 坐标] x2, x3, x4, x5, x6, x7
    // 0x04123c  bl       #0x412d4                                ; func_0x412d4
    // 0x041240  fmov     d8, d0                                  
    // 0x041244  bl       #0x61584                                ; func_0x61584
    // 0x041248  fsub     d8, d8, d0                              
    // 0x04124c  mov      x0, x19                                 
    // 0x041250  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x041254  mov      x29, x29                                
}

- (void)刷新准星 {   // 0x413b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 刷新准星 即可补全。
    // 0x0413b4  sub      sp, sp, #0x90                           
    // 0x0413b8  stp      d13, d12, [sp, #0x20]                   
    // 0x0413bc  stp      d11, d10, [sp, #0x30]                   
    // 0x0413c0  stp      d9, d8, [sp, #0x40]                     
    // 0x0413c4  stp      x24, x23, [sp, #0x50]                   
    // 0x0413c8  stp      x22, x21, [sp, #0x60]                   
    // 0x0413cc  stp      x20, x19, [sp, #0x70]                   
    // 0x0413d0  stp      x29, x30, [sp, #0x80]                   
    // 0x0413d4  add      x29, sp, #0x80                          
    // 0x0413d8  mov      x19, x0                                 
    // 0x0413dc  adrp     x8, #0x8c000                            
    // 0x0413e0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0413e4  ldr      x8, [x8]                                
    // 0x0413e8  str      x8, [sp, #0x18]                         
    // 0x0413ec  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x0413f0  mov      x29, x29                                
    // 0x0413f4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0413f8  bl       #0x622d0                                ; func_0x622d0
    // 0x0413fc  bl       #0x412d4                                ; func_0x412d4
    // 0x041400  fmov     d8, d0                                  
    // 0x041404  fmov     d9, d1                                  
    // 0x041408  bl       #0x60184                                ; func_0x60184
    // 0x04140c  mov      x0, x19                                 
    // 0x041410  bl       #0x60ce4                                ; func_0x60ce4
}

- (BOOL)显示标记 {   // 0x415f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 显示标记 即可补全。
    // 0x0415f0  b        #0x613a0                                ; func_0x613a0
}

- (id)坐标文本 {   // 0x415f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 坐标文本 即可补全。
    // 0x0415f4  sub      sp, sp, #0x40                           
    // 0x0415f8  stp      d9, d8, [sp, #0x10]                     
    // 0x0415fc  stp      x20, x19, [sp, #0x20]                   
    // 0x041600  stp      x29, x30, [sp, #0x30]                   
    // 0x041604  add      x29, sp, #0x30                          
    // 0x041608  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x04160c  mov      x29, x29                                
    // 0x041610  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041614  mov      x19, x0                                 
    // 0x041618  bl       #0x710a0                                ; [x0 坐标] x2, x3, x4, x5, x6, x7
    // 0x04161c  fmov     d8, d0                                  
    // 0x041620  fmov     d9, d1                                  
    // 0x041624  bl       #0x601b8                                ; func_0x601b8
    // 0x041628  adrp     x8, #0xad000                            
    // 0x04162c  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x041630  stp      d8, d9, [sp]                            
    // 0x041634  adrp     x2, #0x92000                            
    // 0x041638  add      x2, x2, #0xc70                          
    // 0x04163c  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x041640  ldp      x29, x30, [sp, #0x30]                   
    // 0x041644  ldp      x20, x19, [sp, #0x20]                   
    // 0x041648  ldp      d9, d8, [sp, #0x10]                     
    // 0x04164c  add      sp, sp, #0x40                           
    // 0x041650  ret                                              
}

- (void)构建参数 {   // 0x41654
}

- (id)添加参数:(id)添加参数 {   // 0x41658
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 添加参数: 即可补全。
    // 0x041658  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04165c  stp      x20, x19, [sp, #0x10]                   
    // 0x041660  stp      x29, x30, [sp, #0x20]                   
    // 0x041664  add      x29, sp, #0x20                          
    // 0x041668  mov      x19, x0                                 
    // 0x04166c  bl       #0x60364                                ; func_0x60364
    // 0x041670  bl       #0x60290                                ; func_0x60290
    // 0x041674  bl       #0x73600                                ; [x0 行列表] x2, x3, x4, x5, x6, x7
    // 0x041678  mov      x29, x29                                
    // 0x04167c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041680  bl       #0x60498                                ; func_0x60498
    // 0x041684  bl       #0x69ce0                                ; [x0 addObject:] x2, x3, x4, x5, x6, x7
    // 0x041688  bl       #0x6018c                                ; func_0x6018c
    // 0x04168c  mov      x0, x19                                 
    // 0x041690  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x041694  mov      x29, x29                                
    // 0x041698  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04169c  mov      x19, x0                                 
    // 0x0416a0  bl       #0x6032c                                ; func_0x6032c
    // 0x0416a4  bl       #0x601b8                                ; func_0x601b8
    // 0x0416a8  mov      x0, x20                                 
    // 0x0416ac  ldp      x29, x30, [sp, #0x20]                   
    // 0x0416b0  b        #0x603ec                                ; func_0x603ec
}

- (BOOL)含时长字段 {   // 0x416b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 含时长字段 即可补全。
    // 0x0416b4  b        #0x609e0                                ; func_0x609e0
}

- (double)时长随机附加高度 {   // 0x416b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 时长随机附加高度 即可补全。
    // 0x0416b8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0416bc  stp      x29, x30, [sp, #0x10]                   
    // 0x0416c0  add      x29, sp, #0x10                          
    // 0x0416c4  mov      x19, x0                                 
    // 0x0416c8  bl       #0x70d80                                ; [x0 含时长字段] x2, x3, x4, x5, x6, x7
    // 0x0416cc  fmov     d0, xzr                                 
    // 0x0416d0  cbz      w0, #0x41704                            
    // 0x0416d4  mov      x0, x19                                 
    // 0x0416d8  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x0416dc  mov      x29, x29                                
    // 0x0416e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0416e4  mov      x19, x0                                 
    // 0x0416e8  bl       #0x72260                                ; [x0 时长随机开关] x2, x3, x4, x5, x6, x7
    // 0x0416ec  cmp      x0, #1                                  
    // 0x0416f0  cset     w20, eq                                 
    // 0x0416f4  bl       #0x601b8                                ; func_0x601b8
    // 0x0416f8  adrp     x8, #0x7c000                            
    // 0x0416fc  add      x8, x8, #0x940                          
    // 0x041700  ldr      d0, [x8, w20, uxtw #3]                  
    // 0x041704  ldp      x29, x30, [sp, #0x10]                   
    // 0x041708  ldp      x20, x19, [sp], #0x20                   
    // 0x04170c  ret                                              
}

- (void)构建时长随机控件 {   // 0x41710
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 构建时长随机控件 即可补全。
    // 0x041710  sub      sp, sp, #0xf0                           
    // 0x041714  stp      x28, x27, [sp, #0x90]                   
    // 0x041718  stp      x26, x25, [sp, #0xa0]                   
    // 0x04171c  stp      x24, x23, [sp, #0xb0]                   
    // 0x041720  stp      x22, x21, [sp, #0xc0]                   
    // 0x041724  stp      x20, x19, [sp, #0xd0]                   
    // 0x041728  stp      x29, x30, [sp, #0xe0]                   
    // 0x04172c  add      x29, sp, #0xe0                          
    // 0x041730  mov      x19, x0                                 
    // 0x041734  adrp     x8, #0x8c000                            
    // 0x041738  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04173c  ldr      x8, [x8]                                
    // 0x041740  stur     x8, [x29, #-0x58]                       
    // 0x041744  bl       #0x70d80                                ; [x0 含时长字段] x2, x3, x4, x5, x6, x7
    // 0x041748  cbz      w0, #0x41b14                            
    // 0x04174c  mov      x0, x19                                 
    // 0x041750  bl       #0x72280                                ; [x0 时长随机段] x2, x3, x4, x5, x6, x7
    // 0x041754  mov      x29, x29                                
    // 0x041758  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04175c  bl       #0x61bfc                                ; func_0x61bfc
    // 0x041760  cbnz     x20, #0x41a18                           
    // 0x041764  adrp     x8, #0xad000                            
    // 0x041768  ldr      x0, [x8, #0x420]                        ; class(?0x0)
    // 0x04176c  bl       #0x68f5c                                ; _objc_alloc
}

- (void)时长随机段变化:(id)时长随机段变化 {   // 0x41bbc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 时长随机段变化: 即可补全。
    // 0x041bbc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x041bc0  stp      x20, x19, [sp, #0x10]                   
    // 0x041bc4  stp      x29, x30, [sp, #0x20]                   
    // 0x041bc8  add      x29, sp, #0x20                          
    // 0x041bcc  bl       #0x6029c                                ; func_0x6029c
    // 0x041bd0  bl       #0x60654                                ; func_0x60654
    // 0x041bd4  bl       #0x733c0                                ; [x0 编辑动作] x2, x3, x4, x5, x6, x7
    // 0x041bd8  mov      x29, x29                                
    // 0x041bdc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041be0  bl       #0x60498                                ; func_0x60498
    // 0x041be4  bl       #0x6df00                                ; [x0 set时长随机开关:] x2, x3, x4, x5, x6, x7
    // 0x041be8  bl       #0x6018c                                ; func_0x6018c
    // 0x041bec  mov      x0, x19                                 
    // 0x041bf0  ldp      x29, x30, [sp, #0x20]                   
    // 0x041bf4  b        #0x60a4c                                ; func_0x60a4c
}

- (void)布局时长随机:(double *)布局时长随机 宽:(double)宽 {   // 0x41bf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 布局时长随机:宽: 即可补全。
    // 0x041bf8  stp      d11, d10, [sp, #-0x60]!                 
    // 0x041bfc  stp      d9, d8, [sp, #0x10]                     
    // 0x041c00  stp      x24, x23, [sp, #0x20]                   
    // 0x041c04  stp      x22, x21, [sp, #0x30]                   
    // 0x041c08  stp      x20, x19, [sp, #0x40]                   
    // 0x041c0c  stp      x29, x30, [sp, #0x50]                   
    // 0x041c10  add      x29, sp, #0x50                          
    // 0x041c14  fmov     d8, d0                                  
    // 0x041c18  mov      x19, x2                                 
    // 0x041c1c  mov      x20, x0                                 
    // 0x041c20  bl       #0x70d80                                ; [x0 含时长字段] x2, x3, x4, x5, x6, x7
    // 0x041c24  cbz      w0, #0x41d74                            
    // 0x041c28  mov      x0, x20                                 
    // 0x041c2c  bl       #0x72280                                ; [x0 时长随机段] x2, x3, x4, x5, x6, x7
    // 0x041c30  mov      x29, x29                                
    // 0x041c34  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041c38  bl       #0x60c20                                ; func_0x60c20
    // 0x041c3c  cbz      x21, #0x41d74                           
    // 0x041c40  ldr      d9, [x19]                               
    // 0x041c44  fmov     d0, #-28.00000000                       
    // 0x041c48  fadd     d8, d8, d0                              
    // 0x041c4c  mov      x0, x20                                 
    // 0x041c50  bl       #0x72280                                ; [x0 时长随机段] x2, x3, x4, x5, x6, x7
    // 0x041c54  mov      x29, x29                                
}

- (double)面板附加高度 {   // 0x41d7c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板附加高度 即可补全。
    // 0x041d7c  fmov     d0, xzr                                 
    // 0x041d80  ret                                              
}

- (id)内容区域 {   // 0x41d84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 内容区域 即可补全。
    // 0x041d84  stp      x20, x19, [sp, #-0x20]!                 
    // 0x041d88  stp      x29, x30, [sp, #0x10]                   
    // 0x041d8c  add      x29, sp, #0x10                          
    // 0x041d90  mov      x20, x0                                 
    // 0x041d94  bl       #0x70260                                ; [x0 内容滚动] x2, x3, x4, x5, x6, x7
    // 0x041d98  mov      x29, x29                                
    // 0x041d9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041da0  mov      x19, x0                                 
    // 0x041da4  cbz      x0, #0x41db0                            
    // 0x041da8  bl       #0x60e80                                ; func_0x60e80
    // 0x041dac  b        #0x41dc0                                
    // 0x041db0  mov      x0, x20                                 
    // 0x041db4  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x041db8  mov      x29, x29                                
    // 0x041dbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041dc0  mov      x20, x0                                 
    // 0x041dc4  bl       #0x601b8                                ; func_0x601b8
    // 0x041dc8  mov      x0, x20                                 
    // 0x041dcc  ldp      x29, x30, [sp, #0x10]                   
    // 0x041dd0  b        #0x602f8                                ; func_0x602f8
}

- (double)面板把手栏高 {   // 0x41dd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板把手栏高 即可补全。
    // 0x041dd4  fmov     d0, #30.00000000                        
    // 0x041dd8  ret                                              
}

- (double)面板最小化总高 {   // 0x41ddc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板最小化总高 即可补全。
    // 0x041ddc  stp      x29, x30, [sp, #-0x10]!                 
    // 0x041de0  mov      x29, sp                                 
    // 0x041de4  bl       #0x74920                                ; [x0 面板把手栏高] x2, x3, x4, x5, x6, x7
    // 0x041de8  fmov     d1, #4.00000000                         
    // 0x041dec  fadd     d0, d0, d1                              
    // 0x041df0  mov      x8, #0x4042000000000000                 
    // 0x041df4  fmov     d1, x8                                  
    // 0x041df8  fadd     d0, d0, d1                              
    // 0x041dfc  fmov     d1, #12.00000000                        
    // 0x041e00  fadd     d0, d0, d1                              
    // 0x041e04  ldp      x29, x30, [sp], #0x10                   
    // 0x041e08  ret                                              
}

- (double)面板行区起点 {   // 0x41e0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板行区起点 即可补全。
    // 0x041e0c  stp      x29, x30, [sp, #-0x10]!                 
    // 0x041e10  mov      x29, sp                                 
    // 0x041e14  bl       #0x74920                                ; [x0 面板把手栏高] x2, x3, x4, x5, x6, x7
    // 0x041e18  fmov     d1, #10.00000000                        
    // 0x041e1c  fadd     d0, d0, d1                              
    // 0x041e20  ldp      x29, x30, [sp], #0x10                   
    // 0x041e24  ret                                              
}

- (unsigned long long)可见参数行数 {   // 0x41e28
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 可见参数行数 即可补全。
    // 0x041e28  sub      sp, sp, #0x110                          
    // 0x041e2c  stp      x24, x23, [sp, #0xd0]                   
    // 0x041e30  stp      x22, x21, [sp, #0xe0]                   
    // 0x041e34  stp      x20, x19, [sp, #0xf0]                   
    // 0x041e38  stp      x29, x30, [sp, #0x100]                  
    // 0x041e3c  add      x29, sp, #0x100                         
    // 0x041e40  adrp     x8, #0x8c000                            
    // 0x041e44  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x041e48  ldr      x8, [x8]                                
    // 0x041e4c  stur     x8, [x29, #-0x38]                       
    // 0x041e50  movi     v0.16b, #0                              
    // 0x041e54  stp      q0, q0, [sp]                            
    // 0x041e58  stp      q0, q0, [sp, #0x20]                     
    // 0x041e5c  bl       #0x73600                                ; [x0 行列表] x2, x3, x4, x5, x6, x7
    // 0x041e60  mov      x29, x29                                
    // 0x041e64  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x041e68  mov      x19, x0                                 
    // 0x041e6c  mov      x2, sp                                  
    // 0x041e70  add      x3, sp, #0x48                           
    // 0x041e74  bl       #0x6020c                                ; func_0x6020c
    // 0x041e78  cbz      x0, #0x41ed8                            
    // 0x041e7c  mov      x21, x0                                 
    // 0x041e80  mov      x20, #0                                 
    // 0x041e84  ldr      x8, [sp, #0x10]                         
}

- (double)面板行区高 {   // 0x41f18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板行区高 即可补全。
    // 0x041f18  stp      d9, d8, [sp, #-0x30]!                   
    // 0x041f1c  stp      x20, x19, [sp, #0x10]                   
    // 0x041f20  stp      x29, x30, [sp, #0x20]                   
    // 0x041f24  add      x29, sp, #0x20                          
    // 0x041f28  mov      x19, x0                                 
    // 0x041f2c  bl       #0x74980                                ; [x0 面板行区起点] x2, x3, x4, x5, x6, x7
    // 0x041f30  fmov     d8, d0                                  
    // 0x041f34  bl       #0x615fc                                ; func_0x615fc
    // 0x041f38  bl       #0x60cd8                                ; func_0x60cd8
    // 0x041f3c  bl       #0x70c40                                ; [x0 可见参数行数] x2, x3, x4, x5, x6, x7
    // 0x041f40  add      x8, x0, x0, lsl #4                      
    // 0x041f44  lsl      x8, x8, #1                              
    // 0x041f48  ucvtf    d0, x8                                  
    // 0x041f4c  fadd     d0, d8, d0                              
    // 0x041f50  ldp      x29, x30, [sp, #0x20]                   
    // 0x041f54  ldp      x20, x19, [sp, #0x10]                   
    // 0x041f58  ldp      d9, d8, [sp], #0x30                     
    // 0x041f5c  ret                                              
}

- (double)面板名称行高 {   // 0x41f60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板名称行高 即可补全。
    // 0x041f60  mov      x8, #0x4041000000000000                 
    // 0x041f64  fmov     d0, x8                                  
    // 0x041f68  ret                                              
}

- (void)布局参数区 {   // 0x41f6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 布局参数区 即可补全。
    // 0x041f6c  mov      x1, x30                                 
    // 0x041f70  bl       #0x606f8                                ; func_0x606f8
    // 0x041f74  mov      x30, x1                                 
    // 0x041f78  stp      x29, x30, [sp, #0x90]                   
    // 0x041f7c  add      x29, sp, #0x90                          
    // 0x041f80  sub      sp, sp, #0x270                          
    // 0x041f84  mov      x19, x0                                 
    // 0x041f88  adrp     x8, #0x8c000                            
    // 0x041f8c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x041f90  ldr      x8, [x8]                                
    // 0x041f94  stur     x8, [x29, #-0xa0]                       
    // 0x041f98  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x041f9c  fmov     d9, #-24.00000000                       
    // 0x041fa0  fadd     d0, d2, d9                              
    // 0x041fa4  adrp     x8, #0x7c000                            
    // 0x041fa8  ldr      d1, [x8, #0x870]                        ; ptr_0x7c870
    // 0x041fac  fminnm   d8, d0, d1                              
    // 0x041fb0  bl       #0x60238                                ; func_0x60238
    // 0x041fb4  adrp     x8, #0x7c000                            
    // 0x041fb8  ldr      d0, [x8, #0x878]                        ; ptr_0x7c878
    // 0x041fbc  fcmp     d8, d0                                  
    // 0x041fc0  cset     w8, gt                                  
    // 0x041fc4  tst      w0, w8                                  
    // 0x041fc8  fcsel    d8, d0, d8, ne                          
}

- (void)切换最小化 {   // 0x42fe4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 切换最小化 即可补全。
    // 0x042fe4  stp      d9, d8, [sp, #-0x30]!                   
    // 0x042fe8  stp      x20, x19, [sp, #0x10]                   
    // 0x042fec  stp      x29, x30, [sp, #0x20]                   
    // 0x042ff0  add      x29, sp, #0x20                          
    // 0x042ff4  mov      x19, x0                                 
    // 0x042ff8  bl       #0x725c0                                ; [x0 最小化] x2, x3, x4, x5, x6, x7
    // 0x042ffc  eor      w2, w0, #1                              
    // 0x043000  mov      x0, x19                                 
    // 0x043004  bl       #0x6e020                                ; [x0 set最小化:] x2, x3, x4, x5, x6, x7
    // 0x043008  mov      x0, x19                                 
    // 0x04300c  bl       #0x748e0                                ; [x0 面板位置已重定] x2, x3, x4, x5, x6, x7
    // 0x043010  tbnz     w0, #0, #0x43074                        
    // 0x043014  bl       #0x60d28                                ; func_0x60d28
    // 0x043018  fmov     d0, #-24.00000000                       
    // 0x04301c  fadd     d0, d2, d0                              
    // 0x043020  adrp     x8, #0x7c000                            
    // 0x043024  ldr      d1, [x8, #0x870]                        ; ptr_0x7c870
    // 0x043028  fminnm   d8, d0, d1                              
    // 0x04302c  fmov     d0, #0.50000000                         
    // 0x043030  fmul     d9, d8, d0                              
    // 0x043034  bl       #0x60d28                                ; func_0x60d28
    // 0x043038  adrp     x8, #0x7c000                            
    // 0x04303c  ldr      d0, [x8, #0x878]                        ; ptr_0x7c878
    // 0x043040  fcmp     d8, d0                                  
}

- (void)拖动面板:(id)拖动面板 {   // 0x43090
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 拖动面板: 即可补全。
    // 0x043090  sub      sp, sp, #0x90                           
    // 0x043094  stp      d15, d14, [sp, #0x20]                   
    // 0x043098  stp      d13, d12, [sp, #0x30]                   
    // 0x04309c  stp      d11, d10, [sp, #0x40]                   
    // 0x0430a0  stp      d9, d8, [sp, #0x50]                     
    // 0x0430a4  stp      x22, x21, [sp, #0x60]                   
    // 0x0430a8  stp      x20, x19, [sp, #0x70]                   
    // 0x0430ac  stp      x29, x30, [sp, #0x80]                   
    // 0x0430b0  add      x29, sp, #0x80                          
    // 0x0430b4  mov      x19, x0                                 
    // 0x0430b8  bl       #0x60364                                ; func_0x60364
    // 0x0430bc  mov      x20, x0                                 
    // 0x0430c0  bl       #0x6f6a0                                ; [x0 state] x2, x3, x4, x5, x6, x7
    // 0x0430c4  cmp      x0, #1                                  
    // 0x0430c8  b.ne     #0x430f0                                
    // 0x0430cc  mov      x0, x19                                 
    // 0x0430d0  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x0430d4  mov      x29, x29                                
    // 0x0430d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0430dc  mov      x21, x0                                 
    // 0x0430e0  bl       #0x6a3e0                                ; [x0 center] x2, x3, x4, x5, x6, x7
    // 0x0430e4  mov      x0, x19                                 
    // 0x0430e8  bl       #0x6f4a0                                ; [x0 set面板中心自定:] x2, x3, x4, x5, x6, x7
    // 0x0430ec  bl       #0x6018c                                ; func_0x6018c
}

- (void)layoutSubviews {   // 0x43240
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 layoutSubviews 即可补全。
    // 0x043240  sub      sp, sp, #0x30                           
    // 0x043244  stp      x20, x19, [sp, #0x10]                   
    // 0x043248  stp      x29, x30, [sp, #0x20]                   
    // 0x04324c  add      x29, sp, #0x20                          
    // 0x043250  mov      x19, x0                                 
    // 0x043254  adrp     x8, #0xad000                            
    // 0x043258  ldr      x8, [x8, #0x548]                        ; class(动作选择视图)
    // 0x04325c  stp      x0, x8, [sp]                            
    // 0x043260  adrp     x8, #0xac000                            
    // 0x043264  ldr      x1, [x8, #0xd30]                        ; SEL("layoutSubviews")
    // 0x043268  bl       #0x60a00                                ; func_0x60a00
    // 0x04326c  adrp     x8, #0xad000                            
    // 0x043270  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x043274  bl       #0x71420                                ; [class(CQOverlay) 屏幕区域] x2, x3, x4, x5, x6, x7
    // 0x043278  fmov     d4, #1.00000000                         
    // 0x04327c  fcmp     d2, d4                                  
    // 0x043280  fccmp    d3, d4, #4, gt                          
    // 0x043284  b.le     #0x43290                                
    // 0x043288  mov      x0, x19                                 
    // 0x04328c  bl       #0x6c2a0                                ; [x0 setFrame:] x2, x3, x4, x5, x6, x7
    // 0x043290  bl       #0x60e88                                ; func_0x60e88
    // 0x043294  bl       #0x622a8                                ; func_0x622a8
    // 0x043298  ldp      x29, x30, [sp, #0x20]                   
    // 0x04329c  b        #0x60ccc                                ; func_0x60ccc
}

- (void)取消 {   // 0x432a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 取消 即可补全。
    // 0x0432a0  b        #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
}

- (void)确定 {   // 0x432a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 确定 即可补全。
    // 0x0432a4  stp      x24, x23, [sp, #-0x40]!                 
    // 0x0432a8  stp      x22, x21, [sp, #0x10]                   
    // 0x0432ac  stp      x20, x19, [sp, #0x20]                   
    // 0x0432b0  stp      x29, x30, [sp, #0x30]                   
    // 0x0432b4  add      x29, sp, #0x30                          
    // 0x0432b8  mov      x19, x0                                 
    // 0x0432bc  bl       #0x70d40                                ; [x0 名称输入框] x2, x3, x4, x5, x6, x7
    // 0x0432c0  mov      x29, x29                                
    // 0x0432c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0432c8  mov      x21, x0                                 
    // 0x0432cc  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x0432d0  mov      x29, x29                                
    // 0x0432d4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0432d8  mov      x22, x0                                 
    // 0x0432dc  adrp     x8, #0xad000                            
    // 0x0432e0  ldr      x0, [x8, #0xb8]                         ; class(?0x0)
    // 0x0432e4  bl       #0x6fd80                                ; [class(?0x0) whitespaceAndNewlineCharacterSet] x2, x3, x4, x5, x6, x7
    // 0x0432e8  mov      x29, x29                                
    // 0x0432ec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0432f0  bl       #0x60de4                                ; func_0x60de4
    // 0x0432f4  bl       #0x6f7e0                                ; [class(?0x0) stringByTrimmingCharactersInSet:] x2, x3, x4, x5, x6, x7
    // 0x0432f8  mov      x29, x29                                
    // 0x0432fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x043300  mov      x20, x0                                 
}

- (void)名称回车 {   // 0x434bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 名称回车 即可补全。
    // 0x0434bc  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0434c0  stp      x29, x30, [sp, #0x10]                   
    // 0x0434c4  add      x29, sp, #0x10                          
    // 0x0434c8  bl       #0x70d40                                ; [x0 名称输入框] x2, x3, x4, x5, x6, x7
    // 0x0434cc  mov      x29, x29                                
    // 0x0434d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0434d4  bl       #0x61280                                ; func_0x61280
    // 0x0434d8  mov      x0, x19                                 
    // 0x0434dc  ldp      x29, x30, [sp, #0x10]                   
    // 0x0434e0  b        #0x60270                                ; func_0x60270
}

- (void)显示 {   // 0x434e4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 显示 即可补全。
    // 0x0434e4  sub      sp, sp, #0x130                          
    // 0x0434e8  stp      x28, x27, [sp, #0xd0]                   
    // 0x0434ec  stp      x26, x25, [sp, #0xe0]                   
    // 0x0434f0  stp      x24, x23, [sp, #0xf0]                   
    // 0x0434f4  stp      x22, x21, [sp, #0x100]                  
    // 0x0434f8  stp      x20, x19, [sp, #0x110]                  
    // 0x0434fc  stp      x29, x30, [sp, #0x120]                  
    // 0x043500  add      x29, sp, #0x120                         
    // 0x043504  mov      x19, x0                                 
    // 0x043508  adrp     x8, #0x8c000                            
    // 0x04350c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x043510  ldr      x8, [x8]                                
    // 0x043514  stur     x8, [x29, #-0x58]                       
    // 0x043518  adrp     x24, #0xad000                           
    // 0x04351c  ldr      x0, [x24, #0x90]                        ; class(CQOverlay)
    // 0x043520  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x043524  mov      x29, x29                                
    // 0x043528  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04352c  mov      x21, x0                                 
    // 0x043530  bl       #0x72820                                ; [class(CQOverlay) 根视图] x2, x3, x4, x5, x6, x7
    // 0x043534  mov      x29, x29                                
    // 0x043538  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04353c  mov      x20, x0                                 
    // 0x043540  bl       #0x6018c                                ; func_0x6018c
}

- (void)设置界面隐藏:(BOOL)设置界面隐藏 {   // 0x43668
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 设置界面隐藏: 即可补全。
    // 0x043668  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04366c  stp      x20, x19, [sp, #0x10]                   
    // 0x043670  stp      x29, x30, [sp, #0x20]                   
    // 0x043674  add      x29, sp, #0x20                          
    // 0x043678  mov      x20, x2                                 
    // 0x04367c  mov      x19, x0                                 
    // 0x043680  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x043684  mov      x29, x29                                
    // 0x043688  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04368c  bl       #0x6024c                                ; func_0x6024c
    // 0x043690  bl       #0x6018c                                ; func_0x6018c
    // 0x043694  mov      x0, x19                                 
    // 0x043698  tbz      w20, #0, #0x436bc                       
    // 0x04369c  bl       #0x727a0                                ; [x0 标记视图] x2, x3, x4, x5, x6, x7
    // 0x0436a0  mov      x29, x29                                
    // 0x0436a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0436a8  mov      x21, x0                                 
    // 0x0436ac  mov      w20, #1                                 
    // 0x0436b0  bl       #0x60620                                ; func_0x60620
    // 0x0436b4  bl       #0x6018c                                ; func_0x6018c
    // 0x0436b8  b        #0x436e8                                
    // 0x0436bc  bl       #0x72440                                ; [x0 显示标记] x2, x3, x4, x5, x6, x7
    // 0x0436c0  eor      w20, w0, #1                             
    // 0x0436c4  mov      x0, x19                                 
}

- (void)选跳转目标:(id)选跳转目标 {   // 0x4370c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 选跳转目标: 即可补全。
    // 0x04370c  stp      x28, x27, [sp, #-0x60]!                 
    // 0x043710  stp      x26, x25, [sp, #0x10]                   
    // 0x043714  stp      x24, x23, [sp, #0x20]                   
    // 0x043718  stp      x22, x21, [sp, #0x30]                   
    // 0x04371c  stp      x20, x19, [sp, #0x40]                   
    // 0x043720  stp      x29, x30, [sp, #0x50]                   
    // 0x043724  add      x29, sp, #0x50                          
    // 0x043728  sub      sp, sp, #0x650                          
    // 0x04372c  str      x0, [sp, #0x10]                         
    // 0x043730  adrp     x8, #0x8c000                            
    // 0x043734  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x043738  ldr      x8, [x8]                                
    // 0x04373c  stur     x8, [x29, #-0x68]                       
    // 0x043740  bl       #0x60364                                ; func_0x60364
    // 0x043744  str      x0, [sp, #8]                            
    // 0x043748  adrp     x26, #0xad000                           
    // 0x04374c  ldr      x0, [x26, #0xe8]                        ; class(CQStore)
    // 0x043750  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x043754  mov      x29, x29                                
    // 0x043758  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04375c  mov      x19, x0                                 
    // 0x043760  bl       #0x70700                                ; [class(CQStore) 动作列表] x2, x3, x4, x5, x6, x7
    // 0x043764  mov      x29, x29                                
    // 0x043768  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)摆放行:(id)摆放行 显:(BOOL)显 y:(double *)y 宽:(double)宽 {   // 0x44284
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 摆放行:显:y:宽: 即可补全。
    // 0x044284  stp      d9, d8, [sp, #-0x40]!                   
    // 0x044288  stp      x22, x21, [sp, #0x10]                   
    // 0x04428c  stp      x20, x19, [sp, #0x20]                   
    // 0x044290  stp      x29, x30, [sp, #0x30]                   
    // 0x044294  add      x29, sp, #0x30                          
    // 0x044298  fmov     d8, d0                                  
    // 0x04429c  mov      x19, x4                                 
    // 0x0442a0  mov      x21, x3                                 
    // 0x0442a4  mov      x22, x0                                 
    // 0x0442a8  bl       #0x60364                                ; func_0x60364
    // 0x0442ac  mov      x20, x0                                 
    // 0x0442b0  cbz      x0, #0x44310                            
    // 0x0442b4  mov      x0, x22                                 
    // 0x0442b8  bl       #0x725c0                                ; [x0 最小化] x2, x3, x4, x5, x6, x7
    // 0x0442bc  eor      w21, w21, #1                            
    // 0x0442c0  orr      w2, w0, w21                             
    // 0x0442c4  mov      x0, x20                                 
    // 0x0442c8  bl       #0x6c340                                ; [x0 setHidden:] x2, x3, x4, x5, x6, x7
    // 0x0442cc  tbnz     w21, #0, #0x44310                       
    // 0x0442d0  ldr      d1, [x19]                               
    // 0x0442d4  fmov     d0, #-28.00000000                       
    // 0x0442d8  fadd     d8, d8, d0                              
    // 0x0442dc  mov      x8, #0x4040000000000000                 
    // 0x0442e0  fmov     d3, x8                                  
}

- (id)完成回调 {   // 0x4431c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 完成回调 即可补全。
    // 0x04431c  adrp     x8, #0xad000                            
    // 0x044320  ldrsw    x8, [x8, #0xa98]                        
    // 0x044324  b        #0x601f8                                ; func_0x601f8
}

- (void)set完成回调:(id)set完成回调 {   // 0x44328
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set完成回调: 即可补全。
    // 0x044328  adrp     x8, #0xad000                            
    // 0x04432c  ldrsw    x3, [x8, #0xa98]                        
    // 0x044330  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)隐式归组回调 {   // 0x44334
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 隐式归组回调 即可补全。
    // 0x044334  adrp     x8, #0xad000                            
    // 0x044338  ldrsw    x8, [x8, #0xa9c]                        
    // 0x04433c  b        #0x601f8                                ; func_0x601f8
}

- (void)set隐式归组回调:(id)set隐式归组回调 {   // 0x44340
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set隐式归组回调: 即可补全。
    // 0x044340  adrp     x8, #0xad000                            
    // 0x044344  ldrsw    x3, [x8, #0xa9c]                        
    // 0x044348  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)标记视图 {   // 0x4434c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 标记视图 即可补全。
    // 0x04434c  adrp     x8, #0xad000                            
    // 0x044350  ldrsw    x8, [x8, #0xa88]                        
    // 0x044354  b        #0x601f8                                ; func_0x601f8
}

- (void)set标记视图:(id)set标记视图 {   // 0x44358
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set标记视图: 即可补全。
    // 0x044358  mov      x1, x2                                  
    // 0x04435c  adrp     x8, #0xad000                            
    // 0x044360  ldrsw    x8, [x8, #0xa88]                        
    // 0x044364  b        #0x60194                                ; func_0x60194
}

- (CGPoint)拖动偏移 {   // 0x44368
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 拖动偏移 即可补全。
    // 0x044368  adrp     x8, #0xad000                            
    // 0x04436c  ldrsw    x8, [x8, #0xaa0]                        
    // 0x044370  b        #0x620cc                                ; func_0x620cc
}

- (void)set拖动偏移:(CGPoint)set拖动偏移 {   // 0x44374
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set拖动偏移: 即可补全。
    // 0x044374  adrp     x8, #0xad000                            
    // 0x044378  ldrsw    x8, [x8, #0xaa0]                        
    // 0x04437c  b        #0x620c0                                ; func_0x620c0
}

- (id)时长随机段 {   // 0x44380
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 时长随机段 即可补全。
    // 0x044380  adrp     x8, #0xad000                            
    // 0x044384  ldrsw    x8, [x8, #0xaa4]                        
    // 0x044388  b        #0x601f8                                ; func_0x601f8
}

- (void)set时长随机段:(id)set时长随机段 {   // 0x4438c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set时长随机段: 即可补全。
    // 0x04438c  mov      x1, x2                                  
    // 0x044390  adrp     x8, #0xad000                            
    // 0x044394  ldrsw    x8, [x8, #0xaa4]                        
    // 0x044398  b        #0x60194                                ; func_0x60194
}

- (id)随机幅度行 {   // 0x4439c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 随机幅度行 即可补全。
    // 0x04439c  stp      x29, x30, [sp, #-0x10]!                 
    // 0x0443a0  mov      x29, sp                                 
    // 0x0443a4  adrp     x8, #0xad000                            
    // 0x0443a8  ldrsw    x8, [x8, #0xaa8]                        
    // 0x0443ac  bl       #0x60cac                                ; func_0x60cac
    // 0x0443b0  ldp      x29, x30, [sp], #0x10                   
    // 0x0443b4  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set随机幅度行:(id)set随机幅度行 {   // 0x443b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set随机幅度行: 即可补全。
    // 0x0443b8  mov      x1, x2                                  
    // 0x0443bc  adrp     x8, #0xad000                            
    // 0x0443c0  ldrsw    x8, [x8, #0xaa8]                        
    // 0x0443c4  b        #0x60324                                ; func_0x60324
}

- (id)面板 {   // 0x443c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板 即可补全。
    // 0x0443c8  adrp     x8, #0xad000                            
    // 0x0443cc  ldrsw    x8, [x8, #0xa90]                        
    // 0x0443d0  b        #0x601f8                                ; func_0x601f8
}

- (void)set面板:(id)set面板 {   // 0x443d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set面板: 即可补全。
    // 0x0443d4  mov      x1, x2                                  
    // 0x0443d8  adrp     x8, #0xad000                            
    // 0x0443dc  ldrsw    x8, [x8, #0xa90]                        
    // 0x0443e0  b        #0x60194                                ; func_0x60194
}

- (id)坐标标签 {   // 0x443e4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 坐标标签 即可补全。
    // 0x0443e4  adrp     x8, #0xad000                            
    // 0x0443e8  ldrsw    x8, [x8, #0xa8c]                        
    // 0x0443ec  b        #0x601f8                                ; func_0x601f8
}

- (void)set坐标标签:(id)set坐标标签 {   // 0x443f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set坐标标签: 即可补全。
    // 0x0443f0  mov      x1, x2                                  
    // 0x0443f4  adrp     x8, #0xad000                            
    // 0x0443f8  ldrsw    x8, [x8, #0xa8c]                        
    // 0x0443fc  b        #0x60194                                ; func_0x60194
}

- (id)行列表 {   // 0x44400
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 行列表 即可补全。
    // 0x044400  adrp     x8, #0xad000                            
    // 0x044404  ldrsw    x8, [x8, #0xa7c]                        
    // 0x044408  b        #0x601f8                                ; func_0x601f8
}

- (void)set行列表:(id)set行列表 {   // 0x4440c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set行列表: 即可补全。
    // 0x04440c  mov      x1, x2                                  
    // 0x044410  adrp     x8, #0xad000                            
    // 0x044414  ldrsw    x8, [x8, #0xa7c]                        
    // 0x044418  b        #0x60194                                ; func_0x60194
}

- (id)编辑动作 {   // 0x4441c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 编辑动作 即可补全。
    // 0x04441c  adrp     x8, #0xad000                            
    // 0x044420  ldrsw    x8, [x8, #0xa84]                        
    // 0x044424  b        #0x601f8                                ; func_0x601f8
}

- (void)set编辑动作:(id)set编辑动作 {   // 0x44428
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set编辑动作: 即可补全。
    // 0x044428  mov      x1, x2                                  
    // 0x04442c  adrp     x8, #0xad000                            
    // 0x044430  ldrsw    x8, [x8, #0xa84]                        
    // 0x044434  b        #0x60194                                ; func_0x60194
}

- (id)原动作 {   // 0x44438
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 原动作 即可补全。
    // 0x044438  adrp     x8, #0xad000                            
    // 0x04443c  ldrsw    x8, [x8, #0xa80]                        
    // 0x044440  b        #0x601f8                                ; func_0x601f8
}

- (void)set原动作:(id)set原动作 {   // 0x44444
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set原动作: 即可补全。
    // 0x044444  mov      x1, x2                                  
    // 0x044448  adrp     x8, #0xad000                            
    // 0x04444c  ldrsw    x8, [x8, #0xa80]                        
    // 0x044450  b        #0x60194                                ; func_0x60194
}

- (id)把手栏 {   // 0x44454
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 把手栏 即可补全。
    // 0x044454  adrp     x8, #0xad000                            
    // 0x044458  ldrsw    x8, [x8, #0xaac]                        
    // 0x04445c  b        #0x601f8                                ; func_0x601f8
}

- (void)set把手栏:(id)set把手栏 {   // 0x44460
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set把手栏: 即可补全。
    // 0x044460  mov      x1, x2                                  
    // 0x044464  adrp     x8, #0xad000                            
    // 0x044468  ldrsw    x8, [x8, #0xaac]                        
    // 0x04446c  b        #0x60194                                ; func_0x60194
}

- (id)最小化按钮 {   // 0x44470
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 最小化按钮 即可补全。
    // 0x044470  adrp     x8, #0xad000                            
    // 0x044474  ldrsw    x8, [x8, #0xab0]                        
    // 0x044478  b        #0x601f8                                ; func_0x601f8
}

- (void)set最小化按钮:(id)set最小化按钮 {   // 0x4447c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set最小化按钮: 即可补全。
    // 0x04447c  mov      x1, x2                                  
    // 0x044480  adrp     x8, #0xad000                            
    // 0x044484  ldrsw    x8, [x8, #0xab0]                        
    // 0x044488  b        #0x60194                                ; func_0x60194
}

- (BOOL)最小化 {   // 0x4448c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 最小化 即可补全。
    // 0x04448c  adrp     x8, #0xad000                            
    // 0x044490  ldrsw    x8, [x8, #0xab4]                        
    // 0x044494  b        #0x619f8                                ; func_0x619f8
}

- (void)set最小化:(BOOL)set最小化 {   // 0x44498
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set最小化: 即可补全。
    // 0x044498  adrp     x8, #0xad000                            
    // 0x04449c  ldrsw    x8, [x8, #0xab4]                        
    // 0x0444a0  b        #0x619f0                                ; func_0x619f0
}

- (BOOL)面板位置已重定 {   // 0x444a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板位置已重定 即可补全。
    // 0x0444a4  adrp     x8, #0xad000                            
    // 0x0444a8  ldrsw    x8, [x8, #0xab8]                        
    // 0x0444ac  b        #0x619f8                                ; func_0x619f8
}

- (void)set面板位置已重定:(BOOL)set面板位置已重定 {   // 0x444b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set面板位置已重定: 即可补全。
    // 0x0444b0  adrp     x8, #0xad000                            
    // 0x0444b4  ldrsw    x8, [x8, #0xab8]                        
    // 0x0444b8  b        #0x619f0                                ; func_0x619f0
}

- (CGPoint)面板中心自定 {   // 0x444bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 面板中心自定 即可补全。
    // 0x0444bc  adrp     x8, #0xad000                            
    // 0x0444c0  ldrsw    x8, [x8, #0xabc]                        
    // 0x0444c4  b        #0x620cc                                ; func_0x620cc
}

- (void)set面板中心自定:(CGPoint)set面板中心自定 {   // 0x444c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set面板中心自定: 即可补全。
    // 0x0444c8  adrp     x8, #0xad000                            
    // 0x0444cc  ldrsw    x8, [x8, #0xabc]                        
    // 0x0444d0  b        #0x620c0                                ; func_0x620c0
}

- (id)名称输入框 {   // 0x444d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 名称输入框 即可补全。
    // 0x0444d4  adrp     x8, #0xad000                            
    // 0x0444d8  ldrsw    x8, [x8, #0xa94]                        
    // 0x0444dc  b        #0x601f8                                ; func_0x601f8
}

- (void)set名称输入框:(id)set名称输入框 {   // 0x444e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set名称输入框: 即可补全。
    // 0x0444e0  mov      x1, x2                                  
    // 0x0444e4  adrp     x8, #0xad000                            
    // 0x0444e8  ldrsw    x8, [x8, #0xa94]                        
    // 0x0444ec  b        #0x60194                                ; func_0x60194
}

- (id)内容滚动 {   // 0x444f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 内容滚动 即可补全。
    // 0x0444f0  adrp     x8, #0xad000                            
    // 0x0444f4  ldrsw    x8, [x8, #0xac0]                        
    // 0x0444f8  b        #0x601f8                                ; func_0x601f8
}

- (void)set内容滚动:(id)set内容滚动 {   // 0x444fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set内容滚动: 即可补全。
    // 0x0444fc  mov      x1, x2                                  
    // 0x044500  adrp     x8, #0xad000                            
    // 0x044504  ldrsw    x8, [x8, #0xac0]                        
    // 0x044508  b        #0x60194                                ; func_0x60194
}

- (BOOL)内容已搬运 {   // 0x4450c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 内容已搬运 即可补全。
    // 0x04450c  adrp     x8, #0xad000                            
    // 0x044510  ldrsw    x8, [x8, #0xac4]                        
    // 0x044514  b        #0x619f8                                ; func_0x619f8
}

- (void)set内容已搬运:(BOOL)set内容已搬运 {   // 0x44518
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作选择视图 set内容已搬运: 即可补全。
    // 0x044518  adrp     x8, #0xad000                            
    // 0x04451c  ldrsw    x8, [x8, #0xac4]                        
    // 0x044520  b        #0x619f0                                ; func_0x619f0
}

@end