//
//  取字选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 取字选择视图

- (BOOL)显示标记 {   // 0x58784
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 显示标记 即可补全。
    // 0x058784  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x58788
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 新建标记视图 即可补全。
    // 0x058788  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05878c  stp      x29, x30, [sp, #0x10]                   
    // 0x058790  add      x29, sp, #0x10                          
    // 0x058794  adrp     x8, #0xad000                            
    // 0x058798  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x05879c  bl       #0x68f5c                                ; _objc_alloc
    // 0x0587a0  adrp     x8, #0x8c000                            
    // 0x0587a4  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x0587a8  bl       #0x6067c                                ; func_0x6067c
    // 0x0587ac  mov      x19, x0                                 
    // 0x0587b0  bl       #0x60620                                ; func_0x60620
    // 0x0587b4  mov      x0, x19                                 
    // 0x0587b8  bl       #0x60424                                ; func_0x60424
    // 0x0587bc  mov      x0, x19                                 
    // 0x0587c0  ldp      x29, x30, [sp, #0x10]                   
    // 0x0587c4  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x587c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 构建参数 即可补全。
    // 0x0587c8  sub      sp, sp, #0x1d0                          
    // 0x0587cc  stp      d11, d10, [sp, #0x150]                  
    // 0x0587d0  stp      d9, d8, [sp, #0x160]                    
    // 0x0587d4  stp      x28, x27, [sp, #0x170]                  
    // 0x0587d8  stp      x26, x25, [sp, #0x180]                  
    // 0x0587dc  stp      x24, x23, [sp, #0x190]                  
    // 0x0587e0  stp      x22, x21, [sp, #0x1a0]                  
    // 0x0587e4  stp      x20, x19, [sp, #0x1b0]                  
    // 0x0587e8  stp      x29, x30, [sp, #0x1c0]                  
    // 0x0587ec  add      x29, sp, #0x1c0                         
    // 0x0587f0  mov      x19, x0                                 
    // 0x0587f4  adrp     x8, #0x8c000                            
    // 0x0587f8  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0587fc  ldr      x8, [x8]                                
    // 0x058800  stur     x8, [x29, #-0x80]                       
    // 0x058804  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x058808  mov      x29, x29                                
    // 0x05880c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x058810  mov      x20, x0                                 
    // 0x058814  mov      w2, #0xa                                
    // 0x058818  bl       #0x6e640                                ; [x0 set类型:] x2, x3, x4, x5, x6, x7
    // 0x05881c  bl       #0x60184                                ; func_0x60184
    // 0x058820  add      x0, sp, #0xd8                           
    // 0x058824  bl       #0x60ee0                                ; func_0x60ee0
}

- (void)配段:(id)配段 {   // 0x5983c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 配段: 即可补全。
    // 0x05983c  mov      x0, x30                                 
    // 0x059840  bl       #0x60afc                                ; func_0x60afc
    // 0x059844  mov      x30, x0                                 
    // 0x059848  stp      x29, x30, [sp, #0xa0]                   
    // 0x05984c  add      x29, sp, #0xa0                          
    // 0x059850  mov      x0, x2                                  
    // 0x059854  adrp     x8, #0x8c000                            
    // 0x059858  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05985c  ldr      x8, [x8]                                
    // 0x059860  bl       #0x615e8                                ; func_0x615e8
    // 0x059864  mov      x19, x0                                 
    // 0x059868  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x05986c  mov      x29, x29                                
    // 0x059870  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x059874  bl       #0x60300                                ; func_0x60300
    // 0x059878  bl       #0x60184                                ; func_0x60184
    // 0x05987c  bl       #0x20138                                ; _CQThemeNeon
    // 0x059880  mov      x29, x29                                
    // 0x059884  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x059888  bl       #0x608c4                                ; func_0x608c4
    // 0x05988c  bl       #0x60184                                ; func_0x60184
    // 0x059890  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x059894  mov      x29, x29                                
    // 0x059898  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (double)面板附加高度 {   // 0x59984
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 面板附加高度 即可补全。
    // 0x059984  stp      d9, d8, [sp, #-0x40]!                   
    // 0x059988  stp      x22, x21, [sp, #0x10]                   
    // 0x05998c  stp      x20, x19, [sp, #0x20]                   
    // 0x059990  stp      x29, x30, [sp, #0x30]                   
    // 0x059994  add      x29, sp, #0x30                          
    // 0x059998  mov      x19, x0                                 
    // 0x05999c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0599a0  mov      x29, x29                                
    // 0x0599a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0599a8  bl       #0x622d8                                ; func_0x622d8
    // 0x0599ac  cmp      x0, #1                                  
    // 0x0599b0  cset     w21, eq                                 
    // 0x0599b4  bl       #0x60184                                ; func_0x60184
    // 0x0599b8  adrp     x8, #0x7c000                            
    // 0x0599bc  add      x8, x8, #0x970                          
    // 0x0599c0  ldr      d8, [x8, w21, uxtw #3]                  
    // 0x0599c4  mov      x0, x19                                 
    // 0x0599c8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0599cc  mov      x29, x29                                
    // 0x0599d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0599d4  mov      x20, x0                                 
    // 0x0599d8  bl       #0x70a00                                ; [x0 取字成功行为] x2, x3, x4, x5, x6, x7
    // 0x0599dc  mov      x21, x0                                 
    // 0x0599e0  bl       #0x60184                                ; func_0x60184
}

