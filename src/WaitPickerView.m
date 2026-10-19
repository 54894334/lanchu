//
//  等待选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 等待选择视图

- (BOOL)显示标记 {   // 0x5e0a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 显示标记 即可补全。
    // 0x05e0a0  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x5e0a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 新建标记视图 即可补全。
    // 0x05e0a4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05e0a8  stp      x29, x30, [sp, #0x10]                   
    // 0x05e0ac  add      x29, sp, #0x10                          
    // 0x05e0b0  adrp     x8, #0xad000                            
    // 0x05e0b4  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x05e0b8  bl       #0x68f5c                                ; _objc_alloc
    // 0x05e0bc  adrp     x8, #0x8c000                            
    // 0x05e0c0  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x05e0c4  bl       #0x6067c                                ; func_0x6067c
    // 0x05e0c8  mov      x19, x0                                 
    // 0x05e0cc  bl       #0x60620                                ; func_0x60620
    // 0x05e0d0  mov      x0, x19                                 
    // 0x05e0d4  bl       #0x60424                                ; func_0x60424
    // 0x05e0d8  mov      x0, x19                                 
    // 0x05e0dc  ldp      x29, x30, [sp, #0x10]                   
    // 0x05e0e0  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x5e0e4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 构建参数 即可补全。
    // 0x05e0e4  sub      sp, sp, #0x140                          
    // 0x05e0e8  stp      d11, d10, [sp, #0xc0]                   
    // 0x05e0ec  stp      d9, d8, [sp, #0xd0]                     
    // 0x05e0f0  stp      x28, x27, [sp, #0xe0]                   
    // 0x05e0f4  stp      x26, x25, [sp, #0xf0]                   
    // 0x05e0f8  stp      x24, x23, [sp, #0x100]                  
    // 0x05e0fc  stp      x22, x21, [sp, #0x110]                  
    // 0x05e100  stp      x20, x19, [sp, #0x120]                  
    // 0x05e104  stp      x29, x30, [sp, #0x130]                  
    // 0x05e108  add      x29, sp, #0x130                         
    // 0x05e10c  mov      x19, x0                                 
    // 0x05e110  adrp     x8, #0x8c000                            
    // 0x05e114  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05e118  ldr      x8, [x8]                                
    // 0x05e11c  stur     x8, [x29, #-0x80]                       
    // 0x05e120  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05e124  mov      x29, x29                                
    // 0x05e128  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e12c  mov      x20, x0                                 
    // 0x05e130  mov      w2, #0xe                                
    // 0x05e134  bl       #0x6e640                                ; [x0 set类型:] x2, x3, x4, x5, x6, x7
    // 0x05e138  bl       #0x60184                                ; func_0x60184
    // 0x05e13c  add      x0, sp, #0x80                           
    // 0x05e140  bl       #0x60ee0                                ; func_0x60ee0
}

- (void)模式段变化:(id)模式段变化 {   // 0x5e844
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 模式段变化: 即可补全。
    // 0x05e844  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05e848  stp      x20, x19, [sp, #0x10]                   
    // 0x05e84c  stp      x29, x30, [sp, #0x20]                   
    // 0x05e850  add      x29, sp, #0x20                          
    // 0x05e854  bl       #0x6029c                                ; func_0x6029c
    // 0x05e858  cmp      x0, #1                                  
    // 0x05e85c  cset     w20, ne                                 
    // 0x05e860  cset     w21, eq                                 
    // 0x05e864  mov      x0, x19                                 
    // 0x05e868  bl       #0x706c0                                ; [x19 动作] x2, x3, x4, x5, x6, x7
    // 0x05e86c  mov      x29, x29                                
    // 0x05e870  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e874  bl       #0x60a10                                ; func_0x60a10
    // 0x05e878  bl       #0x6e600                                ; [x19 set等待随机:] x2, x3, x4, x5, x6, x7
    // 0x05e87c  bl       #0x6019c                                ; func_0x6019c
    // 0x05e880  mov      x0, x19                                 
    // 0x05e884  bl       #0x70fc0                                ; [x19 固定行] x2, x3, x4, x5, x6, x7
    // 0x05e888  mov      x29, x29                                
    // 0x05e88c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e890  mov      x22, x0                                 
    // 0x05e894  mov      x2, x21                                 
    // 0x05e898  bl       #0x6f400                                ; [x19 set隐藏:] x21, x3, x4, x5, x6, x7
    // 0x05e89c  bl       #0x6019c                                ; func_0x6019c
    // 0x05e8a0  mov      x0, x19                                 
}

