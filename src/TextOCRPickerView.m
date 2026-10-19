//
//  识字选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 识字选择视图

- (BOOL)显示标记 {   // 0x5038c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 显示标记 即可补全。
    // 0x05038c  b        #0x609e0                                ; func_0x609e0
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x50390
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 hitTest:withEvent: 即可补全。
    // 0x050390  sub      sp, sp, #0x50                           
    // 0x050394  stp      d9, d8, [sp, #0x10]                     
    // 0x050398  stp      x22, x21, [sp, #0x20]                   
    // 0x05039c  stp      x20, x19, [sp, #0x30]                   
    // 0x0503a0  stp      x29, x30, [sp, #0x40]                   
    // 0x0503a4  add      x29, sp, #0x40                          
    // 0x0503a8  fmov     d8, d1                                  
    // 0x0503ac  fmov     d9, d0                                  
    // 0x0503b0  mov      x21, x0                                 
    // 0x0503b4  bl       #0x60364                                ; func_0x60364
    // 0x0503b8  bl       #0x615b4                                ; func_0x615b4
    // 0x0503bc  bl       #0x74220                                ; [x0 路径编辑器] x2, x3, x4, x5, x6, x7
    // 0x0503c0  mov      x29, x29                                
    // 0x0503c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0503c8  mov      x22, x0                                 
    // 0x0503cc  bl       #0x6082c                                ; func_0x6082c
    // 0x0503d0  bl       #0x70e80                                ; [x0 命中测试:事件:] x2, x3, x4, x5, x6, x7
    // 0x0503d4  mov      x29, x29                                
    // 0x0503d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0503dc  mov      x20, x0                                 
    // 0x0503e0  bl       #0x6019c                                ; func_0x6019c
    // 0x0503e4  cbz      x20, #0x503f0                           
    // 0x0503e8  bl       #0x60bfc                                ; func_0x60bfc
    // 0x0503ec  b        #0x50418                                
}

- (void)同步起点参考 {   // 0x50430
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 同步起点参考 即可补全。
    // 0x050430  mov      x2, x30                                 
    // 0x050434  bl       #0x608e4                                ; func_0x608e4
    // 0x050438  mov      x30, x2                                 
    // 0x05043c  stp      x29, x30, [sp, #0x50]                   
    // 0x050440  add      x29, sp, #0x50                          
    // 0x050444  mov      x19, x0                                 
    // 0x050448  bl       #0x74220                                ; [x0 路径编辑器] x30, x3, x4, x5, x6, x7
    // 0x05044c  mov      x29, x29                                
    // 0x050450  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x050454  bl       #0x6232c                                ; func_0x6232c
    // 0x050458  mov      x21, x0                                 
    // 0x05045c  bl       #0x60184                                ; func_0x60184
    // 0x050460  tbz      w21, #0, #0x5046c                       
    // 0x050464  ldp      x29, x30, [sp, #0x50]                   
    // 0x050468  b        #0x60a1c                                ; func_0x60a1c
    // 0x05046c  mov      x0, x19                                 
    // 0x050470  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x050474  mov      x29, x29                                
    // 0x050478  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05047c  bl       #0x60c64                                ; func_0x60c64
    // 0x050480  fmov     d10, d0                                 
    // 0x050484  fmov     d9, d1                                  
    // 0x050488  fmov     d12, d2                                 
    // 0x05048c  fmov     d11, d3                                 
}

- (id)新建标记视图 {   // 0x504d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 新建标记视图 即可补全。
    // 0x0504d8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0504dc  stp      x29, x30, [sp, #0x10]                   
    // 0x0504e0  add      x29, sp, #0x10                          
    // 0x0504e4  adrp     x8, #0xad000                            
    // 0x0504e8  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x0504ec  bl       #0x68f5c                                ; _objc_alloc
    // 0x0504f0  adrp     x8, #0x8c000                            
    // 0x0504f4  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x0504f8  bl       #0x6067c                                ; func_0x6067c
    // 0x0504fc  mov      x19, x0                                 
    // 0x050500  bl       #0x60620                                ; func_0x60620
    // 0x050504  mov      x0, x19                                 
    // 0x050508  bl       #0x60424                                ; func_0x60424
    // 0x05050c  mov      x0, x19                                 
    // 0x050510  ldp      x29, x30, [sp, #0x10]                   
    // 0x050514  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x50518
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 构建参数 即可补全。
    // 0x050518  mov      x2, x30                                 
    // 0x05051c  bl       #0x606f8                                ; func_0x606f8
    // 0x050520  mov      x30, x2                                 
    // 0x050524  stp      x29, x30, [sp, #0x90]                   
    // 0x050528  add      x29, sp, #0x90                          
    // 0x05052c  sub      sp, sp, #0x270                          
    // 0x050530  mov      x22, x0                                 
    // 0x050534  adrp     x8, #0x8c000                            
    // 0x050538  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05053c  ldr      x8, [x8]                                
    // 0x050540  stur     x8, [x29, #-0xa0]                       
    // 0x050544  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x050548  mov      x29, x29                                
    // 0x05054c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x050550  mov      x19, x0                                 
    // 0x050554  mov      w2, #7                                  
    // 0x050558  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x05055c  bl       #0x601b8                                ; func_0x601b8
    // 0x050560  add      x0, sp, #0x1f8                          
    // 0x050564  mov      x1, x22                                 
    // 0x050568  bl       #0x68fec                                ; _objc_initWeak
    // 0x05056c  adrp     x8, #0x8c000                            
    // 0x050570  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x050574  str      x8, [sp, #0x1d0]                        
}