- (void)布局参数区 {   // 0x59a2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 布局参数区 即可补全。
    // 0x059a2c  sub      sp, sp, #0x90                           
    // 0x059a30  stp      d15, d14, [sp, #0x10]                   
    // 0x059a34  stp      d13, d12, [sp, #0x20]                   
    // 0x059a38  stp      d11, d10, [sp, #0x30]                   
    // 0x059a3c  stp      d9, d8, [sp, #0x40]                     
    // 0x059a40  stp      x24, x23, [sp, #0x50]                   
    // 0x059a44  stp      x22, x21, [sp, #0x60]                   
    // 0x059a48  stp      x20, x19, [sp, #0x70]                   
    // 0x059a4c  stp      x29, x30, [sp, #0x80]                   
    // 0x059a50  add      x29, sp, #0x80                          
    // 0x059a54  mov      x19, x0                                 
    // 0x059a58  adrp     x8, #0xad000                            
    // 0x059a5c  ldr      x8, [x8, #0x598]                        ; class(取字选择视图)
    // 0x059a60  stp      x0, x8, [sp]                            
    // 0x059a64  adrp     x8, #0xab000                            
    // 0x059a68  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x059a6c  bl       #0x60a00                                ; func_0x60a00
    // 0x059a70  mov      x0, x19                                 
    // 0x059a74  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x059a78  mov      x29, x29                                
    // 0x059a7c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x059a80  bl       #0x60850                                ; func_0x60850
    // 0x059a84  fmov     d9, d2                                  
    // 0x059a88  bl       #0x60184                                ; func_0x60184
}

- (id)新建按钮 {   // 0x5a04c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 新建按钮 即可补全。
    // 0x05a04c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a050  stp      x20, x19, [sp, #0x10]                   
    // 0x05a054  stp      x29, x30, [sp, #0x20]                   
    // 0x05a058  add      x29, sp, #0x20                          
    // 0x05a05c  adrp     x8, #0xad000                            
    // 0x05a060  ldr      x0, [x8, #0x2e8]                        ; class(?0x0)
    // 0x05a064  mov      w2, #1                                  
    // 0x05a068  bl       #0x6a380                                ; [class(?0x0) buttonWithType:] x2, x3, x4, x5, x6, x7
    // 0x05a06c  mov      x29, x29                                
    // 0x05a070  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a074  mov      x19, x0                                 
    // 0x05a078  adrp     x8, #0xad000                            
    // 0x05a07c  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x05a080  fmov     d0, #13.00000000                        
    // 0x05a084  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05a088  mov      x29, x29                                
    // 0x05a08c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a090  bl       #0x60290                                ; func_0x60290
    // 0x05a094  bl       #0x6fb80                                ; [class(?0x0) titleLabel] x2, x3, x4, x5, x6, x7
    // 0x05a098  mov      x29, x29                                
    // 0x05a09c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a0a0  bl       #0x608b8                                ; func_0x608b8
    // 0x05a0a4  bl       #0x6018c                                ; func_0x6018c
    // 0x05a0a8  bl       #0x60184                                ; func_0x60184
}

- (id)新建输入框:(id)新建输入框 {   // 0x5a108
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 新建输入框: 即可补全。
    // 0x05a108  sub      sp, sp, #0x70                           
    // 0x05a10c  stp      x24, x23, [sp, #0x30]                   
    // 0x05a110  stp      x22, x21, [sp, #0x40]                   
    // 0x05a114  stp      x20, x19, [sp, #0x50]                   
    // 0x05a118  stp      x29, x30, [sp, #0x60]                   
    // 0x05a11c  add      x29, sp, #0x60                          
    // 0x05a120  mov      x20, x0                                 
    // 0x05a124  adrp     x8, #0x8c000                            
    // 0x05a128  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05a12c  ldr      x8, [x8]                                
    // 0x05a130  str      x8, [sp, #0x28]                         
    // 0x05a134  adrp     x8, #0xad000                            
    // 0x05a138  ldr      x19, [x8, #0x258]                       ; class(?0x0)
    // 0x05a13c  bl       #0x60364                                ; func_0x60364
    // 0x05a140  bl       #0x6159c                                ; func_0x6159c
    // 0x05a144  mov      x19, x0                                 
    // 0x05a148  adrp     x8, #0xad000                            
    // 0x05a14c  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x05a150  fmov     d0, #14.00000000                        
    // 0x05a154  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05a158  mov      x29, x29                                
    // 0x05a15c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a160  mov      x22, x0                                 
    // 0x05a164  mov      x0, x19                                 
}