- (void)结束段变化:(id)结束段变化 {   // 0x5e8dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 结束段变化: 即可补全。
    // 0x05e8dc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05e8e0  stp      x20, x19, [sp, #0x10]                   
    // 0x05e8e4  stp      x29, x30, [sp, #0x20]                   
    // 0x05e8e8  add      x29, sp, #0x20                          
    // 0x05e8ec  bl       #0x6029c                                ; func_0x6029c
    // 0x05e8f0  bl       #0x60290                                ; func_0x60290
    // 0x05e8f4  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05e8f8  mov      x29, x29                                
    // 0x05e8fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e900  bl       #0x60498                                ; func_0x60498
    // 0x05e904  bl       #0x6e5a0                                ; [x0 set等待结束行为:] x2, x3, x4, x5, x6, x7
    // 0x05e908  bl       #0x6018c                                ; func_0x6018c
    // 0x05e90c  mov      x0, x19                                 
    // 0x05e910  ldp      x29, x30, [sp, #0x20]                   
    // 0x05e914  b        #0x60a4c                                ; func_0x60a4c
}

- (void)选择等待跳转 {   // 0x5e918
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 选择等待跳转 即可补全。
    // 0x05e918  sub      sp, sp, #0x40                           
    // 0x05e91c  stp      x29, x30, [sp, #0x30]                   
    // 0x05e920  add      x29, sp, #0x30                          
    // 0x05e924  adrp     x8, #0x8c000                            
    // 0x05e928  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05e92c  str      x8, [sp, #8]                            
    // 0x05e930  adrp     x8, #0x7b000                            
    // 0x05e934  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x05e938  adrp     x8, #0x5e000                            
    // 0x05e93c  add      x8, x8, #0x958                          
    // 0x05e940  str      d0, [sp, #0x10]                         
    // 0x05e944  adrp     x9, #0x8d000                            
    // 0x05e948  add      x9, x9, #0x148                          
    // 0x05e94c  bl       #0x605e4                                ; func_0x605e4
    // 0x05e950  ldp      x29, x30, [sp, #0x30]                   
    // 0x05e954  b        #0x60c74                                ; func_0x60c74
}