- (void)配段:(id)配段 {   // 0x51b70
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 配段: 即可补全。
    // 0x051b70  mov      x0, x30                                 
    // 0x051b74  bl       #0x60afc                                ; func_0x60afc
    // 0x051b78  mov      x30, x0                                 
    // 0x051b7c  stp      x29, x30, [sp, #0xa0]                   
    // 0x051b80  add      x29, sp, #0xa0                          
    // 0x051b84  mov      x0, x2                                  
    // 0x051b88  adrp     x8, #0x8c000                            
    // 0x051b8c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x051b90  ldr      x8, [x8]                                
    // 0x051b94  bl       #0x615e8                                ; func_0x615e8
    // 0x051b98  mov      x19, x0                                 
    // 0x051b9c  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x051ba0  mov      x29, x29                                
    // 0x051ba4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x051ba8  bl       #0x60300                                ; func_0x60300
    // 0x051bac  bl       #0x60184                                ; func_0x60184
    // 0x051bb0  bl       #0x20138                                ; _CQThemeNeon
    // 0x051bb4  mov      x29, x29                                
    // 0x051bb8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x051bbc  bl       #0x608c4                                ; func_0x608c4
    // 0x051bc0  bl       #0x60184                                ; func_0x60184
    // 0x051bc4  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x051bc8  mov      x29, x29                                
    // 0x051bcc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (double)面板附加高度 {   // 0x51cb8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 面板附加高度 即可补全。
    // 0x051cb8  stp      d9, d8, [sp, #-0x50]!                   
    // 0x051cbc  stp      x24, x23, [sp, #0x10]                   
    // 0x051cc0  stp      x22, x21, [sp, #0x20]                   
    // 0x051cc4  stp      x20, x19, [sp, #0x30]                   
    // 0x051cc8  stp      x29, x30, [sp, #0x40]                   
    // 0x051ccc  add      x29, sp, #0x40                          
    // 0x051cd0  mov      x19, x0                                 
    // 0x051cd4  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x051cd8  mov      x29, x29                                
    // 0x051cdc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x051ce0  bl       #0x612ac                                ; func_0x612ac
    // 0x051ce4  mov      x21, x0                                 
    // 0x051ce8  bl       #0x60184                                ; func_0x60184
    // 0x051cec  cmp      x21, #1                                 
    // 0x051cf0  adrp     x8, #0x7c000                            
    // 0x051cf4  ldr      d0, [x8, #0x8e8]                        ; ptr_0x7c8e8
    // 0x051cf8  mov      x8, #0x406b000000000000                 
    // 0x051cfc  fmov     d1, x8                                  
    // 0x051d00  fcsel    d8, d1, d0, eq                          
    // 0x051d04  mov      x0, x19                                 
    // 0x051d08  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x051d0c  mov      x29, x29                                
    // 0x051d10  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x051d14  bl       #0x612ac                                ; func_0x612ac
}

- (void)布局参数区 {   // 0x51de4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 布局参数区 即可补全。
    // 0x051de4  mov      x1, x30                                 
    // 0x051de8  bl       #0x61754                                ; func_0x61754
    // 0x051dec  mov      x30, x1                                 
    // 0x051df0  stp      x29, x30, [sp, #0xa0]                   
    // 0x051df4  add      x29, sp, #0xa0                          
    // 0x051df8  mov      x19, x0                                 
    // 0x051dfc  adrp     x8, #0xad000                            
    // 0x051e00  ldr      x8, [x8, #0x580]                        ; class(识字选择视图)
    // 0x051e04  stp      x0, x8, [sp, #0x10]                     
    // 0x051e08  adrp     x8, #0xab000                            
    // 0x051e0c  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x051e10  bl       #0x61664                                ; func_0x61664
    // 0x051e14  mov      x0, x19                                 
    // 0x051e18  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x051e1c  mov      x29, x29                                
    // 0x051e20  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x051e24  bl       #0x60850                                ; func_0x60850
    // 0x051e28  fmov     d9, d2                                  
    // 0x051e2c  bl       #0x60184                                ; func_0x60184
    // 0x051e30  bl       #0x60c4c                                ; func_0x60c4c
    // 0x051e34  bl       #0x60db4                                ; func_0x60db4
    // 0x051e38  bl       #0x73140                                ; [x0 类型段] x2, x3, x4, x5, x6, x7
    // 0x051e3c  mov      x29, x29                                
    // 0x051e40  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)新建输入框:(id)新建输入框 {   // 0x524ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 新建输入框: 即可补全。
    // 0x0524ec  sub      sp, sp, #0x70                           
    // 0x0524f0  stp      x24, x23, [sp, #0x30]                   
    // 0x0524f4  stp      x22, x21, [sp, #0x40]                   
    // 0x0524f8  stp      x20, x19, [sp, #0x50]                   
    // 0x0524fc  stp      x29, x30, [sp, #0x60]                   
    // 0x052500  add      x29, sp, #0x60                          
    // 0x052504  mov      x20, x0                                 
    // 0x052508  adrp     x8, #0x8c000                            
    // 0x05250c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x052510  ldr      x8, [x8]                                
    // 0x052514  str      x8, [sp, #0x28]                         
    // 0x052518  adrp     x8, #0xad000                            
    // 0x05251c  ldr      x19, [x8, #0x258]                       ; class(?0x0)
    // 0x052520  bl       #0x60364                                ; func_0x60364
    // 0x052524  bl       #0x6159c                                ; func_0x6159c
    // 0x052528  mov      x19, x0                                 
    // 0x05252c  adrp     x8, #0xad000                            
    // 0x052530  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x052534  fmov     d0, #14.00000000                        
    // 0x052538  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05253c  mov      x29, x29                                
    // 0x052540  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052544  mov      x22, x0                                 
    // 0x052548  mov      x0, x19                                 
}

