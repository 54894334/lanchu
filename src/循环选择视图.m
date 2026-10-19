//
//  循环选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 循环选择视图

- (BOOL)显示标记 {   // 0x5f0cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 显示标记 即可补全。
    // 0x05f0cc  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x5f0d0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 新建标记视图 即可补全。
    // 0x05f0d0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05f0d4  stp      x29, x30, [sp, #0x10]                   
    // 0x05f0d8  add      x29, sp, #0x10                          
    // 0x05f0dc  adrp     x8, #0xad000                            
    // 0x05f0e0  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x05f0e4  bl       #0x68f5c                                ; _objc_alloc
    // 0x05f0e8  adrp     x8, #0x8c000                            
    // 0x05f0ec  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x05f0f0  bl       #0x6067c                                ; func_0x6067c
    // 0x05f0f4  mov      x19, x0                                 
    // 0x05f0f8  bl       #0x60620                                ; func_0x60620
    // 0x05f0fc  mov      x0, x19                                 
    // 0x05f100  bl       #0x60424                                ; func_0x60424
    // 0x05f104  mov      x0, x19                                 
    // 0x05f108  ldp      x29, x30, [sp, #0x10]                   
    // 0x05f10c  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x5f110
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 构建参数 即可补全。
    // 0x05f110  sub      sp, sp, #0xc0                           
    // 0x05f114  stp      d9, d8, [sp, #0x60]                     
    // 0x05f118  stp      x26, x25, [sp, #0x70]                   
    // 0x05f11c  stp      x24, x23, [sp, #0x80]                   
    // 0x05f120  stp      x22, x21, [sp, #0x90]                   
    // 0x05f124  stp      x20, x19, [sp, #0xa0]                   
    // 0x05f128  stp      x29, x30, [sp, #0xb0]                   
    // 0x05f12c  add      x29, sp, #0xb0                          
    // 0x05f130  mov      x19, x0                                 
    // 0x05f134  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05f138  mov      x29, x29                                
    // 0x05f13c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05f140  mov      x20, x0                                 
    // 0x05f144  mov      w2, #0x10                               
    // 0x05f148  bl       #0x6e640                                ; [x0 set类型:] x2, x3, x4, x5, x6, x7
    // 0x05f14c  bl       #0x60184                                ; func_0x60184
    // 0x05f150  mov      x0, x19                                 
    // 0x05f154  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x05f158  mov      x29, x29                                
    // 0x05f15c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05f160  mov      x20, x0                                 
    // 0x05f164  adrp     x2, #0x8f000                            
    // 0x05f168  add      x2, x2, #0x810                          
    // 0x05f16c  bl       #0x6daa0                                ; [x0 set循环变量名:] x2, x3, x4, x5, x6, x7
}

- (double)面板附加高度 {   // 0x5f4e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 面板附加高度 即可补全。
    // 0x05f4e8  b        #0x61ea4                                ; func_0x61ea4
}

- (void)布局参数区 {   // 0x5f4ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 布局参数区 即可补全。
    // 0x05f4ec  sub      sp, sp, #0x40                           
    // 0x05f4f0  stp      d9, d8, [sp, #0x10]                     
    // 0x05f4f4  stp      x20, x19, [sp, #0x20]                   
    // 0x05f4f8  stp      x29, x30, [sp, #0x30]                   
    // 0x05f4fc  add      x29, sp, #0x30                          
    // 0x05f500  mov      x19, x0                                 
    // 0x05f504  adrp     x8, #0xad000                            
    // 0x05f508  ldr      x8, [x8, #0x5b8]                        ; class(循环选择视图)
    // 0x05f50c  stp      x0, x8, [sp]                            
    // 0x05f510  adrp     x8, #0xab000                            
    // 0x05f514  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x05f518  bl       #0x60a00                                ; func_0x60a00
    // 0x05f51c  mov      x0, x19                                 
    // 0x05f520  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x05f524  mov      x29, x29                                
    // 0x05f528  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05f52c  bl       #0x60850                                ; func_0x60850
    // 0x05f530  fmov     d8, d2                                  
    // 0x05f534  bl       #0x60184                                ; func_0x60184
    // 0x05f538  bl       #0x60c4c                                ; func_0x60c4c
    // 0x05f53c  bl       #0x60950                                ; func_0x60950
    // 0x05f540  bl       #0x74580                                ; [x0 配对标签] x2, x3, x4, x5, x6, x7
    // 0x05f544  mov      x29, x29                                
    // 0x05f548  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)刷新配对:(BOOL)刷新配对 {   // 0x5f598
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 刷新配对: 即可补全。
    // 0x05f598  sub      sp, sp, #0x70                           
    // 0x05f59c  mov      x3, x30                                 
    // 0x05f5a0  bl       #0x61880                                ; func_0x61880
    // 0x05f5a4  mov      x30, x3                                 
    // 0x05f5a8  stp      x29, x30, [sp, #0x60]                   
    // 0x05f5ac  add      x29, sp, #0x60                          
    // 0x05f5b0  mov      x22, x2                                 
    // 0x05f5b4  mov      x21, x0                                 
    // 0x05f5b8  bl       #0x706c0                                ; [x0 动作] x2, x30, x4, x5, x6, x7
    // 0x05f5bc  mov      x29, x29                                
    // 0x05f5c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05f5c4  mov      x20, x0                                 
    // 0x05f5c8  bl       #0x6ad80                                ; [x0 gid] x2, x30, x4, x5, x6, x7
    // 0x05f5cc  mov      x29, x29                                
    // 0x05f5d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05f5d4  mov      x19, x0                                 
    // 0x05f5d8  bl       #0x60184                                ; func_0x60184
    // 0x05f5dc  bl       #0x61604                                ; func_0x61604
    // 0x05f5e0  cbz      x0, #0x5f618                            
    // 0x05f5e4  adrp     x8, #0xad000                            
    // 0x05f5e8  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x05f5ec  bl       #0x6f560                                ; [class(CQStore) shared] x2, x30, x4, x5, x6, x7
    // 0x05f5f0  mov      x29, x29                                
    // 0x05f5f4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)配对标签 {   // 0x5f9bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 配对标签 即可补全。
    // 0x05f9bc  adrp     x8, #0xad000                            
    // 0x05f9c0  ldrsw    x8, [x8, #0xcd4]                        
    // 0x05f9c4  b        #0x601f8                                ; func_0x601f8
}

- (void)set配对标签:(id)set配对标签 {   // 0x5f9c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 set配对标签: 即可补全。
    // 0x05f9c8  mov      x1, x2                                  
    // 0x05f9cc  adrp     x8, #0xad000                            
    // 0x05f9d0  ldrsw    x8, [x8, #0xcd4]                        
    // 0x05f9d4  b        #0x60194                                ; func_0x60194
}

- (id)清零行 {   // 0x5f9d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 清零行 即可补全。
    // 0x05f9d8  adrp     x8, #0xad000                            
    // 0x05f9dc  ldrsw    x8, [x8, #0xcd8]                        
    // 0x05f9e0  b        #0x601f8                                ; func_0x601f8
}

- (void)set清零行:(id)set清零行 {   // 0x5f9e4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 循环选择视图 set清零行: 即可补全。
    // 0x05f9e4  mov      x1, x2                                  
    // 0x05f9e8  adrp     x8, #0xad000                            
    // 0x05f9ec  ldrsw    x8, [x8, #0xcd8]                        
    // 0x05f9f0  b        #0x60194                                ; func_0x60194
}

@end