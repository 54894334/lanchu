//
//  识色选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 识色选择视图

- (BOOL)显示标记 {   // 0x550b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 显示标记 即可补全。
    // 0x0550b4  b        #0x609e0                                ; func_0x609e0
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x550b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 hitTest:withEvent: 即可补全。
    // 0x0550b8  sub      sp, sp, #0x50                           
    // 0x0550bc  stp      d9, d8, [sp, #0x10]                     
    // 0x0550c0  stp      x22, x21, [sp, #0x20]                   
    // 0x0550c4  stp      x20, x19, [sp, #0x30]                   
    // 0x0550c8  stp      x29, x30, [sp, #0x40]                   
    // 0x0550cc  add      x29, sp, #0x40                          
    // 0x0550d0  fmov     d8, d1                                  
    // 0x0550d4  fmov     d9, d0                                  
    // 0x0550d8  mov      x21, x0                                 
    // 0x0550dc  bl       #0x60364                                ; func_0x60364
    // 0x0550e0  bl       #0x615b4                                ; func_0x615b4
    // 0x0550e4  bl       #0x74220                                ; [x0 路径编辑器] x2, x3, x4, x5, x6, x7
    // 0x0550e8  mov      x29, x29                                
    // 0x0550ec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0550f0  mov      x22, x0                                 
    // 0x0550f4  bl       #0x6082c                                ; func_0x6082c
    // 0x0550f8  bl       #0x70e80                                ; [x0 命中测试:事件:] x2, x3, x4, x5, x6, x7
    // 0x0550fc  mov      x29, x29                                
    // 0x055100  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x055104  mov      x20, x0                                 
    // 0x055108  bl       #0x6019c                                ; func_0x6019c
    // 0x05510c  cbz      x20, #0x55118                           
    // 0x055110  bl       #0x60bfc                                ; func_0x60bfc
    // 0x055114  b        #0x55140                                
}

- (void)同步起点参考 {   // 0x55158
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 同步起点参考 即可补全。
    // 0x055158  mov      x2, x30                                 
    // 0x05515c  bl       #0x608e4                                ; func_0x608e4
    // 0x055160  mov      x30, x2                                 
    // 0x055164  stp      x29, x30, [sp, #0x50]                   
    // 0x055168  add      x29, sp, #0x50                          
    // 0x05516c  mov      x19, x0                                 
    // 0x055170  bl       #0x74220                                ; [x0 路径编辑器] x30, x3, x4, x5, x6, x7
    // 0x055174  mov      x29, x29                                
    // 0x055178  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05517c  bl       #0x6232c                                ; func_0x6232c
    // 0x055180  mov      x21, x0                                 
    // 0x055184  bl       #0x60184                                ; func_0x60184
    // 0x055188  tbz      w21, #0, #0x55194                       
    // 0x05518c  ldp      x29, x30, [sp, #0x50]                   
    // 0x055190  b        #0x60a1c                                ; func_0x60a1c
    // 0x055194  mov      x0, x19                                 
    // 0x055198  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x05519c  mov      x29, x29                                
    // 0x0551a0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0551a4  bl       #0x60c64                                ; func_0x60c64
    // 0x0551a8  fmov     d10, d0                                 
    // 0x0551ac  fmov     d9, d1                                  
    // 0x0551b0  fmov     d12, d2                                 
    // 0x0551b4  fmov     d11, d3                                 
}

- (id)新建标记视图 {   // 0x55200
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 新建标记视图 即可补全。
    // 0x055200  stp      x20, x19, [sp, #-0x20]!                 
    // 0x055204  stp      x29, x30, [sp, #0x10]                   
    // 0x055208  add      x29, sp, #0x10                          
    // 0x05520c  adrp     x8, #0xad000                            
    // 0x055210  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x055214  bl       #0x68f5c                                ; _objc_alloc
    // 0x055218  adrp     x8, #0x8c000                            
    // 0x05521c  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x055220  bl       #0x6067c                                ; func_0x6067c
    // 0x055224  mov      x19, x0                                 
    // 0x055228  bl       #0x60620                                ; func_0x60620
    // 0x05522c  mov      x0, x19                                 
    // 0x055230  bl       #0x60424                                ; func_0x60424
    // 0x055234  mov      x0, x19                                 
    // 0x055238  ldp      x29, x30, [sp, #0x10]                   
    // 0x05523c  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x55240
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 构建参数 即可补全。
    // 0x055240  mov      x2, x30                                 
    // 0x055244  bl       #0x606f8                                ; func_0x606f8
    // 0x055248  mov      x30, x2                                 
    // 0x05524c  stp      x29, x30, [sp, #0x90]                   
    // 0x055250  add      x29, sp, #0x90                          
    // 0x055254  sub      sp, sp, #0x2c0                          
    // 0x055258  mov      x22, x0                                 
    // 0x05525c  adrp     x8, #0x8c000                            
    // 0x055260  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x055264  ldr      x8, [x8]                                
    // 0x055268  stur     x8, [x29, #-0xa0]                       
    // 0x05526c  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x055270  mov      x29, x29                                
    // 0x055274  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x055278  mov      x19, x0                                 
    // 0x05527c  mov      w2, #0xd                                
    // 0x055280  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x055284  bl       #0x601b8                                ; func_0x601b8
    // 0x055288  sub      x0, x29, #0x100                         
    // 0x05528c  mov      x1, x22                                 
    // 0x055290  bl       #0x68fec                                ; _objc_initWeak
    // 0x055294  adrp     x8, #0x8c000                            
    // 0x055298  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05529c  str      x8, [sp, #0x228]                        
}