- (void)收起键盘 {   // 0x52728
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 收起键盘 即可补全。
    // 0x052728  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05272c  stp      x29, x30, [sp, #0x10]                   
    // 0x052730  add      x29, sp, #0x10                          
    // 0x052734  mov      x19, x0                                 
    // 0x052738  bl       #0x720e0                                ; [x0 文本框] x2, x3, x4, x5, x6, x7
    // 0x05273c  mov      x29, x29                                
    // 0x052740  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052744  bl       #0x612b4                                ; func_0x612b4
    // 0x052748  bl       #0x60184                                ; func_0x60184
    // 0x05274c  mov      x0, x19                                 
    // 0x052750  bl       #0x72000                                ; [x0 数值框] x2, x3, x4, x5, x6, x7
    // 0x052754  mov      x29, x29                                
    // 0x052758  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05275c  bl       #0x61280                                ; func_0x61280
    // 0x052760  mov      x0, x19                                 
    // 0x052764  ldp      x29, x30, [sp, #0x10]                   
    // 0x052768  b        #0x60270                                ; func_0x60270
}

- (id)新建按钮 {   // 0x5276c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 新建按钮 即可补全。
    // 0x05276c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x052770  stp      x20, x19, [sp, #0x10]                   
    // 0x052774  stp      x29, x30, [sp, #0x20]                   
    // 0x052778  add      x29, sp, #0x20                          
    // 0x05277c  adrp     x8, #0xad000                            
    // 0x052780  ldr      x0, [x8, #0x2e8]                        ; class(?0x0)
    // 0x052784  mov      w2, #1                                  
    // 0x052788  bl       #0x6a380                                ; [class(?0x0) buttonWithType:] x2, x3, x4, x5, x6, x7
    // 0x05278c  mov      x29, x29                                
    // 0x052790  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052794  mov      x19, x0                                 
    // 0x052798  adrp     x8, #0xad000                            
    // 0x05279c  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x0527a0  fmov     d0, #13.00000000                        
    // 0x0527a4  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x0527a8  mov      x29, x29                                
    // 0x0527ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0527b0  bl       #0x60290                                ; func_0x60290
    // 0x0527b4  bl       #0x6fb80                                ; [class(?0x0) titleLabel] x2, x3, x4, x5, x6, x7
    // 0x0527b8  mov      x29, x29                                
    // 0x0527bc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0527c0  bl       #0x608b8                                ; func_0x608b8
    // 0x0527c4  bl       #0x6018c                                ; func_0x6018c
    // 0x0527c8  bl       #0x60184                                ; func_0x60184
}

- (void)类型段变化:(id)类型段变化 {   // 0x52828
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 类型段变化: 即可补全。
    // 0x052828  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05282c  stp      x20, x19, [sp, #0x10]                   
    // 0x052830  stp      x29, x30, [sp, #0x20]                   
    // 0x052834  add      x29, sp, #0x20                          
    // 0x052838  bl       #0x6029c                                ; func_0x6029c
    // 0x05283c  bl       #0x60654                                ; func_0x60654
    // 0x052840  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x052844  mov      x29, x29                                
    // 0x052848  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05284c  bl       #0x60498                                ; func_0x60498
    // 0x052850  bl       #0x6ed20                                ; [x0 set识字类型:] x2, x3, x4, x5, x6, x7
    // 0x052854  bl       #0x6018c                                ; func_0x6018c
    // 0x052858  mov      x0, x19                                 
    // 0x05285c  ldp      x29, x30, [sp, #0x20]                   
    // 0x052860  b        #0x60240                                ; func_0x60240
}

- (void)文本框变化:(id)文本框变化 {   // 0x52864
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 文本框变化: 即可补全。
    // 0x052864  stp      x24, x23, [sp, #-0x40]!                 
    // 0x052868  stp      x22, x21, [sp, #0x10]                   
    // 0x05286c  stp      x20, x19, [sp, #0x20]                   
    // 0x052870  stp      x29, x30, [sp, #0x30]                   
    // 0x052874  add      x29, sp, #0x30                          
    // 0x052878  mov      x21, x0                                 
    // 0x05287c  bl       #0x60364                                ; func_0x60364
    // 0x052880  mov      x19, x0                                 
    // 0x052884  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x052888  mov      x29, x29                                
    // 0x05288c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052890  mov      x20, x0                                 
    // 0x052894  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x052898  mov      x22, x0                                 
    // 0x05289c  cbz      x0, #0x528bc                            
    // 0x0528a0  mov      x0, x19                                 
    // 0x0528a4  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x0528a8  mov      x29, x29                                
    // 0x0528ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0528b0  bl       #0x62008                                ; func_0x62008
    // 0x0528b4  mov      x24, x0                                 
    // 0x0528b8  b        #0x528c0                                
    // 0x0528bc  mov      x24, #0                                 
    // 0x0528c0  mov      x0, x21                                 
}

