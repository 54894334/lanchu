//
//  输入选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 输入选择视图

- (BOOL)显示标记 {   // 0x53980
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 显示标记 即可补全。
    // 0x053980  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x53984
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 新建标记视图 即可补全。
    // 0x053984  stp      x20, x19, [sp, #-0x20]!                 
    // 0x053988  stp      x29, x30, [sp, #0x10]                   
    // 0x05398c  add      x29, sp, #0x10                          
    // 0x053990  adrp     x8, #0xad000                            
    // 0x053994  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x053998  bl       #0x68f5c                                ; _objc_alloc
    // 0x05399c  adrp     x8, #0x8c000                            
    // 0x0539a0  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x0539a4  bl       #0x6067c                                ; func_0x6067c
    // 0x0539a8  mov      x19, x0                                 
    // 0x0539ac  bl       #0x60620                                ; func_0x60620
    // 0x0539b0  mov      x0, x19                                 
    // 0x0539b4  bl       #0x60424                                ; func_0x60424
    // 0x0539b8  mov      x0, x19                                 
    // 0x0539bc  ldp      x29, x30, [sp, #0x10]                   
    // 0x0539c0  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x539c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 构建参数 即可补全。
    // 0x0539c4  mov      x2, x30                                 
    // 0x0539c8  bl       #0x61160                                ; func_0x61160
    // 0x0539cc  mov      x30, x2                                 
    // 0x0539d0  stp      x29, x30, [sp, #0x140]                  
    // 0x0539d4  add      x29, sp, #0x140                         
    // 0x0539d8  mov      x20, x0                                 
    // 0x0539dc  adrp     x8, #0x8c000                            
    // 0x0539e0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0539e4  ldr      x8, [x8]                                
    // 0x0539e8  stur     x8, [x29, #-0x70]                       
    // 0x0539ec  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x0539f0  mov      x29, x29                                
    // 0x0539f4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0539f8  mov      x19, x0                                 
    // 0x0539fc  mov      w2, #8                                  
    // 0x053a00  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x053a04  bl       #0x601b8                                ; func_0x601b8
    // 0x053a08  add      x0, sp, #0x88                           
    // 0x053a0c  bl       #0x60dfc                                ; func_0x60dfc
    // 0x053a10  adrp     x19, #0x8c000                           
    // 0x053a14  ldr      x19, [x19, #0xd8]                       ; ptr_0x8c0d8
    // 0x053a18  str      x19, [sp, #0x60]                        
    // 0x053a1c  adrp     x8, #0x7b000                            
    // 0x053a20  ldr      d9, [x8, #0x8c0]                        ; ptr_0x7b8c0
}

- (double)面板附加高度 {   // 0x54538
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 面板附加高度 即可补全。
    // 0x054538  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05453c  stp      x20, x19, [sp, #0x10]                   
    // 0x054540  stp      x29, x30, [sp, #0x20]                   
    // 0x054544  add      x29, sp, #0x20                          
    // 0x054548  mov      x19, x0                                 
    // 0x05454c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054550  mov      x29, x29                                
    // 0x054554  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054558  mov      x20, x0                                 
    // 0x05455c  bl       #0x74320                                ; [x0 输入来源] x2, x3, x4, x5, x6, x7
    // 0x054560  mov      x21, x0                                 
    // 0x054564  bl       #0x60184                                ; func_0x60184
    // 0x054568  cmp      x21, #1                                 
    // 0x05456c  b.ne     #0x545a4                                
    // 0x054570  mov      x0, x19                                 
    // 0x054574  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054578  mov      x29, x29                                
    // 0x05457c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054580  mov      x19, x0                                 
    // 0x054584  bl       #0x74300                                ; [x0 输入暂存取条] x2, x3, x4, x5, x6, x7
    // 0x054588  cmp      x0, #1                                  
    // 0x05458c  cset     w20, eq                                 
    // 0x054590  bl       #0x601b8                                ; func_0x601b8
    // 0x054594  adrp     x8, #0x7c000                            
}