- (void)配段:(id)配段 {   // 0x56904
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 配段: 即可补全。
    // 0x056904  mov      x0, x30                                 
    // 0x056908  bl       #0x60afc                                ; func_0x60afc
    // 0x05690c  mov      x30, x0                                 
    // 0x056910  stp      x29, x30, [sp, #0xa0]                   
    // 0x056914  add      x29, sp, #0xa0                          
    // 0x056918  mov      x0, x2                                  
    // 0x05691c  adrp     x8, #0x8c000                            
    // 0x056920  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x056924  ldr      x8, [x8]                                
    // 0x056928  bl       #0x615e8                                ; func_0x615e8
    // 0x05692c  mov      x19, x0                                 
    // 0x056930  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x056934  mov      x29, x29                                
    // 0x056938  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05693c  bl       #0x60300                                ; func_0x60300
    // 0x056940  bl       #0x60184                                ; func_0x60184
    // 0x056944  bl       #0x20138                                ; _CQThemeNeon
    // 0x056948  mov      x29, x29                                
    // 0x05694c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x056950  bl       #0x608c4                                ; func_0x608c4
    // 0x056954  bl       #0x60184                                ; func_0x60184
    // 0x056958  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x05695c  mov      x29, x29                                
    // 0x056960  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (double)面板附加高度 {   // 0x56a4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 面板附加高度 即可补全。
    // 0x056a4c  stp      d9, d8, [sp, #-0x50]!                   
    // 0x056a50  stp      x24, x23, [sp, #0x10]                   
    // 0x056a54  stp      x22, x21, [sp, #0x20]                   
    // 0x056a58  stp      x20, x19, [sp, #0x30]                   
    // 0x056a5c  stp      x29, x30, [sp, #0x40]                   
    // 0x056a60  add      x29, sp, #0x40                          
    // 0x056a64  mov      x19, x0                                 
    // 0x056a68  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x056a6c  mov      x29, x29                                
    // 0x056a70  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x056a74  bl       #0x6161c                                ; func_0x6161c
    // 0x056a78  cmp      x0, #1                                  
    // 0x056a7c  cset     w21, eq                                 
    // 0x056a80  bl       #0x60184                                ; func_0x60184
    // 0x056a84  adrp     x8, #0x7c000                            
    // 0x056a88  add      x8, x8, #0x960                          
    // 0x056a8c  ldr      d8, [x8, w21, uxtw #3]                  
    // 0x056a90  mov      x0, x19                                 
    // 0x056a94  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x056a98  mov      x29, x29                                
    // 0x056a9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x056aa0  bl       #0x6161c                                ; func_0x6161c
    // 0x056aa4  mov      x21, x0                                 
    // 0x056aa8  bl       #0x60184                                ; func_0x60184
}