- (void)数值框变化:(id)数值框变化 {   // 0x528fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 数值框变化: 即可补全。
    // 0x0528fc  stp      d9, d8, [sp, #-0x30]!                   
    // 0x052900  stp      x20, x19, [sp, #0x10]                   
    // 0x052904  stp      x29, x30, [sp, #0x20]                   
    // 0x052908  add      x29, sp, #0x20                          
    // 0x05290c  bl       #0x61290                                ; func_0x61290
    // 0x052910  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x052914  mov      x29, x29                                
    // 0x052918  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05291c  bl       #0x61bb8                                ; func_0x61bb8
    // 0x052920  fmov     d8, d0                                  
    // 0x052924  mov      x0, x19                                 
    // 0x052928  bl       #0x706c0                                ; [x19 动作] x2, x3, x4, x5, x6, x7
    // 0x05292c  mov      x29, x29                                
    // 0x052930  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052934  mov      x19, x0                                 
    // 0x052938  fmov     d0, d8                                  
    // 0x05293c  bl       #0x6ec40                                ; [x19 set识字数值:] x2, x3, x4, x5, x6, x7
    // 0x052940  bl       #0x601b8                                ; func_0x601b8
    // 0x052944  mov      x0, x20                                 
    // 0x052948  ldp      x29, x30, [sp, #0x20]                   
    // 0x05294c  b        #0x601ac                                ; func_0x601ac
}

- (void)选择条件 {   // 0x52950
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 选择条件 即可补全。
    // 0x052950  sub      sp, sp, #0x90                           
    // 0x052954  stp      x22, x21, [sp, #0x60]                   
    // 0x052958  stp      x20, x19, [sp, #0x70]                   
    // 0x05295c  stp      x29, x30, [sp, #0x80]                   
    // 0x052960  add      x29, sp, #0x80                          
    // 0x052964  mov      x20, x0                                 
    // 0x052968  adrp     x8, #0x8c000                            
    // 0x05296c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x052970  ldr      x8, [x8]                                
    // 0x052974  stur     x8, [x29, #-0x28]                       
    // 0x052978  adrp     x8, #0x93000                            
    // 0x05297c  add      x8, x8, #0xb70                          
    // 0x052980  adrp     x9, #0x93000                            
    // 0x052984  add      x9, x9, #0xb90                          
    // 0x052988  stp      x8, x9, [sp, #0x30]                     
    // 0x05298c  adrp     x8, #0x93000                            
    // 0x052990  add      x8, x8, #0xbb0                          
    // 0x052994  adrp     x9, #0x93000                            
    // 0x052998  add      x9, x9, #0xbd0                          
    // 0x05299c  stp      x8, x9, [sp, #0x40]                     
    // 0x0529a0  adrp     x8, #0x93000                            
    // 0x0529a4  add      x8, x8, #0xbf0                          
    // 0x0529a8  str      x8, [sp, #0x50]                         
    // 0x0529ac  adrp     x8, #0xad000                            
}

- (void)刷新条件按钮 {   // 0x52ae0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 刷新条件按钮 即可补全。
    // 0x052ae0  sub      sp, sp, #0x40                           
    // 0x052ae4  stp      x22, x21, [sp, #0x10]                   
    // 0x052ae8  stp      x20, x19, [sp, #0x20]                   
    // 0x052aec  stp      x29, x30, [sp, #0x30]                   
    // 0x052af0  add      x29, sp, #0x30                          
    // 0x052af4  mov      x19, x0                                 
    // 0x052af8  bl       #0x72620                                ; [x0 条件按钮] x2, x3, x4, x5, x6, x7
    // 0x052afc  mov      x29, x29                                
    // 0x052b00  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052b04  mov      x20, x0                                 
    // 0x052b08  adrp     x8, #0xad000                            
    // 0x052b0c  ldr      x21, [x8, #0x98]                        ; class(?0x0)
    // 0x052b10  adrp     x8, #0xad000                            
    // 0x052b14  ldr      x22, [x8, #0x270]                       ; class(CQTextOCR)
    // 0x052b18  mov      x0, x19                                 
    // 0x052b1c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x052b20  mov      x29, x29                                
    // 0x052b24  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052b28  mov      x19, x0                                 
    // 0x052b2c  bl       #0x73b80                                ; [x0 识字条件] x2, x3, x4, x5, x6, x7
    // 0x052b30  bl       #0x6186c                                ; func_0x6186c
    // 0x052b34  bl       #0x72640                                ; [x0 条件符号:] x2, x3, x4, x5, x6, x7
    // 0x052b38  mov      x29, x29                                
    // 0x052b3c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)成功段变化:(id)成功段变化 {   // 0x52b84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功段变化: 即可补全。
    // 0x052b84  stp      x22, x21, [sp, #-0x30]!                 
    // 0x052b88  stp      x20, x19, [sp, #0x10]                   
    // 0x052b8c  stp      x29, x30, [sp, #0x20]                   
    // 0x052b90  add      x29, sp, #0x20                          
    // 0x052b94  bl       #0x6029c                                ; func_0x6029c
    // 0x052b98  bl       #0x60290                                ; func_0x60290
    // 0x052b9c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x052ba0  mov      x29, x29                                
    // 0x052ba4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052ba8  bl       #0x60498                                ; func_0x60498
    // 0x052bac  bl       #0x6ec20                                ; [x0 set识字成功行为:] x2, x3, x4, x5, x6, x7
    // 0x052bb0  bl       #0x6018c                                ; func_0x6018c
    // 0x052bb4  mov      x0, x19                                 
    // 0x052bb8  ldp      x29, x30, [sp, #0x20]                   
    // 0x052bbc  b        #0x60240                                ; func_0x60240
}