- (void)收起键盘 {   // 0x5a344
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 收起键盘 即可补全。
    // 0x05a344  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05a348  stp      x29, x30, [sp, #0x10]                   
    // 0x05a34c  add      x29, sp, #0x10                          
    // 0x05a350  mov      x19, x0                                 
    // 0x05a354  bl       #0x72ea0                                ; [x0 目标框] x2, x3, x4, x5, x6, x7
    // 0x05a358  mov      x29, x29                                
    // 0x05a35c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a360  bl       #0x612b4                                ; func_0x612b4
    // 0x05a364  bl       #0x60184                                ; func_0x60184
    // 0x05a368  mov      x0, x19                                 
    // 0x05a36c  bl       #0x725a0                                ; [x0 替换框] x2, x3, x4, x5, x6, x7
    // 0x05a370  mov      x29, x29                                
    // 0x05a374  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a378  bl       #0x612b4                                ; func_0x612b4
    // 0x05a37c  bl       #0x60184                                ; func_0x60184
    // 0x05a380  mov      x0, x19                                 
    // 0x05a384  bl       #0x72900                                ; [x0 正则框] x2, x3, x4, x5, x6, x7
    // 0x05a388  mov      x29, x29                                
    // 0x05a38c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a390  bl       #0x612b4                                ; func_0x612b4
    // 0x05a394  bl       #0x60184                                ; func_0x60184
    // 0x05a398  mov      x0, x19                                 
    // 0x05a39c  bl       #0x72f80                                ; [x0 第几条框] x2, x3, x4, x5, x6, x7
    // 0x05a3a0  mov      x29, x29                                
}

- (void)模式段变化:(id)模式段变化 {   // 0x5a3b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 模式段变化: 即可补全。
    // 0x05a3b8  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a3bc  stp      x20, x19, [sp, #0x10]                   
    // 0x05a3c0  stp      x29, x30, [sp, #0x20]                   
    // 0x05a3c4  add      x29, sp, #0x20                          
    // 0x05a3c8  bl       #0x6029c                                ; func_0x6029c
    // 0x05a3cc  bl       #0x60654                                ; func_0x60654
    // 0x05a3d0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a3d4  mov      x29, x29                                
    // 0x05a3d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a3dc  bl       #0x60498                                ; func_0x60498
    // 0x05a3e0  bl       #0x6d340                                ; [x0 set取字模式:] x2, x3, x4, x5, x6, x7
    // 0x05a3e4  bl       #0x6018c                                ; func_0x6018c
    // 0x05a3e8  mov      x0, x19                                 
    // 0x05a3ec  ldp      x29, x30, [sp, #0x20]                   
    // 0x05a3f0  b        #0x60240                                ; func_0x60240
}

- (void)高级段变化:(id)高级段变化 {   // 0x5a3f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 高级段变化: 即可补全。
    // 0x05a3f4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a3f8  stp      x20, x19, [sp, #0x10]                   
    // 0x05a3fc  stp      x29, x30, [sp, #0x20]                   
    // 0x05a400  add      x29, sp, #0x20                          
    // 0x05a404  bl       #0x6029c                                ; func_0x6029c
    // 0x05a408  bl       #0x60654                                ; func_0x60654
    // 0x05a40c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a410  mov      x29, x29                                
    // 0x05a414  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a418  bl       #0x60498                                ; func_0x60498
    // 0x05a41c  bl       #0x6d400                                ; [x0 set取字高级类型:] x2, x3, x4, x5, x6, x7
    // 0x05a420  bl       #0x6018c                                ; func_0x6018c
    // 0x05a424  mov      x0, x19                                 
    // 0x05a428  ldp      x29, x30, [sp, #0x20]                   
    // 0x05a42c  b        #0x60240                                ; func_0x60240
}

- (void)目标框变化:(id)目标框变化 {   // 0x5a430
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 目标框变化: 即可补全。
    // 0x05a430  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05a434  stp      x29, x30, [sp, #0x10]                   
    // 0x05a438  add      x29, sp, #0x10                          
    // 0x05a43c  bl       #0x61290                                ; func_0x61290
    // 0x05a440  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x05a444  mov      x29, x29                                
    // 0x05a448  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a44c  bl       #0x60290                                ; func_0x60290
    // 0x05a450  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a454  mov      x29, x29                                
    // 0x05a458  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a45c  bl       #0x61274                                ; func_0x61274
    // 0x05a460  bl       #0x6d380                                ; [x0 set取字目标文本:] x2, x3, x4, x5, x6, x7
    // 0x05a464  bl       #0x601b8                                ; func_0x601b8
    // 0x05a468  mov      x0, x20                                 
    // 0x05a46c  ldp      x29, x30, [sp, #0x10]                   
    // 0x05a470  b        #0x60270                                ; func_0x60270
}