- (void)刷新跳转按钮 {   // 0x5e9b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 刷新跳转按钮 即可补全。
    // 0x05e9b0  sub      sp, sp, #0x40                           
    // 0x05e9b4  stp      x22, x21, [sp, #0x10]                   
    // 0x05e9b8  stp      x20, x19, [sp, #0x20]                   
    // 0x05e9bc  stp      x29, x30, [sp, #0x30]                   
    // 0x05e9c0  add      x29, sp, #0x30                          
    // 0x05e9c4  mov      x20, x0                                 
    // 0x05e9c8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05e9cc  mov      x29, x29                                
    // 0x05e9d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e9d4  mov      x21, x0                                 
    // 0x05e9d8  bl       #0x730c0                                ; [x0 等待跳转] x2, x3, x4, x5, x6, x7
    // 0x05e9dc  mov      x29, x29                                
    // 0x05e9e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e9e4  bl       #0x60988                                ; func_0x60988
    // 0x05e9e8  bl       #0x72fe0                                ; [x0 等待动作名By标识:] x2, x3, x4, x5, x6, x7
    // 0x05e9ec  mov      x29, x29                                
    // 0x05e9f0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05e9f4  mov      x19, x0                                 
    // 0x05e9f8  bl       #0x6019c                                ; func_0x6019c
    // 0x05e9fc  bl       #0x6018c                                ; func_0x6018c
    // 0x05ea00  mov      x0, x20                                 
    // 0x05ea04  bl       #0x74260                                ; [x0 跳转按钮] x2, x3, x4, x5, x6, x7
    // 0x05ea08  mov      x29, x29                                
    // 0x05ea0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)配段:(id)配段 {   // 0x5ea74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 配段: 即可补全。
    // 0x05ea74  mov      x0, x30                                 
    // 0x05ea78  bl       #0x60afc                                ; func_0x60afc
    // 0x05ea7c  mov      x30, x0                                 
    // 0x05ea80  stp      x29, x30, [sp, #0xa0]                   
    // 0x05ea84  add      x29, sp, #0xa0                          
    // 0x05ea88  mov      x0, x2                                  
    // 0x05ea8c  adrp     x8, #0x8c000                            
    // 0x05ea90  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05ea94  ldr      x8, [x8]                                
    // 0x05ea98  bl       #0x615e8                                ; func_0x615e8
    // 0x05ea9c  mov      x19, x0                                 
    // 0x05eaa0  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x05eaa4  mov      x29, x29                                
    // 0x05eaa8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05eaac  bl       #0x60300                                ; func_0x60300
    // 0x05eab0  bl       #0x60184                                ; func_0x60184
    // 0x05eab4  bl       #0x20138                                ; _CQThemeNeon
    // 0x05eab8  mov      x29, x29                                
    // 0x05eabc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05eac0  bl       #0x608c4                                ; func_0x608c4
    // 0x05eac4  bl       #0x60184                                ; func_0x60184
    // 0x05eac8  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x05eacc  mov      x29, x29                                
    // 0x05ead0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)新建按钮 {   // 0x5ebbc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 新建按钮 即可补全。
    // 0x05ebbc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05ebc0  stp      x20, x19, [sp, #0x10]                   
    // 0x05ebc4  stp      x29, x30, [sp, #0x20]                   
    // 0x05ebc8  add      x29, sp, #0x20                          
    // 0x05ebcc  adrp     x8, #0xad000                            
    // 0x05ebd0  ldr      x0, [x8, #0x2e8]                        ; class(?0x0)
    // 0x05ebd4  mov      w2, #1                                  
    // 0x05ebd8  bl       #0x6a380                                ; [class(?0x0) buttonWithType:] x2, x3, x4, x5, x6, x7
    // 0x05ebdc  mov      x29, x29                                
    // 0x05ebe0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05ebe4  mov      x19, x0                                 
    // 0x05ebe8  adrp     x8, #0xad000                            
    // 0x05ebec  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x05ebf0  fmov     d0, #13.00000000                        
    // 0x05ebf4  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05ebf8  mov      x29, x29                                
    // 0x05ebfc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05ec00  bl       #0x60290                                ; func_0x60290
    // 0x05ec04  bl       #0x6fb80                                ; [class(?0x0) titleLabel] x2, x3, x4, x5, x6, x7
    // 0x05ec08  mov      x29, x29                                
    // 0x05ec0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05ec10  bl       #0x608b8                                ; func_0x608b8
    // 0x05ec14  bl       #0x6018c                                ; func_0x6018c
    // 0x05ec18  bl       #0x60184                                ; func_0x60184
}

