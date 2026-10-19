//
//  循环结尾选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 循环结尾选择视图

- (BOOL)显示标记 {   // 0x5fa28
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 显示标记 即可补全。
    // 0x05fa28  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x5fa2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 新建标记视图 即可补全。
    // 0x05fa2c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05fa30  stp      x29, x30, [sp, #0x10]                   
    // 0x05fa34  add      x29, sp, #0x10                          
    // 0x05fa38  adrp     x8, #0xad000                            
    // 0x05fa3c  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x05fa40  bl       #0x68f5c                                ; _objc_alloc
    // 0x05fa44  adrp     x8, #0x8c000                            
    // 0x05fa48  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x05fa4c  bl       #0x6067c                                ; func_0x6067c
    // 0x05fa50  mov      x19, x0                                 
    // 0x05fa54  bl       #0x60620                                ; func_0x60620
    // 0x05fa58  mov      x0, x19                                 
    // 0x05fa5c  bl       #0x60424                                ; func_0x60424
    // 0x05fa60  mov      x0, x19                                 
    // 0x05fa64  ldp      x29, x30, [sp, #0x10]                   
    // 0x05fa68  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x5fa6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 构建参数 即可补全。
    // 0x05fa6c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05fa70  stp      x20, x19, [sp, #0x10]                   
    // 0x05fa74  stp      x29, x30, [sp, #0x20]                   
    // 0x05fa78  add      x29, sp, #0x20                          
    // 0x05fa7c  mov      x19, x0                                 
    // 0x05fa80  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05fa84  mov      x29, x29                                
    // 0x05fa88  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05fa8c  mov      x20, x0                                 
    // 0x05fa90  mov      w2, #0x11                               
    // 0x05fa94  bl       #0x6e640                                ; [x0 set类型:] x2, x3, x4, x5, x6, x7
    // 0x05fa98  bl       #0x60184                                ; func_0x60184
    // 0x05fa9c  adrp     x8, #0xad000                            
    // 0x05faa0  ldr      x0, [x8, #0x1d0]                        ; class(?0x0)
    // 0x05faa4  bl       #0x68f68                                ; _objc_alloc_init
    // 0x05faa8  bl       #0x6052c                                ; func_0x6052c
    // 0x05faac  bl       #0x6f2e0                                ; [class(?0x0) set配对标签:] x2, x3, x4, x5, x6, x7
    // 0x05fab0  bl       #0x60184                                ; func_0x60184
    // 0x05fab4  adrp     x8, #0xad000                            
    // 0x05fab8  ldr      x0, [x8, #0x2c8]                        ; class(?0x0)
    // 0x05fabc  fmov     d0, #13.00000000                        
    // 0x05fac0  bl       #0x6fa20                                ; [class(?0x0) systemFontOfSize:] x2, x3, x4, x5, x6, x7
    // 0x05fac4  mov      x29, x29                                
    // 0x05fac8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (double)面板附加高度 {   // 0x5fb48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 面板附加高度 即可补全。
    // 0x05fb48  b        #0x61ea4                                ; func_0x61ea4
}

- (void)布局参数区 {   // 0x5fb4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 布局参数区 即可补全。
    // 0x05fb4c  sub      sp, sp, #0x40                           
    // 0x05fb50  stp      d9, d8, [sp, #0x10]                     
    // 0x05fb54  stp      x20, x19, [sp, #0x20]                   
    // 0x05fb58  stp      x29, x30, [sp, #0x30]                   
    // 0x05fb5c  add      x29, sp, #0x30                          
    // 0x05fb60  mov      x19, x0                                 
    // 0x05fb64  adrp     x8, #0xad000                            
    // 0x05fb68  ldr      x8, [x8, #0x5c0]                        ; class(循环结尾选择视图)
    // 0x05fb6c  stp      x0, x8, [sp]                            
    // 0x05fb70  adrp     x8, #0xab000                            
    // 0x05fb74  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x05fb78  bl       #0x60a00                                ; func_0x60a00
    // 0x05fb7c  mov      x0, x19                                 
    // 0x05fb80  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x05fb84  mov      x29, x29                                
    // 0x05fb88  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05fb8c  bl       #0x60850                                ; func_0x60850
    // 0x05fb90  fmov     d8, d2                                  
    // 0x05fb94  bl       #0x60184                                ; func_0x60184
    // 0x05fb98  bl       #0x60c4c                                ; func_0x60c4c
    // 0x05fb9c  bl       #0x60950                                ; func_0x60950
    // 0x05fba0  bl       #0x74580                                ; [x0 配对标签] x2, x3, x4, x5, x6, x7
    // 0x05fba4  mov      x29, x29                                
    // 0x05fba8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)刷新 {   // 0x5fbf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 刷新 即可补全。
    // 0x05fbf8  sub      sp, sp, #0x150                          
    // 0x05fbfc  stp      x28, x27, [sp, #0xf0]                   
    // 0x05fc00  stp      x26, x25, [sp, #0x100]                  
    // 0x05fc04  stp      x24, x23, [sp, #0x110]                  
    // 0x05fc08  stp      x22, x21, [sp, #0x120]                  
    // 0x05fc0c  stp      x20, x19, [sp, #0x130]                  
    // 0x05fc10  stp      x29, x30, [sp, #0x140]                  
    // 0x05fc14  add      x29, sp, #0x140                         
    // 0x05fc18  mov      x28, x0                                 
    // 0x05fc1c  adrp     x8, #0x8c000                            
    // 0x05fc20  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05fc24  ldr      x8, [x8]                                
    // 0x05fc28  stur     x8, [x29, #-0x60]                       
    // 0x05fc2c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05fc30  mov      x29, x29                                
    // 0x05fc34  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05fc38  mov      x21, x0                                 
    // 0x05fc3c  bl       #0x719c0                                ; [x0 循环配对标识] x2, x3, x4, x5, x6, x7
    // 0x05fc40  mov      x29, x29                                
    // 0x05fc44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05fc48  mov      x19, x0                                 
    // 0x05fc4c  bl       #0x6018c                                ; func_0x6018c
    // 0x05fc50  bl       #0x61604                                ; func_0x61604
    // 0x05fc54  cbz      x0, #0x5fdc4                            
}

- (id)配对标签 {   // 0x60154
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 配对标签 即可补全。
    // 0x060154  adrp     x8, #0xad000                            
    // 0x060158  ldrsw    x8, [x8, #0xcdc]                        
    // 0x06015c  b        #0x601f8                                ; func_0x601f8
}

- (void)set配对标签:(id)set配对标签 {   // 0x60160
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环结尾选择视图 set配对标签: 即可补全。
    // 0x060160  mov      x1, x2                                  
    // 0x060164  adrp     x8, #0xad000                            
    // 0x060168  ldrsw    x8, [x8, #0xcdc]                        
    // 0x06016c  b        #0x60194                                ; func_0x60194
}

@end