- (void)替换框变化:(id)替换框变化 {   // 0x5a474
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 替换框变化: 即可补全。
    // 0x05a474  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05a478  stp      x29, x30, [sp, #0x10]                   
    // 0x05a47c  add      x29, sp, #0x10                          
    // 0x05a480  bl       #0x61290                                ; func_0x61290
    // 0x05a484  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x05a488  mov      x29, x29                                
    // 0x05a48c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a490  bl       #0x60290                                ; func_0x60290
    // 0x05a494  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a498  mov      x29, x29                                
    // 0x05a49c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a4a0  bl       #0x61274                                ; func_0x61274
    // 0x05a4a4  bl       #0x6d320                                ; [x0 set取字替换文本:] x2, x3, x4, x5, x6, x7
    // 0x05a4a8  bl       #0x601b8                                ; func_0x601b8
    // 0x05a4ac  mov      x0, x20                                 
    // 0x05a4b0  ldp      x29, x30, [sp, #0x10]                   
    // 0x05a4b4  b        #0x60270                                ; func_0x60270
}

- (void)正则框变化:(id)正则框变化 {   // 0x5a4b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 正则框变化: 即可补全。
    // 0x05a4b8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05a4bc  stp      x29, x30, [sp, #0x10]                   
    // 0x05a4c0  add      x29, sp, #0x10                          
    // 0x05a4c4  bl       #0x61290                                ; func_0x61290
    // 0x05a4c8  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x05a4cc  mov      x29, x29                                
    // 0x05a4d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a4d4  bl       #0x60290                                ; func_0x60290
    // 0x05a4d8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a4dc  mov      x29, x29                                
    // 0x05a4e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a4e4  bl       #0x61274                                ; func_0x61274
    // 0x05a4e8  bl       #0x6d360                                ; [x0 set取字正则:] x2, x3, x4, x5, x6, x7
    // 0x05a4ec  bl       #0x601b8                                ; func_0x601b8
    // 0x05a4f0  mov      x0, x20                                 
    // 0x05a4f4  ldp      x29, x30, [sp, #0x10]                   
    // 0x05a4f8  b        #0x60270                                ; func_0x60270
}

- (void)第几条框变化:(id)第几条框变化 {   // 0x5a4fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 第几条框变化: 即可补全。
    // 0x05a4fc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a500  stp      x20, x19, [sp, #0x10]                   
    // 0x05a504  stp      x29, x30, [sp, #0x20]                   
    // 0x05a508  add      x29, sp, #0x20                          
    // 0x05a50c  bl       #0x61290                                ; func_0x61290
    // 0x05a510  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x05a514  mov      x29, x29                                
    // 0x05a518  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a51c  mov      x20, x0                                 
    // 0x05a520  bl       #0x6b140                                ; [x0 integerValue] x2, x3, x4, x5, x6, x7
    // 0x05a524  mov      x21, x0                                 
    // 0x05a528  bl       #0x60184                                ; func_0x60184
    // 0x05a52c  bic      x20, x21, x21, asr #63                  
    // 0x05a530  mov      x0, x19                                 
    // 0x05a534  bl       #0x706c0                                ; [x19 动作] x2, x3, x4, x5, x6, x7
    // 0x05a538  mov      x29, x29                                
    // 0x05a53c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a540  bl       #0x61274                                ; func_0x61274
    // 0x05a544  bl       #0x6d3a0                                ; [x19 set取字第几条:] x2, x3, x4, x5, x6, x7
    // 0x05a548  mov      x0, x19                                 
    // 0x05a54c  ldp      x29, x30, [sp, #0x20]                   
    // 0x05a550  b        #0x601c0                                ; func_0x601c0
}

- (void)存储段变化:(id)存储段变化 {   // 0x5a554
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 存储段变化: 即可补全。
    // 0x05a554  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05a558  stp      x29, x30, [sp, #0x10]                   
    // 0x05a55c  add      x29, sp, #0x10                          
    // 0x05a560  bl       #0x6029c                                ; func_0x6029c
    // 0x05a564  bl       #0x60654                                ; func_0x60654
    // 0x05a568  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a56c  mov      x29, x29                                
    // 0x05a570  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a574  bl       #0x61274                                ; func_0x61274
    // 0x05a578  bl       #0x6d2c0                                ; [x0 set取字存储:] x2, x3, x4, x5, x6, x7
    // 0x05a57c  mov      x0, x19                                 
    // 0x05a580  ldp      x29, x30, [sp, #0x10]                   
    // 0x05a584  b        #0x60270                                ; func_0x60270
}