- (id)等待动作名By标识:(id)等待动作名By标识 {   // 0x5ec78
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 等待动作名By标识: 即可补全。
    // 0x05ec78  sub      sp, sp, #0x130                          
    // 0x05ec7c  stp      x28, x27, [sp, #0xd0]                   
    // 0x05ec80  stp      x26, x25, [sp, #0xe0]                   
    // 0x05ec84  stp      x24, x23, [sp, #0xf0]                   
    // 0x05ec88  stp      x22, x21, [sp, #0x100]                  
    // 0x05ec8c  stp      x20, x19, [sp, #0x110]                  
    // 0x05ec90  stp      x29, x30, [sp, #0x120]                  
    // 0x05ec94  add      x29, sp, #0x120                         
    // 0x05ec98  mov      x0, x2                                  
    // 0x05ec9c  adrp     x8, #0x8c000                            
    // 0x05eca0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05eca4  ldr      x8, [x8]                                
    // 0x05eca8  stur     x8, [x29, #-0x58]                       
    // 0x05ecac  bl       #0x6904c                                ; _objc_retain
    // 0x05ecb0  mov      x19, x0                                 
    // 0x05ecb4  bl       #0x6b300                                ; [x2 length] x2, x3, x4, x5, x6, x7
    // 0x05ecb8  cbz      x0, #0x5eda4                            
    // 0x05ecbc  bl       #0x61070                                ; func_0x61070
    // 0x05ecc0  adrp     x8, #0xad000                            
    // 0x05ecc4  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x05ecc8  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x05eccc  mov      x29, x29                                
    // 0x05ecd0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05ecd4  mov      x21, x0                                 
}

- (double)面板附加高度 {   // 0x5ee10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 面板附加高度 即可补全。
    // 0x05ee10  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05ee14  stp      x29, x30, [sp, #0x10]                   
    // 0x05ee18  add      x29, sp, #0x10                          
    // 0x05ee1c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05ee20  mov      x29, x29                                
    // 0x05ee24  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05ee28  mov      x19, x0                                 
    // 0x05ee2c  bl       #0x73080                                ; [x0 等待结束行为] x2, x3, x4, x5, x6, x7
    // 0x05ee30  mov      x20, x0                                 
    // 0x05ee34  bl       #0x601b8                                ; func_0x601b8
    // 0x05ee38  cmp      x20, #1                                 
    // 0x05ee3c  adrp     x8, #0x7c000                            
    // 0x05ee40  ldr      d0, [x8, #0x930]                        ; ptr_0x7c930
    // 0x05ee44  mov      x8, #0x405b000000000000                 
    // 0x05ee48  fmov     d1, x8                                  
    // 0x05ee4c  fcsel    d0, d1, d0, eq                          
    // 0x05ee50  ldp      x29, x30, [sp, #0x10]                   
    // 0x05ee54  ldp      x20, x19, [sp], #0x20                   
    // 0x05ee58  ret                                              
}

- (void)布局参数区 {   // 0x5ee5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 布局参数区 即可补全。
    // 0x05ee5c  sub      sp, sp, #0x60                           
    // 0x05ee60  stp      d11, d10, [sp, #0x10]                   
    // 0x05ee64  stp      d9, d8, [sp, #0x20]                     
    // 0x05ee68  stp      x22, x21, [sp, #0x30]                   
    // 0x05ee6c  stp      x20, x19, [sp, #0x40]                   
    // 0x05ee70  stp      x29, x30, [sp, #0x50]                   
    // 0x05ee74  add      x29, sp, #0x50                          
    // 0x05ee78  mov      x19, x0                                 
    // 0x05ee7c  adrp     x8, #0xad000                            
    // 0x05ee80  ldr      x8, [x8, #0x5b0]                        ; class(等待选择视图)
    // 0x05ee84  stp      x0, x8, [sp]                            
    // 0x05ee88  adrp     x8, #0xab000                            
    // 0x05ee8c  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x05ee90  bl       #0x60a00                                ; func_0x60a00
    // 0x05ee94  mov      x0, x19                                 
    // 0x05ee98  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x05ee9c  mov      x29, x29                                
    // 0x05eea0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05eea4  bl       #0x60850                                ; func_0x60850
    // 0x05eea8  fmov     d8, d2                                  
    // 0x05eeac  bl       #0x60184                                ; func_0x60184
    // 0x05eeb0  bl       #0x60c4c                                ; func_0x60c4c
    // 0x05eeb4  bl       #0x60950                                ; func_0x60950
    // 0x05eeb8  bl       #0x728c0                                ; [x0 模式段] x2, x3, x4, x5, x6, x7
}