- (void)布局参数区 {   // 0x56b70
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 布局参数区 即可补全。
    // 0x056b70  mov      x1, x30                                 
    // 0x056b74  bl       #0x61754                                ; func_0x61754
    // 0x056b78  mov      x30, x1                                 
    // 0x056b7c  stp      x29, x30, [sp, #0xa0]                   
    // 0x056b80  add      x29, sp, #0xa0                          
    // 0x056b84  mov      x19, x0                                 
    // 0x056b88  adrp     x8, #0xad000                            
    // 0x056b8c  ldr      x8, [x8, #0x590]                        ; class(识色选择视图)
    // 0x056b90  stp      x0, x8, [sp, #0x10]                     
    // 0x056b94  adrp     x8, #0xab000                            
    // 0x056b98  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x056b9c  bl       #0x61664                                ; func_0x61664
    // 0x056ba0  mov      x0, x19                                 
    // 0x056ba4  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x056ba8  mov      x29, x29                                
    // 0x056bac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x056bb0  bl       #0x60850                                ; func_0x60850
    // 0x056bb4  fmov     d9, d2                                  
    // 0x056bb8  bl       #0x60184                                ; func_0x60184
    // 0x056bbc  bl       #0x60c4c                                ; func_0x60c4c
    // 0x056bc0  bl       #0x60db4                                ; func_0x60db4
    // 0x056bc4  bl       #0x728c0                                ; [x0 模式段] x2, x3, x4, x5, x6, x7
    // 0x056bc8  mov      x29, x29                                
    // 0x056bcc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)新建按钮 {   // 0x571f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 新建按钮 即可补全。
    // 0x0571f0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0571f4  stp      x20, x19, [sp, #0x10]                   
    // 0x0571f8  stp      x29, x30, [sp, #0x20]                   
    // 0x0571fc  add      x29, sp, #0x20                          
    // 0x057200  adrp     x8, #0xad000                            
    // 0x057204  ldr      x0, [x8, #0x2e8]                        ; class(?0x0)
    // 0x057208  mov      w2, #1                                  
    // 0x05720c  bl       #0x6a380                                ; [class(?0x0) buttonWithType:] x2, x3, x4, x5, x6, x7
    // 0x057210  mov      x29, x29                                
    // 0x057214  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057218  mov      x19, x0                                 
    // 0x05721c  adrp     x8, #0xad000                            
    // 0x057220  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x057224  fmov     d0, #13.00000000                        
    // 0x057228  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05722c  mov      x29, x29                                
    // 0x057230  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057234  bl       #0x60290                                ; func_0x60290
    // 0x057238  bl       #0x6fb80                                ; [class(?0x0) titleLabel] x2, x3, x4, x5, x6, x7
    // 0x05723c  mov      x29, x29                                
    // 0x057240  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057244  bl       #0x608b8                                ; func_0x608b8
    // 0x057248  bl       #0x6018c                                ; func_0x6018c
    // 0x05724c  bl       #0x60184                                ; func_0x60184
}

- (void)模式段变化:(id)模式段变化 {   // 0x572ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 模式段变化: 即可补全。
    // 0x0572ac  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0572b0  stp      x29, x30, [sp, #0x10]                   
    // 0x0572b4  add      x29, sp, #0x10                          
    // 0x0572b8  bl       #0x6029c                                ; func_0x6029c
    // 0x0572bc  bl       #0x60654                                ; func_0x60654
    // 0x0572c0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0572c4  mov      x29, x29                                
    // 0x0572c8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0572cc  bl       #0x61274                                ; func_0x61274
    // 0x0572d0  bl       #0x6ee20                                ; [x0 set识色模式:] x2, x3, x4, x5, x6, x7
    // 0x0572d4  mov      x0, x19                                 
    // 0x0572d8  ldp      x29, x30, [sp, #0x10]                   
    // 0x0572dc  b        #0x60270                                ; func_0x60270
}

- (void)成功段变化:(id)成功段变化 {   // 0x572e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功段变化: 即可补全。
    // 0x0572e0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0572e4  stp      x20, x19, [sp, #0x10]                   
    // 0x0572e8  stp      x29, x30, [sp, #0x20]                   
    // 0x0572ec  add      x29, sp, #0x20                          
    // 0x0572f0  bl       #0x6029c                                ; func_0x6029c
    // 0x0572f4  bl       #0x60290                                ; func_0x60290
    // 0x0572f8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0572fc  mov      x29, x29                                
    // 0x057300  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057304  bl       #0x60498                                ; func_0x60498
    // 0x057308  bl       #0x6ee00                                ; [x0 set识色成功行为:] x2, x3, x4, x5, x6, x7
    // 0x05730c  bl       #0x6018c                                ; func_0x6018c
    // 0x057310  mov      x0, x19                                 
    // 0x057314  ldp      x29, x30, [sp, #0x20]                   
    // 0x057318  b        #0x60240                                ; func_0x60240
}

- (void)失败段变化:(id)失败段变化 {   // 0x5731c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 失败段变化: 即可补全。
    // 0x05731c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x057320  stp      x20, x19, [sp, #0x10]                   
    // 0x057324  stp      x29, x30, [sp, #0x20]                   
    // 0x057328  add      x29, sp, #0x20                          
    // 0x05732c  bl       #0x6029c                                ; func_0x6029c
    // 0x057330  bl       #0x60654                                ; func_0x60654
    // 0x057334  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x057338  mov      x29, x29                                
    // 0x05733c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057340  bl       #0x60498                                ; func_0x60498
    // 0x057344  bl       #0x6eda0                                ; [x0 set识色失败行为:] x2, x3, x4, x5, x6, x7
    // 0x057348  bl       #0x6018c                                ; func_0x6018c
    // 0x05734c  mov      x0, x19                                 
    // 0x057350  ldp      x29, x30, [sp, #0x20]                   
    // 0x057354  b        #0x60240                                ; func_0x60240
}