- (void)失败段变化:(id)失败段变化 {   // 0x52bc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 失败段变化: 即可补全。
    // 0x052bc0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x052bc4  stp      x20, x19, [sp, #0x10]                   
    // 0x052bc8  stp      x29, x30, [sp, #0x20]                   
    // 0x052bcc  add      x29, sp, #0x20                          
    // 0x052bd0  bl       #0x6029c                                ; func_0x6029c
    // 0x052bd4  bl       #0x60290                                ; func_0x60290
    // 0x052bd8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x052bdc  mov      x29, x29                                
    // 0x052be0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052be4  bl       #0x60498                                ; func_0x60498
    // 0x052be8  bl       #0x6ebe0                                ; [x0 set识字失败行为:] x2, x3, x4, x5, x6, x7
    // 0x052bec  bl       #0x6018c                                ; func_0x6018c
    // 0x052bf0  mov      x0, x19                                 
    // 0x052bf4  ldp      x29, x30, [sp, #0x20]                   
    // 0x052bf8  b        #0x60240                                ; func_0x60240
}

- (void)等待段变化:(id)等待段变化 {   // 0x52bfc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 等待段变化: 即可补全。
    // 0x052bfc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x052c00  stp      x20, x19, [sp, #0x10]                   
    // 0x052c04  stp      x29, x30, [sp, #0x20]                   
    // 0x052c08  add      x29, sp, #0x20                          
    // 0x052c0c  bl       #0x6029c                                ; func_0x6029c
    // 0x052c10  bl       #0x61834                                ; func_0x61834
    // 0x052c14  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x052c18  mov      x29, x29                                
    // 0x052c1c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052c20  bl       #0x62194                                ; func_0x62194
    // 0x052c24  bl       #0x6018c                                ; func_0x6018c
    // 0x052c28  mov      x0, x19                                 
    // 0x052c2c  ldp      x29, x30, [sp, #0x20]                   
    // 0x052c30  b        #0x60240                                ; func_0x60240
}

- (void)选择成功跳转 {   // 0x52c34
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 选择成功跳转 即可补全。
    // 0x052c34  sub      sp, sp, #0x40                           
    // 0x052c38  stp      x29, x30, [sp, #0x30]                   
    // 0x052c3c  add      x29, sp, #0x30                          
    // 0x052c40  adrp     x8, #0x8c000                            
    // 0x052c44  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x052c48  str      x8, [sp, #8]                            
    // 0x052c4c  adrp     x8, #0x7b000                            
    // 0x052c50  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x052c54  adrp     x8, #0x52000                            
    // 0x052c58  add      x8, x8, #0xc74                          
    // 0x052c5c  str      d0, [sp, #0x10]                         
    // 0x052c60  adrp     x9, #0x8d000                            
    // 0x052c64  add      x9, x9, #0x148                          
    // 0x052c68  bl       #0x605e4                                ; func_0x605e4
    // 0x052c6c  ldp      x29, x30, [sp, #0x30]                   
    // 0x052c70  b        #0x60c74                                ; func_0x60c74
}

- (void)选择失败跳转 {   // 0x52cb4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 选择失败跳转 即可补全。
    // 0x052cb4  sub      sp, sp, #0x40                           
    // 0x052cb8  stp      x29, x30, [sp, #0x30]                   
    // 0x052cbc  add      x29, sp, #0x30                          
    // 0x052cc0  adrp     x8, #0x8c000                            
    // 0x052cc4  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x052cc8  str      x8, [sp, #8]                            
    // 0x052ccc  adrp     x8, #0x7b000                            
    // 0x052cd0  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x052cd4  adrp     x8, #0x52000                            
    // 0x052cd8  add      x8, x8, #0xcf4                          
    // 0x052cdc  str      d0, [sp, #0x10]                         
    // 0x052ce0  adrp     x9, #0x8d000                            
    // 0x052ce4  add      x9, x9, #0x148                          
    // 0x052ce8  bl       #0x605e4                                ; func_0x605e4
    // 0x052cec  ldp      x29, x30, [sp, #0x30]                   
    // 0x052cf0  b        #0x60c74                                ; func_0x60c74
}

- (void)刷新跳转按钮 {   // 0x52d34
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 刷新跳转按钮 即可补全。
    // 0x052d34  sub      sp, sp, #0x90                           
    // 0x052d38  mov      x2, x30                                 
    // 0x052d3c  bl       #0x603cc                                ; func_0x603cc
    // 0x052d40  mov      x30, x2                                 
    // 0x052d44  stp      x29, x30, [sp, #0x80]                   
    // 0x052d48  add      x29, sp, #0x80                          
    // 0x052d4c  mov      x19, x0                                 
    // 0x052d50  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x052d54  mov      x29, x29                                
    // 0x052d58  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052d5c  mov      x21, x0                                 
    // 0x052d60  bl       #0x73c60                                ; [x0 识字跳转] x30, x3, x4, x5, x6, x7
    // 0x052d64  mov      x29, x29                                
    // 0x052d68  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052d6c  bl       #0x60a08                                ; func_0x60a08
    // 0x052d70  mov      x20, x0                                 
    // 0x052d74  bl       #0x6019c                                ; func_0x6019c
    // 0x052d78  bl       #0x6018c                                ; func_0x6018c
    // 0x052d7c  mov      x0, x19                                 
    // 0x052d80  bl       #0x71b60                                ; [x0 成功跳按钮] x30, x3, x4, x5, x6, x7
    // 0x052d84  mov      x29, x29                                
    // 0x052d88  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052d8c  bl       #0x60e60                                ; func_0x60e60
    // 0x052d90  bl       #0x6f560                                ; [x0 shared] x30, x3, x4, x5, x6, x7
}