- (void)成功段变化:(id)成功段变化 {   // 0x5a588
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 成功段变化: 即可补全。
    // 0x05a588  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a58c  stp      x20, x19, [sp, #0x10]                   
    // 0x05a590  stp      x29, x30, [sp, #0x20]                   
    // 0x05a594  add      x29, sp, #0x20                          
    // 0x05a598  bl       #0x6029c                                ; func_0x6029c
    // 0x05a59c  bl       #0x60290                                ; func_0x60290
    // 0x05a5a0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a5a4  mov      x29, x29                                
    // 0x05a5a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a5ac  bl       #0x60498                                ; func_0x60498
    // 0x05a5b0  bl       #0x6d2e0                                ; [x0 set取字成功行为:] x2, x3, x4, x5, x6, x7
    // 0x05a5b4  bl       #0x6018c                                ; func_0x6018c
    // 0x05a5b8  mov      x0, x19                                 
    // 0x05a5bc  ldp      x29, x30, [sp, #0x20]                   
    // 0x05a5c0  b        #0x60240                                ; func_0x60240
}

- (void)失败段变化:(id)失败段变化 {   // 0x5a5c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 失败段变化: 即可补全。
    // 0x05a5c4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05a5c8  stp      x20, x19, [sp, #0x10]                   
    // 0x05a5cc  stp      x29, x30, [sp, #0x20]                   
    // 0x05a5d0  add      x29, sp, #0x20                          
    // 0x05a5d4  bl       #0x6029c                                ; func_0x6029c
    // 0x05a5d8  bl       #0x60290                                ; func_0x60290
    // 0x05a5dc  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05a5e0  mov      x29, x29                                
    // 0x05a5e4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a5e8  bl       #0x60498                                ; func_0x60498
    // 0x05a5ec  bl       #0x6d280                                ; [x0 set取字失败行为:] x2, x3, x4, x5, x6, x7
    // 0x05a5f0  bl       #0x6018c                                ; func_0x6018c
    // 0x05a5f4  mov      x0, x19                                 
    // 0x05a5f8  ldp      x29, x30, [sp, #0x20]                   
    // 0x05a5fc  b        #0x60240                                ; func_0x60240
}

- (void)选择成功跳转 {   // 0x5a600
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 选择成功跳转 即可补全。
    // 0x05a600  sub      sp, sp, #0x40                           
    // 0x05a604  stp      x29, x30, [sp, #0x30]                   
    // 0x05a608  add      x29, sp, #0x30                          
    // 0x05a60c  adrp     x8, #0x8c000                            
    // 0x05a610  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05a614  str      x8, [sp, #8]                            
    // 0x05a618  adrp     x8, #0x7b000                            
    // 0x05a61c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x05a620  adrp     x8, #0x5a000                            
    // 0x05a624  add      x8, x8, #0x640                          
    // 0x05a628  str      d0, [sp, #0x10]                         
    // 0x05a62c  adrp     x9, #0x8d000                            
    // 0x05a630  add      x9, x9, #0x148                          
    // 0x05a634  bl       #0x605e4                                ; func_0x605e4
    // 0x05a638  ldp      x29, x30, [sp, #0x30]                   
    // 0x05a63c  b        #0x60c74                                ; func_0x60c74
}

- (void)选择失败跳转 {   // 0x5a680
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 选择失败跳转 即可补全。
    // 0x05a680  sub      sp, sp, #0x40                           
    // 0x05a684  stp      x29, x30, [sp, #0x30]                   
    // 0x05a688  add      x29, sp, #0x30                          
    // 0x05a68c  adrp     x8, #0x8c000                            
    // 0x05a690  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05a694  str      x8, [sp, #8]                            
    // 0x05a698  adrp     x8, #0x7b000                            
    // 0x05a69c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x05a6a0  adrp     x8, #0x5a000                            
    // 0x05a6a4  add      x8, x8, #0x6c0                          
    // 0x05a6a8  str      d0, [sp, #0x10]                         
    // 0x05a6ac  adrp     x9, #0x8d000                            
    // 0x05a6b0  add      x9, x9, #0x148                          
    // 0x05a6b4  bl       #0x605e4                                ; func_0x605e4
    // 0x05a6b8  ldp      x29, x30, [sp, #0x30]                   
    // 0x05a6bc  b        #0x60c74                                ; func_0x60c74
}