- (void)选择成功跳转 {   // 0x57358
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 选择成功跳转 即可补全。
    // 0x057358  sub      sp, sp, #0x40                           
    // 0x05735c  stp      x29, x30, [sp, #0x30]                   
    // 0x057360  add      x29, sp, #0x30                          
    // 0x057364  adrp     x8, #0x8c000                            
    // 0x057368  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05736c  str      x8, [sp, #8]                            
    // 0x057370  adrp     x8, #0x7b000                            
    // 0x057374  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x057378  adrp     x8, #0x57000                            
    // 0x05737c  add      x8, x8, #0x398                          
    // 0x057380  str      d0, [sp, #0x10]                         
    // 0x057384  adrp     x9, #0x8d000                            
    // 0x057388  add      x9, x9, #0x148                          
    // 0x05738c  bl       #0x605e4                                ; func_0x605e4
    // 0x057390  ldp      x29, x30, [sp, #0x30]                   
    // 0x057394  b        #0x60c74                                ; func_0x60c74
}

- (void)选择失败跳转 {   // 0x573d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 选择失败跳转 即可补全。
    // 0x0573d8  sub      sp, sp, #0x40                           
    // 0x0573dc  stp      x29, x30, [sp, #0x30]                   
    // 0x0573e0  add      x29, sp, #0x30                          
    // 0x0573e4  adrp     x8, #0x8c000                            
    // 0x0573e8  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x0573ec  str      x8, [sp, #8]                            
    // 0x0573f0  adrp     x8, #0x7b000                            
    // 0x0573f4  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x0573f8  adrp     x8, #0x57000                            
    // 0x0573fc  add      x8, x8, #0x418                          
    // 0x057400  str      d0, [sp, #0x10]                         
    // 0x057404  adrp     x9, #0x8d000                            
    // 0x057408  add      x9, x9, #0x148                          
    // 0x05740c  bl       #0x605e4                                ; func_0x605e4
    // 0x057410  ldp      x29, x30, [sp, #0x30]                   
    // 0x057414  b        #0x60c74                                ; func_0x60c74
}

- (void)等待段变化:(id)等待段变化 {   // 0x57458
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 等待段变化: 即可补全。
    // 0x057458  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05745c  stp      x20, x19, [sp, #0x10]                   
    // 0x057460  stp      x29, x30, [sp, #0x20]                   
    // 0x057464  add      x29, sp, #0x20                          
    // 0x057468  bl       #0x6029c                                ; func_0x6029c
    // 0x05746c  bl       #0x61834                                ; func_0x61834
    // 0x057470  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x057474  mov      x29, x29                                
    // 0x057478  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05747c  bl       #0x62194                                ; func_0x62194
    // 0x057480  bl       #0x6018c                                ; func_0x6018c
    // 0x057484  mov      x0, x19                                 
    // 0x057488  ldp      x29, x30, [sp, #0x20]                   
    // 0x05748c  b        #0x60240                                ; func_0x60240
}

- (void)刷新跳转按钮 {   // 0x57490
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 刷新跳转按钮 即可补全。
    // 0x057490  sub      sp, sp, #0x90                           
    // 0x057494  mov      x2, x30                                 
    // 0x057498  bl       #0x603cc                                ; func_0x603cc
    // 0x05749c  mov      x30, x2                                 
    // 0x0574a0  stp      x29, x30, [sp, #0x80]                   
    // 0x0574a4  add      x29, sp, #0x80                          
    // 0x0574a8  mov      x19, x0                                 
    // 0x0574ac  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x0574b0  mov      x29, x29                                
    // 0x0574b4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0574b8  mov      x21, x0                                 
    // 0x0574bc  bl       #0x73e60                                ; [x0 识色跳转] x30, x3, x4, x5, x6, x7
    // 0x0574c0  mov      x29, x29                                
    // 0x0574c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0574c8  bl       #0x60a08                                ; func_0x60a08
    // 0x0574cc  mov      x20, x0                                 
    // 0x0574d0  bl       #0x6019c                                ; func_0x6019c
    // 0x0574d4  bl       #0x6018c                                ; func_0x6018c
    // 0x0574d8  mov      x0, x19                                 
    // 0x0574dc  bl       #0x71b60                                ; [x0 成功跳按钮] x30, x3, x4, x5, x6, x7
    // 0x0574e0  mov      x29, x29                                
    // 0x0574e4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0574e8  bl       #0x60e60                                ; func_0x60e60
    // 0x0574ec  bl       #0x6f560                                ; [x0 shared] x30, x3, x4, x5, x6, x7
}