- (void)框选识别区 {   // 0x52f24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 框选识别区 即可补全。
    // 0x052f24  sub      sp, sp, #0x50                           
    // 0x052f28  stp      x20, x19, [sp, #0x30]                   
    // 0x052f2c  stp      x29, x30, [sp, #0x40]                   
    // 0x052f30  add      x29, sp, #0x40                          
    // 0x052f34  mov      x19, x0                                 
    // 0x052f38  bl       #0x720e0                                ; [x0 文本框] x2, x3, x4, x5, x6, x7
    // 0x052f3c  mov      x29, x29                                
    // 0x052f40  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052f44  bl       #0x612b4                                ; func_0x612b4
    // 0x052f48  bl       #0x60184                                ; func_0x60184
    // 0x052f4c  mov      x0, x19                                 
    // 0x052f50  bl       #0x72000                                ; [x0 数值框] x2, x3, x4, x5, x6, x7
    // 0x052f54  mov      x29, x29                                
    // 0x052f58  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x052f5c  bl       #0x612b4                                ; func_0x612b4
    // 0x052f60  bl       #0x60184                                ; func_0x60184
    // 0x052f64  sub      x0, x29, #0x18                          
    // 0x052f68  bl       #0x60ee0                                ; func_0x60ee0
    // 0x052f6c  adrp     x8, #0xad000                            
    // 0x052f70  ldr      x20, [x8, #0x480]                       ; class(模板裁切视图)
    // 0x052f74  adrp     x8, #0x8c000                            
    // 0x052f78  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x052f7c  str      x8, [sp]                                
    // 0x052f80  adrp     x8, #0x7b000                            
}

- (void)测试识别 {   // 0x53054
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 测试识别 即可补全。
    // 0x053054  stp      d9, d8, [sp, #-0x70]!                   
    // 0x053058  mov      x2, x30                                 
    // 0x05305c  bl       #0x61880                                ; func_0x61880
    // 0x053060  mov      x30, x2                                 
    // 0x053064  stp      x29, x30, [sp, #0x60]                   
    // 0x053068  add      x29, sp, #0x60                          
    // 0x05306c  sub      sp, sp, #0x2a0                          
    // 0x053070  mov      x22, x0                                 
    // 0x053074  adrp     x8, #0x8c000                            
    // 0x053078  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05307c  ldr      x8, [x8]                                
    // 0x053080  stur     x8, [x29, #-0x70]                       
    // 0x053084  bl       #0x720e0                                ; [x0 文本框] x30, x3, x4, x5, x6, x7
    // 0x053088  mov      x29, x29                                
    // 0x05308c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x053090  bl       #0x61280                                ; func_0x61280
    // 0x053094  bl       #0x601b8                                ; func_0x601b8
    // 0x053098  mov      x0, x22                                 
    // 0x05309c  bl       #0x72000                                ; [x0 数值框] x30, x3, x4, x5, x6, x7
    // 0x0530a0  mov      x29, x29                                
    // 0x0530a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0530a8  bl       #0x61280                                ; func_0x61280
    // 0x0530ac  bl       #0x601b8                                ; func_0x601b8
    // 0x0530b0  adrp     x8, #0xad000                            
}

- (id)类型段 {   // 0x53640
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 类型段 即可补全。
    // 0x053640  adrp     x8, #0xad000                            
    // 0x053644  ldrsw    x8, [x8, #0xb74]                        
    // 0x053648  b        #0x601f8                                ; func_0x601f8
}

- (void)set类型段:(id)set类型段 {   // 0x5364c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set类型段: 即可补全。
    // 0x05364c  mov      x1, x2                                  
    // 0x053650  adrp     x8, #0xad000                            
    // 0x053654  ldrsw    x8, [x8, #0xb74]                        
    // 0x053658  b        #0x60194                                ; func_0x60194
}

- (id)文本框 {   // 0x5365c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 文本框 即可补全。
    // 0x05365c  adrp     x8, #0xad000                            
    // 0x053660  ldrsw    x8, [x8, #0xb78]                        
    // 0x053664  b        #0x601f8                                ; func_0x601f8
}

- (void)set文本框:(id)set文本框 {   // 0x53668
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set文本框: 即可补全。
    // 0x053668  mov      x1, x2                                  
    // 0x05366c  adrp     x8, #0xad000                            
    // 0x053670  ldrsw    x8, [x8, #0xb78]                        
    // 0x053674  b        #0x60194                                ; func_0x60194
}

- (id)条件按钮 {   // 0x53678
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 条件按钮 即可补全。
    // 0x053678  adrp     x8, #0xad000                            
    // 0x05367c  ldrsw    x8, [x8, #0xb7c]                        
    // 0x053680  b        #0x601f8                                ; func_0x601f8
}

- (void)set条件按钮:(id)set条件按钮 {   // 0x53684
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set条件按钮: 即可补全。
    // 0x053684  mov      x1, x2                                  
    // 0x053688  adrp     x8, #0xad000                            
    // 0x05368c  ldrsw    x8, [x8, #0xb7c]                        
    // 0x053690  b        #0x60194                                ; func_0x60194
}