- (void)布局参数区 {   // 0x545bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 布局参数区 即可补全。
    // 0x0545bc  sub      sp, sp, #0x80                           
    // 0x0545c0  stp      d13, d12, [sp, #0x10]                   
    // 0x0545c4  stp      d11, d10, [sp, #0x20]                   
    // 0x0545c8  stp      d9, d8, [sp, #0x30]                     
    // 0x0545cc  stp      x24, x23, [sp, #0x40]                   
    // 0x0545d0  stp      x22, x21, [sp, #0x50]                   
    // 0x0545d4  stp      x20, x19, [sp, #0x60]                   
    // 0x0545d8  stp      x29, x30, [sp, #0x70]                   
    // 0x0545dc  add      x29, sp, #0x70                          
    // 0x0545e0  mov      x19, x0                                 
    // 0x0545e4  adrp     x8, #0xad000                            
    // 0x0545e8  ldr      x8, [x8, #0x588]                        ; class(输入选择视图)
    // 0x0545ec  stp      x0, x8, [sp]                            
    // 0x0545f0  adrp     x8, #0xab000                            
    // 0x0545f4  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x0545f8  bl       #0x60a00                                ; func_0x60a00
    // 0x0545fc  mov      x0, x19                                 
    // 0x054600  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x054604  mov      x29, x29                                
    // 0x054608  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05460c  bl       #0x60850                                ; func_0x60850
    // 0x054610  fmov     d11, d2                                 
    // 0x054614  bl       #0x60184                                ; func_0x60184
    // 0x054618  bl       #0x60c4c                                ; func_0x60c4c
}

- (void)刷新来源显隐 {   // 0x54a40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 刷新来源显隐 即可补全。
    // 0x054a40  b        #0x71580                                ; [x0 布局参数区] x2, x3, x4, x5, x6, x7
}

- (void)来源段变化:(id)来源段变化 {   // 0x54a44
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 来源段变化: 即可补全。
    // 0x054a44  stp      x22, x21, [sp, #-0x30]!                 
    // 0x054a48  stp      x20, x19, [sp, #0x10]                   
    // 0x054a4c  stp      x29, x30, [sp, #0x20]                   
    // 0x054a50  add      x29, sp, #0x20                          
    // 0x054a54  bl       #0x6029c                                ; func_0x6029c
    // 0x054a58  bl       #0x60654                                ; func_0x60654
    // 0x054a5c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054a60  mov      x29, x29                                
    // 0x054a64  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054a68  bl       #0x60498                                ; func_0x60498
    // 0x054a6c  bl       #0x6f140                                ; [x0 set输入来源:] x2, x3, x4, x5, x6, x7
    // 0x054a70  bl       #0x6018c                                ; func_0x6018c
    // 0x054a74  mov      x0, x19                                 
    // 0x054a78  ldp      x29, x30, [sp, #0x20]                   
    // 0x054a7c  b        #0x611c8                                ; func_0x611c8
}

- (void)暂存段变化:(id)暂存段变化 {   // 0x54a80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 暂存段变化: 即可补全。
    // 0x054a80  stp      x22, x21, [sp, #-0x30]!                 
    // 0x054a84  stp      x20, x19, [sp, #0x10]                   
    // 0x054a88  stp      x29, x30, [sp, #0x20]                   
    // 0x054a8c  add      x29, sp, #0x20                          
    // 0x054a90  bl       #0x6029c                                ; func_0x6029c
    // 0x054a94  bl       #0x60654                                ; func_0x60654
    // 0x054a98  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054a9c  mov      x29, x29                                
    // 0x054aa0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054aa4  bl       #0x60498                                ; func_0x60498
    // 0x054aa8  bl       #0x6f120                                ; [x0 set输入暂存取条:] x2, x3, x4, x5, x6, x7
    // 0x054aac  bl       #0x6018c                                ; func_0x6018c
    // 0x054ab0  mov      x0, x19                                 
    // 0x054ab4  ldp      x29, x30, [sp, #0x20]                   
    // 0x054ab8  b        #0x611c8                                ; func_0x611c8
}