- (void)框选识别区 {   // 0x57680
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 框选识别区 即可补全。
    // 0x057680  sub      sp, sp, #0x50                           
    // 0x057684  stp      x20, x19, [sp, #0x30]                   
    // 0x057688  stp      x29, x30, [sp, #0x40]                   
    // 0x05768c  add      x29, sp, #0x40                          
    // 0x057690  bl       #0x61d28                                ; func_0x61d28
    // 0x057694  adrp     x8, #0xad000                            
    // 0x057698  ldr      x20, [x8, #0x480]                       ; class(模板裁切视图)
    // 0x05769c  adrp     x8, #0x8c000                            
    // 0x0576a0  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x0576a4  str      x8, [sp]                                
    // 0x0576a8  adrp     x8, #0x7b000                            
    // 0x0576ac  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x0576b0  str      d0, [sp, #8]                            
    // 0x0576b4  adrp     x8, #0x57000                            
    // 0x0576b8  add      x8, x8, #0x6ec                          
    // 0x0576bc  adrp     x9, #0x8d000                            
    // 0x0576c0  add      x9, x9, #0x938                          
    // 0x0576c4  bl       #0x60720                                ; func_0x60720
    // 0x0576c8  bl       #0x60fc0                                ; func_0x60fc0
    // 0x0576cc  bl       #0x604a4                                ; func_0x604a4
    // 0x0576d0  bl       #0x60d9c                                ; func_0x60d9c
    // 0x0576d4  ldp      x29, x30, [sp, #0x40]                   
    // 0x0576d8  b        #0x60f28                                ; func_0x60f28
    // 0x0576dc  mov      x20, x0                                 
}

- (void)选取色点 {   // 0x5777c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 选取色点 即可补全。
    // 0x05777c  sub      sp, sp, #0x90                           
    // 0x057780  stp      d11, d10, [sp, #0x30]                   
    // 0x057784  stp      d9, d8, [sp, #0x40]                     
    // 0x057788  stp      x24, x23, [sp, #0x50]                   
    // 0x05778c  stp      x22, x21, [sp, #0x60]                   
    // 0x057790  stp      x20, x19, [sp, #0x70]                   
    // 0x057794  stp      x29, x30, [sp, #0x80]                   
    // 0x057798  add      x29, sp, #0x80                          
    // 0x05779c  mov      x21, x0                                 
    // 0x0577a0  add      x0, sp, #0x28                           
    // 0x0577a4  mov      x1, x21                                 
    // 0x0577a8  bl       #0x68fec                                ; _objc_initWeak
    // 0x0577ac  adrp     x8, #0xad000                            
    // 0x0577b0  ldr      x20, [x8, #0x498]                       ; class(颜色取样视图)
    // 0x0577b4  mov      x0, x21                                 
    // 0x0577b8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0577bc  mov      x29, x29                                
    // 0x0577c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0577c4  bl       #0x61288                                ; func_0x61288
    // 0x0577c8  bl       #0x611d4                                ; func_0x611d4
    // 0x0577cc  mov      x0, x21                                 
    // 0x0577d0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0577d4  mov      x29, x29                                
    // 0x0577d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)刷新取色按钮 {   // 0x5790c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 刷新取色按钮 即可补全。
    // 0x05790c  sub      sp, sp, #0x40                           
    // 0x057910  stp      x22, x21, [sp, #0x10]                   
    // 0x057914  stp      x20, x19, [sp, #0x20]                   
    // 0x057918  stp      x29, x30, [sp, #0x30]                   
    // 0x05791c  add      x29, sp, #0x30                          
    // 0x057920  mov      x19, x0                                 
    // 0x057924  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x057928  mov      x29, x29                                
    // 0x05792c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057930  mov      x20, x0                                 
    // 0x057934  bl       #0x73e00                                ; [x0 识色点组] x2, x3, x4, x5, x6, x7
    // 0x057938  mov      x29, x29                                
    // 0x05793c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057940  bl       #0x60a94                                ; func_0x60a94
    // 0x057944  mov      x22, x0                                 
    // 0x057948  bl       #0x6018c                                ; func_0x6018c
    // 0x05794c  bl       #0x60184                                ; func_0x60184
    // 0x057950  mov      x0, x19                                 
    // 0x057954  bl       #0x70be0                                ; [x0 取色按钮] x2, x3, x4, x5, x6, x7
    // 0x057958  mov      x29, x29                                
    // 0x05795c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057960  mov      x19, x0                                 
    // 0x057964  adrp     x8, #0xad000                            
    // 0x057968  ldr      x0, [x8, #0x98]                         ; class(?0x0)
}

