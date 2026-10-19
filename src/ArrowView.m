//
//  方向箭头视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 方向箭头视图

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x445e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 initWithFrame: 即可补全。
    // 0x0445e8  sub      sp, sp, #0x50                           
    // 0x0445ec  stp      x24, x23, [sp, #0x10]                   
    // 0x0445f0  stp      x22, x21, [sp, #0x20]                   
    // 0x0445f4  stp      x20, x19, [sp, #0x30]                   
    // 0x0445f8  stp      x29, x30, [sp, #0x40]                   
    // 0x0445fc  add      x29, sp, #0x40                          
    // 0x044600  adrp     x8, #0xad000                            
    // 0x044604  ldr      x8, [x8, #0x550]                        ; class(方向箭头视图)
    // 0x044608  stp      x0, x8, [sp]                            
    // 0x04460c  adrp     x8, #0xaa000                            
    // 0x044610  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x044614  mov      x0, sp                                  
    // 0x044618  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x04461c  mov      x19, x0                                 
    // 0x044620  cbz      x0, #0x447d0                            
    // 0x044624  adrp     x8, #0xad000                            
    // 0x044628  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x04462c  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x044630  mov      x29, x29                                
    // 0x044634  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x044638  bl       #0x60300                                ; func_0x60300
    // 0x04463c  bl       #0x60184                                ; func_0x60184
    // 0x044640  bl       #0x61b88                                ; func_0x61b88
    // 0x044644  bl       #0x6cd20                                ; [class(?0x0) setUserInteractionEnabled:] x2, x3, x4, x5, x6, x7
}

- (void)set方向:(long long)set方向 {   // 0x447ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 set方向: 即可补全。
    // 0x0447ec  adrp     x8, #0xad000                            
    // 0x0447f0  ldrsw    x8, [x8, #0xac8]                        
    // 0x0447f4  str      x2, [x0, x8]                            
    // 0x0447f8  b        #0x74640                                ; [x0 重画] x2, x3, x4, x5, x6, x7
}

- (void)set长度:(double)set长度 {   // 0x447fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 set长度: 即可补全。
    // 0x0447fc  adrp     x8, #0xad000                            
    // 0x044800  ldrsw    x8, [x8, #0xacc]                        
    // 0x044804  str      d0, [x0, x8]                            
    // 0x044808  b        #0x74640                                ; [x0 重画] x2, x3, x4, x5, x6, x7
}

- (void)layoutSubviews {   // 0x4480c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 layoutSubviews 即可补全。
    // 0x04480c  sub      sp, sp, #0x30                           
    // 0x044810  stp      x20, x19, [sp, #0x10]                   
    // 0x044814  stp      x29, x30, [sp, #0x20]                   
    // 0x044818  add      x29, sp, #0x20                          
    // 0x04481c  mov      x19, x0                                 
    // 0x044820  adrp     x8, #0xad000                            
    // 0x044824  ldr      x8, [x8, #0x550]                        ; class(方向箭头视图)
    // 0x044828  stp      x0, x8, [sp]                            
    // 0x04482c  adrp     x8, #0xac000                            
    // 0x044830  ldr      x1, [x8, #0xd30]                        ; SEL("layoutSubviews")
    // 0x044834  bl       #0x60a00                                ; func_0x60a00
    // 0x044838  mov      x0, x19                                 
    // 0x04483c  bl       #0x74640                                ; [x0 重画] x2, x3, x4, x5, x6, x7
    // 0x044840  ldp      x29, x30, [sp, #0x20]                   
    // 0x044844  b        #0x60ccc                                ; func_0x60ccc
}

- (void)重画 {   // 0x44848
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 重画 即可补全。
    // 0x044848  mov      x1, x30                                 
    // 0x04484c  bl       #0x60bd8                                ; func_0x60bd8
    // 0x044850  mov      x30, x1                                 
    // 0x044854  stp      x29, x30, [sp, #0x40]                   
    // 0x044858  add      x29, sp, #0x40                          
    // 0x04485c  bl       #0x6220c                                ; func_0x6220c
    // 0x044860  fmov     d9, d2                                  
    // 0x044864  bl       #0x60d28                                ; func_0x60d28
    // 0x044868  fmov     d0, #12.00000000                        
    // 0x04486c  fcmp     d9, d0                                  
    // 0x044870  fccmp    d3, d0, #8, pl                          
    // 0x044874  b.pl     #0x44890                                
    // 0x044878  ldp      x29, x30, [sp, #0x40]                   
    // 0x04487c  ldp      x20, x19, [sp, #0x30]                   
    // 0x044880  ldp      x22, x21, [sp, #0x20]                   
    // 0x044884  ldp      d9, d8, [sp, #0x10]                     
    // 0x044888  ldp      d11, d10, [sp], #0x50                   
    // 0x04488c  ret                                              
    // 0x044890  fmov     d0, #0.50000000                         
    // 0x044894  fmul     d8, d3, d0                              
    // 0x044898  adrp     x8, #0x7b000                            
    // 0x04489c  ldr      d0, [x8, #0xbc0]                        ; ptr_0x7bbc0
    // 0x0448a0  fmul     d0, d9, d0                              
    // 0x0448a4  fmov     d1, #10.00000000                        
}

- (long long)方向 {   // 0x449bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 方向 即可补全。
    // 0x0449bc  adrp     x8, #0xad000                            
    // 0x0449c0  ldrsw    x8, [x8, #0xac8]                        
    // 0x0449c4  b        #0x601f8                                ; func_0x601f8
}

- (double)长度 {   // 0x449c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 方向箭头视图 长度 即可补全。
    // 0x0449c8  adrp     x8, #0xad000                            
    // 0x0449cc  ldrsw    x8, [x8, #0xacc]                        
    // 0x0449d0  ldr      d0, [x0, x8]                            
    // 0x0449d4  ret                                              
}

@end