- (void)模式段变化:(id)模式段变化 {   // 0x54abc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 模式段变化: 即可补全。
    // 0x054abc  stp      x20, x19, [sp, #-0x20]!                 
    // 0x054ac0  stp      x29, x30, [sp, #0x10]                   
    // 0x054ac4  add      x29, sp, #0x10                          
    // 0x054ac8  bl       #0x6029c                                ; func_0x6029c
    // 0x054acc  bl       #0x60654                                ; func_0x60654
    // 0x054ad0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054ad4  mov      x29, x29                                
    // 0x054ad8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054adc  bl       #0x61274                                ; func_0x61274
    // 0x054ae0  bl       #0x6f160                                ; [x0 set输入模式:] x2, x3, x4, x5, x6, x7
    // 0x054ae4  mov      x0, x19                                 
    // 0x054ae8  ldp      x29, x30, [sp, #0x10]                   
    // 0x054aec  b        #0x60270                                ; func_0x60270
}

- (void)清空开关变化:(id)清空开关变化 {   // 0x54af0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 清空开关变化: 即可补全。
    // 0x054af0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x054af4  stp      x29, x30, [sp, #0x10]                   
    // 0x054af8  add      x29, sp, #0x10                          
    // 0x054afc  bl       #0x62220                                ; func_0x62220
    // 0x054b00  bl       #0x60310                                ; func_0x60310
    // 0x054b04  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054b08  mov      x29, x29                                
    // 0x054b0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054b10  mov      x19, x0                                 
    // 0x054b14  mov      x2, x20                                 
    // 0x054b18  bl       #0x6f180                                ; [x0 set输入清空:] x20, x3, x4, x5, x6, x7
    // 0x054b1c  mov      x0, x19                                 
    // 0x054b20  ldp      x29, x30, [sp, #0x10]                   
    // 0x054b24  b        #0x60270                                ; func_0x60270
}

- (void)回车开关变化:(id)回车开关变化 {   // 0x54b28
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 回车开关变化: 即可补全。
    // 0x054b28  stp      x20, x19, [sp, #-0x20]!                 
    // 0x054b2c  stp      x29, x30, [sp, #0x10]                   
    // 0x054b30  add      x29, sp, #0x10                          
    // 0x054b34  bl       #0x62220                                ; func_0x62220
    // 0x054b38  bl       #0x60310                                ; func_0x60310
    // 0x054b3c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x054b40  mov      x29, x29                                
    // 0x054b44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054b48  mov      x19, x0                                 
    // 0x054b4c  mov      x2, x20                                 
    // 0x054b50  bl       #0x6f0e0                                ; [x0 set输入回车:] x20, x3, x4, x5, x6, x7
    // 0x054b54  mov      x0, x19                                 
    // 0x054b58  ldp      x29, x30, [sp, #0x10]                   
    // 0x054b5c  b        #0x60270                                ; func_0x60270
}