- (void)刷新跳转按钮 {   // 0x5a700
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 刷新跳转按钮 即可补全。
    // 0x05a700  sub      sp, sp, #0x90                           
    // 0x05a704  mov      x2, x30                                 
    // 0x05a708  bl       #0x603cc                                ; func_0x603cc
    // 0x05a70c  mov      x30, x2                                 
    // 0x05a710  stp      x29, x30, [sp, #0x80]                   
    // 0x05a714  add      x29, sp, #0x80                          
    // 0x05a718  mov      x19, x0                                 
    // 0x05a71c  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x05a720  mov      x29, x29                                
    // 0x05a724  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a728  mov      x21, x0                                 
    // 0x05a72c  bl       #0x70b00                                ; [x0 取字跳转] x30, x3, x4, x5, x6, x7
    // 0x05a730  mov      x29, x29                                
    // 0x05a734  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a738  bl       #0x60a08                                ; func_0x60a08
    // 0x05a73c  mov      x20, x0                                 
    // 0x05a740  bl       #0x6019c                                ; func_0x6019c
    // 0x05a744  bl       #0x6018c                                ; func_0x6018c
    // 0x05a748  mov      x0, x19                                 
    // 0x05a74c  bl       #0x71b60                                ; [x0 成功跳按钮] x30, x3, x4, x5, x6, x7
    // 0x05a750  mov      x29, x29                                
    // 0x05a754  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05a758  bl       #0x60e60                                ; func_0x60e60
    // 0x05a75c  bl       #0x6f560                                ; [x0 shared] x30, x3, x4, x5, x6, x7
}

- (void)框选识别区 {   // 0x5a8f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 框选识别区 即可补全。
    // 0x05a8f0  sub      sp, sp, #0x50                           
    // 0x05a8f4  stp      x20, x19, [sp, #0x30]                   
    // 0x05a8f8  stp      x29, x30, [sp, #0x40]                   
    // 0x05a8fc  add      x29, sp, #0x40                          
    // 0x05a900  bl       #0x61d28                                ; func_0x61d28
    // 0x05a904  adrp     x8, #0xad000                            
    // 0x05a908  ldr      x20, [x8, #0x480]                       ; class(模板裁切视图)
    // 0x05a90c  adrp     x8, #0x8c000                            
    // 0x05a910  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x05a914  str      x8, [sp]                                
    // 0x05a918  adrp     x8, #0x7b000                            
    // 0x05a91c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x05a920  str      d0, [sp, #8]                            
    // 0x05a924  adrp     x8, #0x5a000                            
    // 0x05a928  add      x8, x8, #0x95c                          
    // 0x05a92c  adrp     x9, #0x8d000                            
    // 0x05a930  add      x9, x9, #0x938                          
    // 0x05a934  bl       #0x60720                                ; func_0x60720
    // 0x05a938  bl       #0x60fc0                                ; func_0x60fc0
    // 0x05a93c  bl       #0x604a4                                ; func_0x604a4
    // 0x05a940  bl       #0x60d9c                                ; func_0x60d9c
    // 0x05a944  ldp      x29, x30, [sp, #0x40]                   
    // 0x05a948  b        #0x60f28                                ; func_0x60f28
    // 0x05a94c  mov      x20, x0                                 
}

- (void)测试提取 {   // 0x5a9ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 测试提取 即可补全。
    // 0x05a9ec  sub      sp, sp, #0x160                          
    // 0x05a9f0  stp      x28, x27, [sp, #0x100]                  
    // 0x05a9f4  stp      x26, x25, [sp, #0x110]                  
    // 0x05a9f8  stp      x24, x23, [sp, #0x120]                  
    // 0x05a9fc  stp      x22, x21, [sp, #0x130]                  
    // 0x05aa00  stp      x20, x19, [sp, #0x140]                  
    // 0x05aa04  stp      x29, x30, [sp, #0x150]                  
    // 0x05aa08  add      x29, sp, #0x150                         
    // 0x05aa0c  mov      x23, x0                                 
    // 0x05aa10  adrp     x8, #0x8c000                            
    // 0x05aa14  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05aa18  ldr      x8, [x8]                                
    // 0x05aa1c  stur     x8, [x29, #-0x60]                       
    // 0x05aa20  adrp     x8, #0xad000                            
    // 0x05aa24  ldr      x19, [x8, #0x208]                       ; class(CQScreenshot)
    // 0x05aa28  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05aa2c  mov      x29, x29                                
    // 0x05aa30  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05aa34  bl       #0x60c64                                ; func_0x60c64
    // 0x05aa38  mov      x0, x19                                 
    // 0x05aa3c  bl       #0x71bc0                                ; [class(CQScreenshot) 截取区域:] x2, x3, x4, x5, x6, x7
    // 0x05aa40  mov      x29, x29                                
    // 0x05aa44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05aa48  mov      x19, x0                                 
}

- (UISegmentedControl *)模式段 {   // 0x5adf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 模式段 即可补全。
    // 0x05adf8  adrp     x8, #0xad000                            
    // 0x05adfc  ldrsw    x8, [x8, #0xc30]                        
    // 0x05ae00  b        #0x601f8                                ; func_0x601f8
}

- (void)set模式段:(UISegmentedControl *)set模式段 {   // 0x5ae04
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set模式段: 即可补全。
    // 0x05ae04  mov      x1, x2                                  
    // 0x05ae08  adrp     x8, #0xad000                            
    // 0x05ae0c  ldrsw    x8, [x8, #0xc30]                        
    // 0x05ae10  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)高级段 {   // 0x5ae14
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 高级段 即可补全。
    // 0x05ae14  adrp     x8, #0xad000                            
    // 0x05ae18  ldrsw    x8, [x8, #0xc34]                        
    // 0x05ae1c  b        #0x601f8                                ; func_0x601f8
}