- (void)刷新色点条 {   // 0x579a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 刷新色点条 即可补全。
    // 0x0579a4  stp      d13, d12, [sp, #-0x90]!                 
    // 0x0579a8  mov      x2, x30                                 
    // 0x0579ac  bl       #0x603cc                                ; func_0x603cc
    // 0x0579b0  mov      x30, x2                                 
    // 0x0579b4  stp      x29, x30, [sp, #0x80]                   
    // 0x0579b8  add      x29, sp, #0x80                          
    // 0x0579bc  sub      sp, sp, #0x1b0                          
    // 0x0579c0  mov      x26, x0                                 
    // 0x0579c4  adrp     x8, #0x8c000                            
    // 0x0579c8  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0579cc  ldr      x8, [x8]                                
    // 0x0579d0  stur     x8, [x29, #-0x90]                       
    // 0x0579d4  movi     v0.16b, #0                              
    // 0x0579d8  stp      q0, q0, [sp, #0x60]                     
    // 0x0579dc  stp      q0, q0, [sp, #0x80]                     
    // 0x0579e0  bl       #0x735a0                                ; [x0 色点条] x30, x3, x4, x5, x6, x7
    // 0x0579e4  mov      x29, x29                                
    // 0x0579e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0579ec  mov      x21, x0                                 
    // 0x0579f0  bl       #0x6f9c0                                ; [x0 subviews] x30, x3, x4, x5, x6, x7
    // 0x0579f4  mov      x29, x29                                
    // 0x0579f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0579fc  mov      x20, x0                                 
    // 0x057a00  bl       #0x6018c                                ; func_0x6018c
}

- (void)测试识别 {   // 0x57e54
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 测试识别 即可补全。
    // 0x057e54  stp      d13, d12, [sp, #-0x90]!                 
    // 0x057e58  mov      x2, x30                                 
    // 0x057e5c  bl       #0x603cc                                ; func_0x603cc
    // 0x057e60  mov      x30, x2                                 
    // 0x057e64  stp      x29, x30, [sp, #0x80]                   
    // 0x057e68  add      x29, sp, #0x80                          
    // 0x057e6c  sub      sp, sp, #0x180                          
    // 0x057e70  mov      x22, x0                                 
    // 0x057e74  adrp     x8, #0x8c000                            
    // 0x057e78  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x057e7c  ldr      x8, [x8]                                
    // 0x057e80  stur     x8, [x29, #-0x90]                       
    // 0x057e84  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x057e88  mov      x29, x29                                
    // 0x057e8c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057e90  mov      x19, x0                                 
    // 0x057e94  bl       #0x73e00                                ; [x0 识色点组] x30, x3, x4, x5, x6, x7
    // 0x057e98  mov      x29, x29                                
    // 0x057e9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x057ea0  bl       #0x60abc                                ; func_0x60abc
    // 0x057ea4  mov      x21, x0                                 
    // 0x057ea8  bl       #0x60184                                ; func_0x60184
    // 0x057eac  bl       #0x601b8                                ; func_0x601b8
    // 0x057eb0  cbz      x21, #0x58370                           
}

- (id)模式段 {   // 0x5846c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 模式段 即可补全。
    // 0x05846c  adrp     x8, #0xad000                            
    // 0x058470  ldrsw    x8, [x8, #0xbe8]                        
    // 0x058474  b        #0x601f8                                ; func_0x601f8
}

- (void)set模式段:(id)set模式段 {   // 0x58478
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set模式段: 即可补全。
    // 0x058478  mov      x1, x2                                  
    // 0x05847c  adrp     x8, #0xad000                            
    // 0x058480  ldrsw    x8, [x8, #0xbe8]                        
    // 0x058484  b        #0x60194                                ; func_0x60194
}

- (id)框选按钮 {   // 0x58488
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 框选按钮 即可补全。
    // 0x058488  adrp     x8, #0xad000                            
    // 0x05848c  ldrsw    x8, [x8, #0xbec]                        
    // 0x058490  b        #0x601f8                                ; func_0x601f8
}

- (void)set框选按钮:(id)set框选按钮 {   // 0x58494
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set框选按钮: 即可补全。
    // 0x058494  mov      x1, x2                                  
    // 0x058498  adrp     x8, #0xad000                            
    // 0x05849c  ldrsw    x8, [x8, #0xbec]                        
    // 0x0584a0  b        #0x60194                                ; func_0x60194
}

- (id)取色按钮 {   // 0x584a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 取色按钮 即可补全。
    // 0x0584a4  adrp     x8, #0xad000                            
    // 0x0584a8  ldrsw    x8, [x8, #0xbf0]                        
    // 0x0584ac  b        #0x601f8                                ; func_0x601f8
}

- (void)set取色按钮:(id)set取色按钮 {   // 0x584b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set取色按钮: 即可补全。
    // 0x0584b0  mov      x1, x2                                  
    // 0x0584b4  adrp     x8, #0xad000                            
    // 0x0584b8  ldrsw    x8, [x8, #0xbf0]                        
    // 0x0584bc  b        #0x60194                                ; func_0x60194
}

- (id)色点条 {   // 0x584c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 色点条 即可补全。
    // 0x0584c0  adrp     x8, #0xad000                            
    // 0x0584c4  ldrsw    x8, [x8, #0xbf4]                        
    // 0x0584c8  b        #0x601f8                                ; func_0x601f8
}