- (void)配段:(id)配段 {   // 0x54b60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 配段: 即可补全。
    // 0x054b60  mov      x0, x30                                 
    // 0x054b64  bl       #0x60afc                                ; func_0x60afc
    // 0x054b68  mov      x30, x0                                 
    // 0x054b6c  stp      x29, x30, [sp, #0xa0]                   
    // 0x054b70  add      x29, sp, #0xa0                          
    // 0x054b74  mov      x0, x2                                  
    // 0x054b78  adrp     x8, #0x8c000                            
    // 0x054b7c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x054b80  ldr      x8, [x8]                                
    // 0x054b84  bl       #0x615e8                                ; func_0x615e8
    // 0x054b88  mov      x19, x0                                 
    // 0x054b8c  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x054b90  mov      x29, x29                                
    // 0x054b94  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054b98  bl       #0x60300                                ; func_0x60300
    // 0x054b9c  bl       #0x60184                                ; func_0x60184
    // 0x054ba0  bl       #0x20138                                ; _CQThemeNeon
    // 0x054ba4  mov      x29, x29                                
    // 0x054ba8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054bac  bl       #0x608c4                                ; func_0x608c4
    // 0x054bb0  bl       #0x60184                                ; func_0x60184
    // 0x054bb4  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x054bb8  mov      x29, x29                                
    // 0x054bbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)行标签:(id)行标签 {   // 0x54ca8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 行标签: 即可补全。
    // 0x054ca8  stp      x22, x21, [sp, #-0x30]!                 
    // 0x054cac  stp      x20, x19, [sp, #0x10]                   
    // 0x054cb0  stp      x29, x30, [sp, #0x20]                   
    // 0x054cb4  add      x29, sp, #0x20                          
    // 0x054cb8  mov      x20, x0                                 
    // 0x054cbc  adrp     x8, #0xad000                            
    // 0x054cc0  ldr      x19, [x8, #0x1d0]                       ; class(?0x0)
    // 0x054cc4  bl       #0x60364                                ; func_0x60364
    // 0x054cc8  bl       #0x6159c                                ; func_0x6159c
    // 0x054ccc  mov      x19, x0                                 
    // 0x054cd0  adrp     x8, #0xad000                            
    // 0x054cd4  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x054cd8  fmov     d0, #13.00000000                        
    // 0x054cdc  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x054ce0  mov      x29, x29                                
    // 0x054ce4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054ce8  mov      x22, x0                                 
    // 0x054cec  mov      x0, x19                                 
    // 0x054cf0  bl       #0x60c90                                ; func_0x60c90
    // 0x054cf4  bl       #0x6019c                                ; func_0x6019c
    // 0x054cf8  adrp     x8, #0xad000                            
    // 0x054cfc  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x054d00  adrp     x8, #0x7b000                            
    // 0x054d04  ldr      d0, [x8, #0xa98]                        ; ptr_0x7ba98
}

- (id)行开关:(BOOL)行开关 动作:(SEL)动作 {   // 0x54d60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 行开关:动作: 即可补全。
    // 0x054d60  sub      sp, sp, #0x90                           
    // 0x054d64  stp      x22, x21, [sp, #0x60]                   
    // 0x054d68  stp      x20, x19, [sp, #0x70]                   
    // 0x054d6c  stp      x29, x30, [sp, #0x80]                   
    // 0x054d70  add      x29, sp, #0x80                          
    // 0x054d74  mov      x19, x3                                 
    // 0x054d78  mov      x20, x2                                 
    // 0x054d7c  mov      x21, x0                                 
    // 0x054d80  adrp     x8, #0xad000                            
    // 0x054d84  ldr      x0, [x8, #0x310]                        ; class(?0x0)
    // 0x054d88  bl       #0x68f68                                ; _objc_alloc_init
    // 0x054d8c  mov      x22, x0                                 
    // 0x054d90  mov      x2, x20                                 
    // 0x054d94  bl       #0x6c680                                ; [class(?0x0) setOn:] x2, x3, x4, x5, x6, x7
    // 0x054d98  adrp     x8, #0x7b000                            
    // 0x054d9c  ldr      d0, [x8, #0xa98]                        ; ptr_0x7ba98
    // 0x054da0  bl       #0x62118                                ; func_0x62118
    // 0x054da4  bl       #0x61a38                                ; func_0x61a38
    // 0x054da8  mov      x0, x22                                 
    // 0x054dac  bl       #0x6cce0                                ; [class(?0x0) setTransform:] x2, x3, x4, x5, x6, x7
    // 0x054db0  mov      x0, x22                                 
    // 0x054db4  mov      x2, x21                                 
    // 0x054db8  mov      x3, x19                                 
    // 0x054dbc  bl       #0x603ac                                ; func_0x603ac
}

- (void)收起键盘 {   // 0x54df4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 收起键盘 即可补全。
    // 0x054df4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x054df8  stp      x29, x30, [sp, #0x10]                   
    // 0x054dfc  add      x29, sp, #0x10                          
    // 0x054e00  bl       #0x720e0                                ; [x0 文本框] x2, x3, x4, x5, x6, x7
    // 0x054e04  mov      x29, x29                                
    // 0x054e08  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054e0c  bl       #0x61280                                ; func_0x61280
    // 0x054e10  mov      x0, x19                                 
    // 0x054e14  ldp      x29, x30, [sp, #0x10]                   
    // 0x054e18  b        #0x60270                                ; func_0x60270
}