- (id)数值框 {   // 0x53694
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 数值框 即可补全。
    // 0x053694  adrp     x8, #0xad000                            
    // 0x053698  ldrsw    x8, [x8, #0xb80]                        
    // 0x05369c  b        #0x601f8                                ; func_0x601f8
}

- (void)set数值框:(id)set数值框 {   // 0x536a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set数值框: 即可补全。
    // 0x0536a0  mov      x1, x2                                  
    // 0x0536a4  adrp     x8, #0xad000                            
    // 0x0536a8  ldrsw    x8, [x8, #0xb80]                        
    // 0x0536ac  b        #0x60194                                ; func_0x60194
}

- (id)框选按钮 {   // 0x536b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 框选按钮 即可补全。
    // 0x0536b0  adrp     x8, #0xad000                            
    // 0x0536b4  ldrsw    x8, [x8, #0xb84]                        
    // 0x0536b8  b        #0x601f8                                ; func_0x601f8
}

- (void)set框选按钮:(id)set框选按钮 {   // 0x536bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set框选按钮: 即可补全。
    // 0x0536bc  mov      x1, x2                                  
    // 0x0536c0  adrp     x8, #0xad000                            
    // 0x0536c4  ldrsw    x8, [x8, #0xb84]                        
    // 0x0536c8  b        #0x60194                                ; func_0x60194
}

- (id)测试按钮 {   // 0x536cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 测试按钮 即可补全。
    // 0x0536cc  adrp     x8, #0xad000                            
    // 0x0536d0  ldrsw    x8, [x8, #0xb88]                        
    // 0x0536d4  b        #0x601f8                                ; func_0x601f8
}

- (void)set测试按钮:(id)set测试按钮 {   // 0x536d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set测试按钮: 即可补全。
    // 0x0536d8  mov      x1, x2                                  
    // 0x0536dc  adrp     x8, #0xad000                            
    // 0x0536e0  ldrsw    x8, [x8, #0xb88]                        
    // 0x0536e4  b        #0x60194                                ; func_0x60194
}

- (id)成功段 {   // 0x536e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功段 即可补全。
    // 0x0536e8  adrp     x8, #0xad000                            
    // 0x0536ec  ldrsw    x8, [x8, #0xb8c]                        
    // 0x0536f0  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功段:(id)set成功段 {   // 0x536f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功段: 即可补全。
    // 0x0536f4  mov      x1, x2                                  
    // 0x0536f8  adrp     x8, #0xad000                            
    // 0x0536fc  ldrsw    x8, [x8, #0xb8c]                        
    // 0x053700  b        #0x60194                                ; func_0x60194
}

- (id)成功跳按钮 {   // 0x53704
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功跳按钮 即可补全。
    // 0x053704  adrp     x8, #0xad000                            
    // 0x053708  ldrsw    x8, [x8, #0xb90]                        
    // 0x05370c  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功跳按钮:(id)set成功跳按钮 {   // 0x53710
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功跳按钮: 即可补全。
    // 0x053710  mov      x1, x2                                  
    // 0x053714  adrp     x8, #0xad000                            
    // 0x053718  ldrsw    x8, [x8, #0xb90]                        
    // 0x05371c  b        #0x60194                                ; func_0x60194
}

- (id)失败段 {   // 0x53720
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 失败段 即可补全。
    // 0x053720  adrp     x8, #0xad000                            
    // 0x053724  ldrsw    x8, [x8, #0xb94]                        
    // 0x053728  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败段:(id)set失败段 {   // 0x5372c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set失败段: 即可补全。
    // 0x05372c  mov      x1, x2                                  
    // 0x053730  adrp     x8, #0xad000                            
    // 0x053734  ldrsw    x8, [x8, #0xb94]                        
    // 0x053738  b        #0x60194                                ; func_0x60194
}

- (id)失败跳按钮 {   // 0x5373c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 失败跳按钮 即可补全。
    // 0x05373c  adrp     x8, #0xad000                            
    // 0x053740  ldrsw    x8, [x8, #0xb98]                        
    // 0x053744  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败跳按钮:(id)set失败跳按钮 {   // 0x53748
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set失败跳按钮: 即可补全。
    // 0x053748  mov      x1, x2                                  
    // 0x05374c  adrp     x8, #0xad000                            
    // 0x053750  ldrsw    x8, [x8, #0xb98]                        
    // 0x053754  b        #0x60194                                ; func_0x60194
}

- (id)区域宽行 {   // 0x53758
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 区域宽行 即可补全。
    // 0x053758  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05375c  mov      x29, sp                                 
    // 0x053760  adrp     x8, #0xad000                            
    // 0x053764  ldrsw    x8, [x8, #0xb9c]                        
    // 0x053768  bl       #0x60cac                                ; func_0x60cac
    // 0x05376c  ldp      x29, x30, [sp], #0x10                   
    // 0x053770  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域宽行:(id)set区域宽行 {   // 0x53774
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set区域宽行: 即可补全。
    // 0x053774  mov      x1, x2                                  
    // 0x053778  adrp     x8, #0xad000                            
    // 0x05377c  ldrsw    x8, [x8, #0xb9c]                        
    // 0x053780  b        #0x60324                                ; func_0x60324
}