- (void)set色点条:(id)set色点条 {   // 0x584cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set色点条: 即可补全。
    // 0x0584cc  mov      x1, x2                                  
    // 0x0584d0  adrp     x8, #0xad000                            
    // 0x0584d4  ldrsw    x8, [x8, #0xbf4]                        
    // 0x0584d8  b        #0x60194                                ; func_0x60194
}

- (id)测试按钮 {   // 0x584dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 测试按钮 即可补全。
    // 0x0584dc  adrp     x8, #0xad000                            
    // 0x0584e0  ldrsw    x8, [x8, #0xbf8]                        
    // 0x0584e4  b        #0x601f8                                ; func_0x601f8
}

- (void)set测试按钮:(id)set测试按钮 {   // 0x584e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set测试按钮: 即可补全。
    // 0x0584e8  mov      x1, x2                                  
    // 0x0584ec  adrp     x8, #0xad000                            
    // 0x0584f0  ldrsw    x8, [x8, #0xbf8]                        
    // 0x0584f4  b        #0x60194                                ; func_0x60194
}

- (id)成功段 {   // 0x584f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功段 即可补全。
    // 0x0584f8  adrp     x8, #0xad000                            
    // 0x0584fc  ldrsw    x8, [x8, #0xbfc]                        
    // 0x058500  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功段:(id)set成功段 {   // 0x58504
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功段: 即可补全。
    // 0x058504  mov      x1, x2                                  
    // 0x058508  adrp     x8, #0xad000                            
    // 0x05850c  ldrsw    x8, [x8, #0xbfc]                        
    // 0x058510  b        #0x60194                                ; func_0x60194
}

- (id)成功跳按钮 {   // 0x58514
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功跳按钮 即可补全。
    // 0x058514  adrp     x8, #0xad000                            
    // 0x058518  ldrsw    x8, [x8, #0xc00]                        
    // 0x05851c  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功跳按钮:(id)set成功跳按钮 {   // 0x58520
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功跳按钮: 即可补全。
    // 0x058520  mov      x1, x2                                  
    // 0x058524  adrp     x8, #0xad000                            
    // 0x058528  ldrsw    x8, [x8, #0xc00]                        
    // 0x05852c  b        #0x60194                                ; func_0x60194
}

- (id)失败段 {   // 0x58530
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 失败段 即可补全。
    // 0x058530  adrp     x8, #0xad000                            
    // 0x058534  ldrsw    x8, [x8, #0xc04]                        
    // 0x058538  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败段:(id)set失败段 {   // 0x5853c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set失败段: 即可补全。
    // 0x05853c  mov      x1, x2                                  
    // 0x058540  adrp     x8, #0xad000                            
    // 0x058544  ldrsw    x8, [x8, #0xc04]                        
    // 0x058548  b        #0x60194                                ; func_0x60194
}

- (id)失败跳按钮 {   // 0x5854c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 失败跳按钮 即可补全。
    // 0x05854c  adrp     x8, #0xad000                            
    // 0x058550  ldrsw    x8, [x8, #0xc08]                        
    // 0x058554  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败跳按钮:(id)set失败跳按钮 {   // 0x58558
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set失败跳按钮: 即可补全。
    // 0x058558  mov      x1, x2                                  
    // 0x05855c  adrp     x8, #0xad000                            
    // 0x058560  ldrsw    x8, [x8, #0xc08]                        
    // 0x058564  b        #0x60194                                ; func_0x60194
}

- (id)区域宽行 {   // 0x58568
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 区域宽行 即可补全。
    // 0x058568  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05856c  mov      x29, sp                                 
    // 0x058570  adrp     x8, #0xad000                            
    // 0x058574  ldrsw    x8, [x8, #0xc0c]                        
    // 0x058578  bl       #0x60cac                                ; func_0x60cac
    // 0x05857c  ldp      x29, x30, [sp], #0x10                   
    // 0x058580  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域宽行:(id)set区域宽行 {   // 0x58584
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set区域宽行: 即可补全。
    // 0x058584  mov      x1, x2                                  
    // 0x058588  adrp     x8, #0xad000                            
    // 0x05858c  ldrsw    x8, [x8, #0xc0c]                        
    // 0x058590  b        #0x60324                                ; func_0x60324
}

- (id)区域高行 {   // 0x58594
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 区域高行 即可补全。
    // 0x058594  stp      x29, x30, [sp, #-0x10]!                 
    // 0x058598  mov      x29, sp                                 
    // 0x05859c  adrp     x8, #0xad000                            
    // 0x0585a0  ldrsw    x8, [x8, #0xc10]                        
    // 0x0585a4  bl       #0x60cac                                ; func_0x60cac
    // 0x0585a8  ldp      x29, x30, [sp], #0x10                   
    // 0x0585ac  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域高行:(id)set区域高行 {   // 0x585b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set区域高行: 即可补全。
    // 0x0585b0  mov      x1, x2                                  
    // 0x0585b4  adrp     x8, #0xad000                            
    // 0x0585b8  ldrsw    x8, [x8, #0xc10]                        
    // 0x0585bc  b        #0x60324                                ; func_0x60324
}