- (void)textViewDidChange:(id)textViewDidChange {   // 0x54e1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 textViewDidChange: 即可补全。
    // 0x054e1c  stp      x26, x25, [sp, #-0x50]!                 
    // 0x054e20  stp      x24, x23, [sp, #0x10]                   
    // 0x054e24  stp      x22, x21, [sp, #0x20]                   
    // 0x054e28  stp      x20, x19, [sp, #0x30]                   
    // 0x054e2c  stp      x29, x30, [sp, #0x40]                   
    // 0x054e30  add      x29, sp, #0x40                          
    // 0x054e34  mov      x20, x0                                 
    // 0x054e38  bl       #0x60364                                ; func_0x60364
    // 0x054e3c  mov      x19, x0                                 
    // 0x054e40  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x054e44  mov      x29, x29                                
    // 0x054e48  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054e4c  mov      x21, x0                                 
    // 0x054e50  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x054e54  mov      x22, x0                                 
    // 0x054e58  cbz      x0, #0x54e78                            
    // 0x054e5c  mov      x0, x19                                 
    // 0x054e60  bl       #0x6faa0                                ; [x0 text] x2, x3, x4, x5, x6, x7
    // 0x054e64  mov      x29, x29                                
    // 0x054e68  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x054e6c  bl       #0x62008                                ; func_0x62008
    // 0x054e70  mov      x24, x0                                 
    // 0x054e74  b        #0x54e7c                                
    // 0x054e78  mov      x24, #0                                 
}

- (UISegmentedControl *)来源段 {   // 0x54f08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 来源段 即可补全。
    // 0x054f08  adrp     x8, #0xad000                            
    // 0x054f0c  ldrsw    x8, [x8, #0xbc0]                        
    // 0x054f10  b        #0x601f8                                ; func_0x601f8
}

- (void)set来源段:(UISegmentedControl *)set来源段 {   // 0x54f14
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set来源段: 即可补全。
    // 0x054f14  mov      x1, x2                                  
    // 0x054f18  adrp     x8, #0xad000                            
    // 0x054f1c  ldrsw    x8, [x8, #0xbc0]                        
    // 0x054f20  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)暂存段 {   // 0x54f24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 暂存段 即可补全。
    // 0x054f24  adrp     x8, #0xad000                            
    // 0x054f28  ldrsw    x8, [x8, #0xbc4]                        
    // 0x054f2c  b        #0x601f8                                ; func_0x601f8
}

- (void)set暂存段:(UISegmentedControl *)set暂存段 {   // 0x54f30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set暂存段: 即可补全。
    // 0x054f30  mov      x1, x2                                  
    // 0x054f34  adrp     x8, #0xad000                            
    // 0x054f38  ldrsw    x8, [x8, #0xbc4]                        
    // 0x054f3c  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)模式段 {   // 0x54f40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 模式段 即可补全。
    // 0x054f40  adrp     x8, #0xad000                            
    // 0x054f44  ldrsw    x8, [x8, #0xbc8]                        
    // 0x054f48  b        #0x601f8                                ; func_0x601f8
}

- (void)set模式段:(UISegmentedControl *)set模式段 {   // 0x54f4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set模式段: 即可补全。
    // 0x054f4c  mov      x1, x2                                  
    // 0x054f50  adrp     x8, #0xad000                            
    // 0x054f54  ldrsw    x8, [x8, #0xbc8]                        
    // 0x054f58  b        #0x60194                                ; func_0x60194
}

- (UITextView *)文本框 {   // 0x54f5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 文本框 即可补全。
    // 0x054f5c  adrp     x8, #0xad000                            
    // 0x054f60  ldrsw    x8, [x8, #0xbcc]                        
    // 0x054f64  b        #0x601f8                                ; func_0x601f8
}

- (void)set文本框:(UITextView *)set文本框 {   // 0x54f68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set文本框: 即可补全。
    // 0x054f68  mov      x1, x2                                  
    // 0x054f6c  adrp     x8, #0xad000                            
    // 0x054f70  ldrsw    x8, [x8, #0xbcc]                        
    // 0x054f74  b        #0x60194                                ; func_0x60194
}