- (void)set高级段:(UISegmentedControl *)set高级段 {   // 0x5ae20
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set高级段: 即可补全。
    // 0x05ae20  mov      x1, x2                                  
    // 0x05ae24  adrp     x8, #0xad000                            
    // 0x05ae28  ldrsw    x8, [x8, #0xc34]                        
    // 0x05ae2c  b        #0x60194                                ; func_0x60194
}

- (UITextField *)目标框 {   // 0x5ae30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 目标框 即可补全。
    // 0x05ae30  adrp     x8, #0xad000                            
    // 0x05ae34  ldrsw    x8, [x8, #0xc38]                        
    // 0x05ae38  b        #0x601f8                                ; func_0x601f8
}

- (void)set目标框:(UITextField *)set目标框 {   // 0x5ae3c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set目标框: 即可补全。
    // 0x05ae3c  mov      x1, x2                                  
    // 0x05ae40  adrp     x8, #0xad000                            
    // 0x05ae44  ldrsw    x8, [x8, #0xc38]                        
    // 0x05ae48  b        #0x60194                                ; func_0x60194
}

- (UITextField *)替换框 {   // 0x5ae4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 替换框 即可补全。
    // 0x05ae4c  adrp     x8, #0xad000                            
    // 0x05ae50  ldrsw    x8, [x8, #0xc3c]                        
    // 0x05ae54  b        #0x601f8                                ; func_0x601f8
}

- (void)set替换框:(UITextField *)set替换框 {   // 0x5ae58
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set替换框: 即可补全。
    // 0x05ae58  mov      x1, x2                                  
    // 0x05ae5c  adrp     x8, #0xad000                            
    // 0x05ae60  ldrsw    x8, [x8, #0xc3c]                        
    // 0x05ae64  b        #0x60194                                ; func_0x60194
}

- (UITextField *)正则框 {   // 0x5ae68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 正则框 即可补全。
    // 0x05ae68  adrp     x8, #0xad000                            
    // 0x05ae6c  ldrsw    x8, [x8, #0xc40]                        
    // 0x05ae70  b        #0x601f8                                ; func_0x601f8
}

- (void)set正则框:(UITextField *)set正则框 {   // 0x5ae74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set正则框: 即可补全。
    // 0x05ae74  mov      x1, x2                                  
    // 0x05ae78  adrp     x8, #0xad000                            
    // 0x05ae7c  ldrsw    x8, [x8, #0xc40]                        
    // 0x05ae80  b        #0x60194                                ; func_0x60194
}

- (UITextField *)第几条框 {   // 0x5ae84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 第几条框 即可补全。
    // 0x05ae84  adrp     x8, #0xad000                            
    // 0x05ae88  ldrsw    x8, [x8, #0xc44]                        
    // 0x05ae8c  b        #0x601f8                                ; func_0x601f8
}

- (void)set第几条框:(UITextField *)set第几条框 {   // 0x5ae90
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set第几条框: 即可补全。
    // 0x05ae90  mov      x1, x2                                  
    // 0x05ae94  adrp     x8, #0xad000                            
    // 0x05ae98  ldrsw    x8, [x8, #0xc44]                        
    // 0x05ae9c  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)存储段 {   // 0x5aea0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 存储段 即可补全。
    // 0x05aea0  adrp     x8, #0xad000                            
    // 0x05aea4  ldrsw    x8, [x8, #0xc48]                        
    // 0x05aea8  b        #0x601f8                                ; func_0x601f8
}

- (void)set存储段:(UISegmentedControl *)set存储段 {   // 0x5aeac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set存储段: 即可补全。
    // 0x05aeac  mov      x1, x2                                  
    // 0x05aeb0  adrp     x8, #0xad000                            
    // 0x05aeb4  ldrsw    x8, [x8, #0xc48]                        
    // 0x05aeb8  b        #0x60194                                ; func_0x60194
}

- (UIButton *)框选按钮 {   // 0x5aebc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 框选按钮 即可补全。
    // 0x05aebc  adrp     x8, #0xad000                            
    // 0x05aec0  ldrsw    x8, [x8, #0xc4c]                        
    // 0x05aec4  b        #0x601f8                                ; func_0x601f8
}

- (void)set框选按钮:(UIButton *)set框选按钮 {   // 0x5aec8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set框选按钮: 即可补全。
    // 0x05aec8  mov      x1, x2                                  
    // 0x05aecc  adrp     x8, #0xad000                            
    // 0x05aed0  ldrsw    x8, [x8, #0xc4c]                        
    // 0x05aed4  b        #0x60194                                ; func_0x60194
}