- (id)成功长按行 {   // 0x585c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功长按行 即可补全。
    // 0x0585c0  adrp     x8, #0xad000                            
    // 0x0585c4  ldrsw    x8, [x8, #0xc14]                        
    // 0x0585c8  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功长按行:(id)set成功长按行 {   // 0x585cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功长按行: 即可补全。
    // 0x0585cc  mov      x1, x2                                  
    // 0x0585d0  adrp     x8, #0xad000                            
    // 0x0585d4  ldrsw    x8, [x8, #0xc14]                        
    // 0x0585d8  b        #0x60194                                ; func_0x60194
}

- (id)成功滑时行 {   // 0x585dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功滑时行 即可补全。
    // 0x0585dc  adrp     x8, #0xad000                            
    // 0x0585e0  ldrsw    x8, [x8, #0xc18]                        
    // 0x0585e4  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功滑时行:(id)set成功滑时行 {   // 0x585e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功滑时行: 即可补全。
    // 0x0585e8  mov      x1, x2                                  
    // 0x0585ec  adrp     x8, #0xad000                            
    // 0x0585f0  ldrsw    x8, [x8, #0xc18]                        
    // 0x0585f4  b        #0x60194                                ; func_0x60194
}

- (id)成功帧数行 {   // 0x585f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功帧数行 即可补全。
    // 0x0585f8  adrp     x8, #0xad000                            
    // 0x0585fc  ldrsw    x8, [x8, #0xc1c]                        
    // 0x058600  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功帧数行:(id)set成功帧数行 {   // 0x58604
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功帧数行: 即可补全。
    // 0x058604  mov      x1, x2                                  
    // 0x058608  adrp     x8, #0xad000                            
    // 0x05860c  ldrsw    x8, [x8, #0xc1c]                        
    // 0x058610  b        #0x60194                                ; func_0x60194
}

- (id)成功时隔行 {   // 0x58614
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 成功时隔行 即可补全。
    // 0x058614  adrp     x8, #0xad000                            
    // 0x058618  ldrsw    x8, [x8, #0xc20]                        
    // 0x05861c  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功时隔行:(id)set成功时隔行 {   // 0x58620
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set成功时隔行: 即可补全。
    // 0x058620  mov      x1, x2                                  
    // 0x058624  adrp     x8, #0xad000                            
    // 0x058628  ldrsw    x8, [x8, #0xc20]                        
    // 0x05862c  b        #0x60194                                ; func_0x60194
}

- (id)路径编辑器 {   // 0x58630
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 路径编辑器 即可补全。
    // 0x058630  adrp     x8, #0xad000                            
    // 0x058634  ldrsw    x8, [x8, #0xc24]                        
    // 0x058638  b        #0x601f8                                ; func_0x601f8
}

- (void)set路径编辑器:(id)set路径编辑器 {   // 0x5863c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set路径编辑器: 即可补全。
    // 0x05863c  mov      x1, x2                                  
    // 0x058640  adrp     x8, #0xad000                            
    // 0x058644  ldrsw    x8, [x8, #0xc24]                        
    // 0x058648  b        #0x60194                                ; func_0x60194
}

- (id)等待段 {   // 0x5864c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 等待段 即可补全。
    // 0x05864c  adrp     x8, #0xad000                            
    // 0x058650  ldrsw    x8, [x8, #0xc28]                        
    // 0x058654  b        #0x601f8                                ; func_0x601f8
}

- (void)set等待段:(id)set等待段 {   // 0x58658
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set等待段: 即可补全。
    // 0x058658  mov      x1, x2                                  
    // 0x05865c  adrp     x8, #0xad000                            
    // 0x058660  ldrsw    x8, [x8, #0xc28]                        
    // 0x058664  b        #0x60194                                ; func_0x60194
}

- (id)等待超时行 {   // 0x58668
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 等待超时行 即可补全。
    // 0x058668  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05866c  mov      x29, sp                                 
    // 0x058670  adrp     x8, #0xad000                            
    // 0x058674  ldrsw    x8, [x8, #0xc2c]                        
    // 0x058678  bl       #0x60cac                                ; func_0x60cac
    // 0x05867c  ldp      x29, x30, [sp], #0x10                   
    // 0x058680  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set等待超时行:(id)set等待超时行 {   // 0x58684
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识色选择视图 set等待超时行: 即可补全。
    // 0x058684  mov      x1, x2                                  
    // 0x058688  adrp     x8, #0xad000                            
    // 0x05868c  ldrsw    x8, [x8, #0xc2c]                        
    // 0x058690  b        #0x60324                                ; func_0x60324
}

@end