- (UILabel *)占位标签 {   // 0x54f78
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 占位标签 即可补全。
    // 0x054f78  adrp     x8, #0xad000                            
    // 0x054f7c  ldrsw    x8, [x8, #0xbd0]                        
    // 0x054f80  b        #0x601f8                                ; func_0x601f8
}

- (void)set占位标签:(UILabel *)set占位标签 {   // 0x54f84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set占位标签: 即可补全。
    // 0x054f84  mov      x1, x2                                  
    // 0x054f88  adrp     x8, #0xad000                            
    // 0x054f8c  ldrsw    x8, [x8, #0xbd0]                        
    // 0x054f90  b        #0x60194                                ; func_0x60194
}

- (UILabel *)来源提示 {   // 0x54f94
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 来源提示 即可补全。
    // 0x054f94  adrp     x8, #0xad000                            
    // 0x054f98  ldrsw    x8, [x8, #0xbd4]                        
    // 0x054f9c  b        #0x601f8                                ; func_0x601f8
}

- (void)set来源提示:(UILabel *)set来源提示 {   // 0x54fa0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set来源提示: 即可补全。
    // 0x054fa0  mov      x1, x2                                  
    // 0x054fa4  adrp     x8, #0xad000                            
    // 0x054fa8  ldrsw    x8, [x8, #0xbd4]                        
    // 0x054fac  b        #0x60194                                ; func_0x60194
}

- (UILabel *)清空标签 {   // 0x54fb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 清空标签 即可补全。
    // 0x054fb0  adrp     x8, #0xad000                            
    // 0x054fb4  ldrsw    x8, [x8, #0xbd8]                        
    // 0x054fb8  b        #0x601f8                                ; func_0x601f8
}

- (void)set清空标签:(UILabel *)set清空标签 {   // 0x54fbc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set清空标签: 即可补全。
    // 0x054fbc  mov      x1, x2                                  
    // 0x054fc0  adrp     x8, #0xad000                            
    // 0x054fc4  ldrsw    x8, [x8, #0xbd8]                        
    // 0x054fc8  b        #0x60194                                ; func_0x60194
}

- (UISwitch *)清空开关 {   // 0x54fcc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 清空开关 即可补全。
    // 0x054fcc  adrp     x8, #0xad000                            
    // 0x054fd0  ldrsw    x8, [x8, #0xbdc]                        
    // 0x054fd4  b        #0x601f8                                ; func_0x601f8
}

- (void)set清空开关:(UISwitch *)set清空开关 {   // 0x54fd8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set清空开关: 即可补全。
    // 0x054fd8  mov      x1, x2                                  
    // 0x054fdc  adrp     x8, #0xad000                            
    // 0x054fe0  ldrsw    x8, [x8, #0xbdc]                        
    // 0x054fe4  b        #0x60194                                ; func_0x60194
}

- (UILabel *)回车标签 {   // 0x54fe8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 回车标签 即可补全。
    // 0x054fe8  adrp     x8, #0xad000                            
    // 0x054fec  ldrsw    x8, [x8, #0xbe0]                        
    // 0x054ff0  b        #0x601f8                                ; func_0x601f8
}

- (void)set回车标签:(UILabel *)set回车标签 {   // 0x54ff4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set回车标签: 即可补全。
    // 0x054ff4  mov      x1, x2                                  
    // 0x054ff8  adrp     x8, #0xad000                            
    // 0x054ffc  ldrsw    x8, [x8, #0xbe0]                        
    // 0x055000  b        #0x60194                                ; func_0x60194
}

- (UISwitch *)回车开关 {   // 0x55004
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 回车开关 即可补全。
    // 0x055004  adrp     x8, #0xad000                            
    // 0x055008  ldrsw    x8, [x8, #0xbe4]                        
    // 0x05500c  b        #0x601f8                                ; func_0x601f8
}

- (void)set回车开关:(UISwitch *)set回车开关 {   // 0x55010
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 输入选择视图 set回车开关: 即可补全。
    // 0x055010  mov      x1, x2                                  
    // 0x055014  adrp     x8, #0xad000                            
    // 0x055018  ldrsw    x8, [x8, #0xbe4]                        
    // 0x05501c  b        #0x60194                                ; func_0x60194
}

@end