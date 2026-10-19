//
//  参数行.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 参数行

- (void)布局宽:(double)布局宽 {   // 0x4038c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 布局宽: 即可补全。
    // 0x04038c  stp      d9, d8, [sp, #-0x30]!                   
    // 0x040390  stp      x20, x19, [sp, #0x10]                   
    // 0x040394  stp      x29, x30, [sp, #0x20]                   
    // 0x040398  add      x29, sp, #0x20                          
    // 0x04039c  fmov     d8, d0                                  
    // 0x0403a0  mov      x19, x0                                 
    // 0x0403a4  bl       #0x727e0                                ; [x0 标题] x2, x3, x4, x5, x6, x7
    // 0x0403a8  mov      x29, x29                                
    // 0x0403ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0403b0  mov      x20, x0                                 
    // 0x0403b4  adrp     x8, #0x7c000                            
    // 0x0403b8  ldr      d2, [x8, #0x848]                        ; ptr_0x7c848
    // 0x0403bc  mov      x8, #0x4041000000000000                 
    // 0x0403c0  fmov     d9, x8                                  
    // 0x0403c4  bl       #0x60c38                                ; func_0x60c38
    // 0x0403c8  bl       #0x61a1c                                ; func_0x61a1c
    // 0x0403cc  bl       #0x60184                                ; func_0x60184
    // 0x0403d0  mov      x0, x19                                 
    // 0x0403d4  bl       #0x71fc0                                ; [x0 数值] x2, x3, x4, x5, x6, x7
    // 0x0403d8  mov      x29, x29                                
    // 0x0403dc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0403e0  mov      x20, x0                                 
    // 0x0403e4  bl       #0x61a50                                ; func_0x61a50
    // 0x0403e8  bl       #0x61a1c                                ; func_0x61a1c
}

- (void)值变化:(id)值变化 {   // 0x40430
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 值变化: 即可补全。
    // 0x040430  stp      x22, x21, [sp, #-0x30]!                 
    // 0x040434  stp      x20, x19, [sp, #0x10]                   
    // 0x040438  stp      x29, x30, [sp, #0x20]                   
    // 0x04043c  add      x29, sp, #0x20                          
    // 0x040440  mov      x20, x0                                 
    // 0x040444  bl       #0x60364                                ; func_0x60364
    // 0x040448  mov      x19, x0                                 
    // 0x04044c  bl       #0x6fca0                                ; [x0 value] x2, x3, x4, x5, x6, x7
    // 0x040450  mov      x0, x20                                 
    // 0x040454  bl       #0x70440                                ; [x0 刷新:] x2, x3, x4, x5, x6, x7
    // 0x040458  mov      x0, x20                                 
    // 0x04045c  bl       #0x70c00                                ; [x0 变化] x2, x3, x4, x5, x6, x7
    // 0x040460  mov      x29, x29                                
    // 0x040464  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x040468  bl       #0x60c20                                ; func_0x60c20
    // 0x04046c  cbz      x21, #0x40498                           
    // 0x040470  mov      x0, x20                                 
    // 0x040474  bl       #0x70c00                                ; [x0 变化] x2, x3, x4, x5, x6, x7
    // 0x040478  mov      x29, x29                                
    // 0x04047c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x040480  bl       #0x60290                                ; func_0x60290
    // 0x040484  bl       #0x6fca0                                ; [x0 value] x2, x3, x4, x5, x6, x7
    // 0x040488  ldr      x8, [x20, #0x10]                        
    // 0x04048c  mov      x0, x20                                 
}

- (void)刷新:(double)刷新 {   // 0x404a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 刷新: 即可补全。
    // 0x0404a4  sub      sp, sp, #0x60                           
    // 0x0404a8  stp      d9, d8, [sp, #0x10]                     
    // 0x0404ac  stp      x24, x23, [sp, #0x20]                   
    // 0x0404b0  stp      x22, x21, [sp, #0x30]                   
    // 0x0404b4  stp      x20, x19, [sp, #0x40]                   
    // 0x0404b8  stp      x29, x30, [sp, #0x50]                   
    // 0x0404bc  add      x29, sp, #0x50                          
    // 0x0404c0  fmov     d8, d0                                  
    // 0x0404c4  mov      x20, x0                                 
    // 0x0404c8  fcmp     d0, #0.0                                
    // 0x0404cc  b.ne     #0x4050c                                
    // 0x0404d0  mov      x0, x20                                 
    // 0x0404d4  bl       #0x74840                                ; [x0 零显示] x2, x3, x4, x5, x6, x7
    // 0x0404d8  mov      x29, x29                                
    // 0x0404dc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0404e0  mov      x19, x0                                 
    // 0x0404e4  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x0404e8  cbz      x0, #0x4050c                            
    // 0x0404ec  mov      x0, x20                                 
    // 0x0404f0  bl       #0x74840                                ; [x0 零显示] x2, x3, x4, x5, x6, x7
    // 0x0404f4  mov      x29, x29                                
    // 0x0404f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0404fc  mov      x21, x0                                 
    // 0x040500  mov      w23, #0                                 
}