- (UIButton *)测试按钮 {   // 0x5aed8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 测试按钮 即可补全。
    // 0x05aed8  adrp     x8, #0xad000                            
    // 0x05aedc  ldrsw    x8, [x8, #0xc50]                        
    // 0x05aee0  b        #0x601f8                                ; func_0x601f8
}

- (void)set测试按钮:(UIButton *)set测试按钮 {   // 0x5aee4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set测试按钮: 即可补全。
    // 0x05aee4  mov      x1, x2                                  
    // 0x05aee8  adrp     x8, #0xad000                            
    // 0x05aeec  ldrsw    x8, [x8, #0xc50]                        
    // 0x05aef0  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)成功段 {   // 0x5aef4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 成功段 即可补全。
    // 0x05aef4  adrp     x8, #0xad000                            
    // 0x05aef8  ldrsw    x8, [x8, #0xc54]                        
    // 0x05aefc  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功段:(UISegmentedControl *)set成功段 {   // 0x5af00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set成功段: 即可补全。
    // 0x05af00  mov      x1, x2                                  
    // 0x05af04  adrp     x8, #0xad000                            
    // 0x05af08  ldrsw    x8, [x8, #0xc54]                        
    // 0x05af0c  b        #0x60194                                ; func_0x60194
}

- (UIButton *)成功跳按钮 {   // 0x5af10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 成功跳按钮 即可补全。
    // 0x05af10  adrp     x8, #0xad000                            
    // 0x05af14  ldrsw    x8, [x8, #0xc58]                        
    // 0x05af18  b        #0x601f8                                ; func_0x601f8
}

- (void)set成功跳按钮:(UIButton *)set成功跳按钮 {   // 0x5af1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set成功跳按钮: 即可补全。
    // 0x05af1c  mov      x1, x2                                  
    // 0x05af20  adrp     x8, #0xad000                            
    // 0x05af24  ldrsw    x8, [x8, #0xc58]                        
    // 0x05af28  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)失败段 {   // 0x5af2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 失败段 即可补全。
    // 0x05af2c  adrp     x8, #0xad000                            
    // 0x05af30  ldrsw    x8, [x8, #0xc5c]                        
    // 0x05af34  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败段:(UISegmentedControl *)set失败段 {   // 0x5af38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set失败段: 即可补全。
    // 0x05af38  mov      x1, x2                                  
    // 0x05af3c  adrp     x8, #0xad000                            
    // 0x05af40  ldrsw    x8, [x8, #0xc5c]                        
    // 0x05af44  b        #0x60194                                ; func_0x60194
}

- (UIButton *)失败跳按钮 {   // 0x5af48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 失败跳按钮 即可补全。
    // 0x05af48  adrp     x8, #0xad000                            
    // 0x05af4c  ldrsw    x8, [x8, #0xc60]                        
    // 0x05af50  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败跳按钮:(UIButton *)set失败跳按钮 {   // 0x5af54
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set失败跳按钮: 即可补全。
    // 0x05af54  mov      x1, x2                                  
    // 0x05af58  adrp     x8, #0xad000                            
    // 0x05af5c  ldrsw    x8, [x8, #0xc60]                        
    // 0x05af60  b        #0x60194                                ; func_0x60194
}

- (参数行 *)区域宽行 {   // 0x5af64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 区域宽行 即可补全。
    // 0x05af64  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05af68  mov      x29, sp                                 
    // 0x05af6c  adrp     x8, #0xad000                            
    // 0x05af70  ldrsw    x8, [x8, #0xc64]                        
    // 0x05af74  bl       #0x60cac                                ; func_0x60cac
    // 0x05af78  ldp      x29, x30, [sp], #0x10                   
    // 0x05af7c  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域宽行:(参数行 *)set区域宽行 {   // 0x5af80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set区域宽行: 即可补全。
    // 0x05af80  mov      x1, x2                                  
    // 0x05af84  adrp     x8, #0xad000                            
    // 0x05af88  ldrsw    x8, [x8, #0xc64]                        
    // 0x05af8c  b        #0x60324                                ; func_0x60324
}

- (参数行 *)区域高行 {   // 0x5af90
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 区域高行 即可补全。
    // 0x05af90  stp      x29, x30, [sp, #-0x10]!                 
    // 0x05af94  mov      x29, sp                                 
    // 0x05af98  adrp     x8, #0xad000                            
    // 0x05af9c  ldrsw    x8, [x8, #0xc68]                        
    // 0x05afa0  bl       #0x60cac                                ; func_0x60cac
    // 0x05afa4  ldp      x29, x30, [sp], #0x10                   
    // 0x05afa8  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set区域高行:(参数行 *)set区域高行 {   // 0x5afac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 取字选择视图 set区域高行: 即可补全。
    // 0x05afac  mov      x1, x2                                  
    // 0x05afb0  adrp     x8, #0xad000                            
    // 0x05afb4  ldrsw    x8, [x8, #0xc68]                        
    // 0x05afb8  b        #0x60324                                ; func_0x60324
}

@end