- (UISegmentedControl *)模式段 {   // 0x5efc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 模式段 即可补全。
    // 0x05efc0  adrp     x8, #0xad000                            
    // 0x05efc4  ldrsw    x8, [x8, #0xcbc]                        
    // 0x05efc8  b        #0x601f8                                ; func_0x601f8
}

- (void)set模式段:(UISegmentedControl *)set模式段 {   // 0x5efcc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set模式段: 即可补全。
    // 0x05efcc  mov      x1, x2                                  
    // 0x05efd0  adrp     x8, #0xad000                            
    // 0x05efd4  ldrsw    x8, [x8, #0xcbc]                        
    // 0x05efd8  b        #0x60194                                ; func_0x60194
}

- (参数行 *)固定行 {   // 0x5efdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 固定行 即可补全。
    // 0x05efdc  adrp     x8, #0xad000                            
    // 0x05efe0  ldrsw    x8, [x8, #0xcc0]                        
    // 0x05efe4  b        #0x601f8                                ; func_0x601f8
}

- (void)set固定行:(参数行 *)set固定行 {   // 0x5efe8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set固定行: 即可补全。
    // 0x05efe8  mov      x1, x2                                  
    // 0x05efec  adrp     x8, #0xad000                            
    // 0x05eff0  ldrsw    x8, [x8, #0xcc0]                        
    // 0x05eff4  b        #0x60194                                ; func_0x60194
}

- (参数行 *)下限行 {   // 0x5eff8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 下限行 即可补全。
    // 0x05eff8  adrp     x8, #0xad000                            
    // 0x05effc  ldrsw    x8, [x8, #0xcc4]                        
    // 0x05f000  b        #0x601f8                                ; func_0x601f8
}

- (void)set下限行:(参数行 *)set下限行 {   // 0x5f004
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set下限行: 即可补全。
    // 0x05f004  mov      x1, x2                                  
    // 0x05f008  adrp     x8, #0xad000                            
    // 0x05f00c  ldrsw    x8, [x8, #0xcc4]                        
    // 0x05f010  b        #0x60194                                ; func_0x60194
}

- (参数行 *)上限行 {   // 0x5f014
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 上限行 即可补全。
    // 0x05f014  adrp     x8, #0xad000                            
    // 0x05f018  ldrsw    x8, [x8, #0xcc8]                        
    // 0x05f01c  b        #0x601f8                                ; func_0x601f8
}

- (void)set上限行:(参数行 *)set上限行 {   // 0x5f020
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set上限行: 即可补全。
    // 0x05f020  mov      x1, x2                                  
    // 0x05f024  adrp     x8, #0xad000                            
    // 0x05f028  ldrsw    x8, [x8, #0xcc8]                        
    // 0x05f02c  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)结束段 {   // 0x5f030
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 结束段 即可补全。
    // 0x05f030  adrp     x8, #0xad000                            
    // 0x05f034  ldrsw    x8, [x8, #0xccc]                        
    // 0x05f038  b        #0x601f8                                ; func_0x601f8
}

- (void)set结束段:(UISegmentedControl *)set结束段 {   // 0x5f03c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set结束段: 即可补全。
    // 0x05f03c  mov      x1, x2                                  
    // 0x05f040  adrp     x8, #0xad000                            
    // 0x05f044  ldrsw    x8, [x8, #0xccc]                        
    // 0x05f048  b        #0x60194                                ; func_0x60194
}

- (UIButton *)跳转按钮 {   // 0x5f04c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 跳转按钮 即可补全。
    // 0x05f04c  adrp     x8, #0xad000                            
    // 0x05f050  ldrsw    x8, [x8, #0xcd0]                        
    // 0x05f054  b        #0x601f8                                ; func_0x601f8
}

- (void)set跳转按钮:(UIButton *)set跳转按钮 {   // 0x5f058
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 等待选择视图 set跳转按钮: 即可补全。
    // 0x05f058  mov      x1, x2                                  
    // 0x05f05c  adrp     x8, #0xad000                            
    // 0x05f060  ldrsw    x8, [x8, #0xcd0]                        
    // 0x05f064  b        #0x60194                                ; func_0x60194
}

@end