- (void)赋值:(double)赋值 {   // 0x405b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 赋值: 即可补全。
    // 0x0405b8  stp      d9, d8, [sp, #-0x30]!                   
    // 0x0405bc  stp      x20, x19, [sp, #0x10]                   
    // 0x0405c0  stp      x29, x30, [sp, #0x20]                   
    // 0x0405c4  add      x29, sp, #0x20                          
    // 0x0405c8  fmov     d8, d0                                  
    // 0x0405cc  mov      x19, x0                                 
    // 0x0405d0  bl       #0x72920                                ; [x0 步进] x2, x3, x4, x5, x6, x7
    // 0x0405d4  mov      x29, x29                                
    // 0x0405d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0405dc  bl       #0x622fc                                ; func_0x622fc
    // 0x0405e0  bl       #0x60184                                ; func_0x60184
    // 0x0405e4  bl       #0x61bac                                ; func_0x61bac
    // 0x0405e8  ldp      x29, x30, [sp, #0x20]                   
    // 0x0405ec  ldp      x20, x19, [sp, #0x10]                   
    // 0x0405f0  ldp      d9, d8, [sp], #0x30                     
    // 0x0405f4  b        #0x70440                                ; [x0 刷新:] x2, x3, x4, x5, x6, x7
}

- (id)标题 {   // 0x405f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 标题 即可补全。
    // 0x0405f8  adrp     x8, #0xad000                            
    // 0x0405fc  ldrsw    x8, [x8, #0xa64]                        
    // 0x040600  b        #0x601f8                                ; func_0x601f8
}

- (void)set标题:(id)set标题 {   // 0x40604
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set标题: 即可补全。
    // 0x040604  mov      x1, x2                                  
    // 0x040608  adrp     x8, #0xad000                            
    // 0x04060c  ldrsw    x8, [x8, #0xa64]                        
    // 0x040610  b        #0x60194                                ; func_0x60194
}

- (id)数值 {   // 0x40614
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 数值 即可补全。
    // 0x040614  adrp     x8, #0xad000                            
    // 0x040618  ldrsw    x8, [x8, #0xa68]                        
    // 0x04061c  b        #0x601f8                                ; func_0x601f8
}

- (void)set数值:(id)set数值 {   // 0x40620
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set数值: 即可补全。
    // 0x040620  mov      x1, x2                                  
    // 0x040624  adrp     x8, #0xad000                            
    // 0x040628  ldrsw    x8, [x8, #0xa68]                        
    // 0x04062c  b        #0x60194                                ; func_0x60194
}

- (id)步进 {   // 0x40630
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 步进 即可补全。
    // 0x040630  adrp     x8, #0xad000                            
    // 0x040634  ldrsw    x8, [x8, #0xa6c]                        
    // 0x040638  b        #0x601f8                                ; func_0x601f8
}

- (void)set步进:(id)set步进 {   // 0x4063c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set步进: 即可补全。
    // 0x04063c  mov      x1, x2                                  
    // 0x040640  adrp     x8, #0xad000                            
    // 0x040644  ldrsw    x8, [x8, #0xa6c]                        
    // 0x040648  b        #0x60194                                ; func_0x60194
}

- (id)变化 {   // 0x4064c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 变化 即可补全。
    // 0x04064c  adrp     x8, #0xad000                            
    // 0x040650  ldrsw    x8, [x8, #0xa70]                        
    // 0x040654  b        #0x601f8                                ; func_0x601f8
}

- (void)set变化:(id)set变化 {   // 0x40658
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set变化: 即可补全。
    // 0x040658  adrp     x8, #0xad000                            
    // 0x04065c  ldrsw    x3, [x8, #0xa70]                        
    // 0x040660  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)隐藏 {   // 0x40664
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 隐藏 即可补全。
    // 0x040664  adrp     x8, #0xad000                            
    // 0x040668  ldrsw    x8, [x8, #0xa74]                        
    // 0x04066c  b        #0x619f8                                ; func_0x619f8
}

- (void)set隐藏:(BOOL)set隐藏 {   // 0x40670
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set隐藏: 即可补全。
    // 0x040670  adrp     x8, #0xad000                            
    // 0x040674  ldrsw    x8, [x8, #0xa74]                        
    // 0x040678  b        #0x619f0                                ; func_0x619f0
}

- (id)零显示 {   // 0x4067c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 零显示 即可补全。
    // 0x04067c  adrp     x8, #0xad000                            
    // 0x040680  ldrsw    x8, [x8, #0xa78]                        
    // 0x040684  b        #0x601f8                                ; func_0x601f8
}

- (void)set零显示:(id)set零显示 {   // 0x40688
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 参数行 set零显示: 即可补全。
    // 0x040688  adrp     x8, #0xad000                            
    // 0x04068c  ldrsw    x3, [x8, #0xa78]                        
    // 0x040690  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

@end