- (id)区域高行 {   // 0x53784
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 区域高行 即可补全。
    // 0x053784  stp      x29, x30, [sp, #-0x10]!                 
    // 0x053788  mov      x29, sp                                 
    // 0x05378c  adrp     x8, #0xad000                            
    // 0x053790  ldrsw    x8, [x8, #0xba0]                        
    // 0x053794  bl       #0x60cac                                ; func_0x60cac
    // 0x053798  ldp      x29, x30, [sp], #0x10                   
    // 0x05379c  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域高行:(id)set区域高行 {   // 0x537a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set区域高行: 即可补全。
    // 0x0537a0  mov      x1, x2                                  
    // 0x0537a4  adrp     x8, #0xad000                            
    // 0x0537a8  ldrsw    x8, [x8, #0xba0]                        
    // 0x0537ac  b        #0x60324                                ; func_0x60324
}

- (id)成功长按行 {   // 0x537b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功长按行 即可补全。
    // 0x0537b0  adrp     x8, #0xad000                            
    // 0x0537b4  ldrsw    x8, [x8, #0xba4]                        
    // 0x0537b8  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功长按行:(id)set成功长按行 {   // 0x537bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功长按行: 即可补全。
    // 0x0537bc  mov      x1, x2                                  
    // 0x0537c0  adrp     x8, #0xad000                            
    // 0x0537c4  ldrsw    x8, [x8, #0xba4]                        
    // 0x0537c8  b        #0x60194                                ; func_0x60194
}

- (id)成功滑时行 {   // 0x537cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功滑时行 即可补全。
    // 0x0537cc  adrp     x8, #0xad000                            
    // 0x0537d0  ldrsw    x8, [x8, #0xba8]                        
    // 0x0537d4  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功滑时行:(id)set成功滑时行 {   // 0x537d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功滑时行: 即可补全。
    // 0x0537d8  mov      x1, x2                                  
    // 0x0537dc  adrp     x8, #0xad000                            
    // 0x0537e0  ldrsw    x8, [x8, #0xba8]                        
    // 0x0537e4  b        #0x60194                                ; func_0x60194
}

- (id)成功帧数行 {   // 0x537e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功帧数行 即可补全。
    // 0x0537e8  adrp     x8, #0xad000                            
    // 0x0537ec  ldrsw    x8, [x8, #0xbac]                        
    // 0x0537f0  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功帧数行:(id)set成功帧数行 {   // 0x537f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功帧数行: 即可补全。
    // 0x0537f4  mov      x1, x2                                  
    // 0x0537f8  adrp     x8, #0xad000                            
    // 0x0537fc  ldrsw    x8, [x8, #0xbac]                        
    // 0x053800  b        #0x60194                                ; func_0x60194
}

- (id)成功时隔行 {   // 0x53804
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 成功时隔行 即可补全。
    // 0x053804  adrp     x8, #0xad000                            
    // 0x053808  ldrsw    x8, [x8, #0xbb0]                        
    // 0x05380c  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功时隔行:(id)set成功时隔行 {   // 0x53810
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set成功时隔行: 即可补全。
    // 0x053810  mov      x1, x2                                  
    // 0x053814  adrp     x8, #0xad000                            
    // 0x053818  ldrsw    x8, [x8, #0xbb0]                        
    // 0x05381c  b        #0x60194                                ; func_0x60194
}

- (id)路径编辑器 {   // 0x53820
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 路径编辑器 即可补全。
    // 0x053820  adrp     x8, #0xad000                            
    // 0x053824  ldrsw    x8, [x8, #0xbb4]                        
    // 0x053828  b        #0x601f8                                ; func_0x601f8
}

- (void)set路径编辑器:(id)set路径编辑器 {   // 0x5382c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set路径编辑器: 即可补全。
    // 0x05382c  mov      x1, x2                                  
    // 0x053830  adrp     x8, #0xad000                            
    // 0x053834  ldrsw    x8, [x8, #0xbb4]                        
    // 0x053838  b        #0x60194                                ; func_0x60194
}

- (id)等待段 {   // 0x5383c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 等待段 即可补全。
    // 0x05383c  adrp     x8, #0xad000                            
    // 0x053840  ldrsw    x8, [x8, #0xbb8]                        
    // 0x053844  b        #0x601f8                                ; func_0x601f8
}

- (void)set等待段:(id)set等待段 {   // 0x53848
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set等待段: 即可补全。
    // 0x053848  mov      x1, x2                                  
    // 0x05384c  adrp     x8, #0xad000                            
    // 0x053850  ldrsw    x8, [x8, #0xbb8]                        
    // 0x053854  b        #0x60194                                ; func_0x60194
}

- (id)等待超时行 {   // 0x53858
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 等待超时行 即可补全。
    // 0x053858  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05385c  mov      x29, sp                                 
    // 0x053860  adrp     x8, #0xad000                            
    // 0x053864  ldrsw    x8, [x8, #0xbbc]                        
    // 0x053868  bl       #0x60cac                                ; func_0x60cac
    // 0x05386c  ldp      x29, x30, [sp], #0x10                   
    // 0x053870  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set等待超时行:(id)set等待超时行 {   // 0x53874
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识字选择视图 set等待超时行: 即可补全。
    // 0x053874  mov      x1, x2                                  
    // 0x053878  adrp     x8, #0xad000                            
    // 0x05387c  ldrsw    x8, [x8, #0xbbc]                        
    // 0x053880  b        #0x60324                                ; func_0x60324
}

@end