//
//  触摸事件数据.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 触摸事件数据

- (id)initWithCoder:(id)initWithCoder {   // 0x39f10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 initWithCoder: 即可补全。
    // 0x039f10  sub      sp, sp, #0x40                           
    // 0x039f14  stp      x22, x21, [sp, #0x10]                   
    // 0x039f18  stp      x20, x19, [sp, #0x20]                   
    // 0x039f1c  stp      x29, x30, [sp, #0x30]                   
    // 0x039f20  add      x29, sp, #0x30                          
    // 0x039f24  mov      x20, x0                                 
    // 0x039f28  bl       #0x3a378                                ; func_0x3a378
    // 0x039f2c  mov      x19, x0                                 
    // 0x039f30  adrp     x8, #0xad000                            
    // 0x039f34  ldr      x8, [x8, #0x538]                        ; class(触摸事件数据)
    // 0x039f38  stp      x20, x8, [sp]                           
    // 0x039f3c  adrp     x8, #0xaa000                            
    // 0x039f40  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x039f44  mov      x0, sp                                  
    // 0x039f48  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x039f4c  mov      x20, x0                                 
    // 0x039f50  cbz      x0, #0x39fb8                            
    // 0x039f54  adrp     x2, #0x92000                            
    // 0x039f58  add      x2, x2, #0x1b0                          
    // 0x039f5c  mov      x0, x19                                 
    // 0x039f60  bl       #0x6a900                                ; [x0 decodeDoubleForKey:] x2, x3, x4, x5, x6, x7
    // 0x039f64  str      d0, [x20, #8]                           
    // 0x039f68  adrp     x2, #0x90000                            
    // 0x039f6c  add      x2, x2, #0xf30                          
}

- (void)encodeWithCoder:(id)encodeWithCoder {   // 0x39fd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 encodeWithCoder: 即可补全。
    // 0x039fd4  stp      d9, d8, [sp, #-0x30]!                   
    // 0x039fd8  stp      x20, x19, [sp, #0x10]                   
    // 0x039fdc  stp      x29, x30, [sp, #0x20]                   
    // 0x039fe0  add      x29, sp, #0x20                          
    // 0x039fe4  mov      x19, x0                                 
    // 0x039fe8  ldr      d8, [x0, #8]                            
    // 0x039fec  bl       #0x3a378                                ; func_0x3a378
    // 0x039ff0  mov      x20, x0                                 
    // 0x039ff4  adrp     x2, #0x92000                            
    // 0x039ff8  add      x2, x2, #0x1b0                          
    // 0x039ffc  fmov     d0, d8                                  
    // 0x03a000  bl       #0x6ab60                                ; [x0 encodeDouble:forKey:] x2, x3, x4, x5, x6, x7
    // 0x03a004  ldr      x2, [x19, #0x10]                        
    // 0x03a008  adrp     x3, #0x90000                            
    // 0x03a00c  add      x3, x3, #0xf30                          
    // 0x03a010  mov      x0, x20                                 
    // 0x03a014  bl       #0x6ab80                                ; [x0 encodeInteger:forKey:] x2, x3, x4, x5, x6, x7
    // 0x03a018  ldr      x2, [x19, #0x18]                        
    // 0x03a01c  adrp     x3, #0x92000                            
    // 0x03a020  add      x3, x3, #0x1d0                          
    // 0x03a024  mov      x0, x20                                 
    // 0x03a028  bl       #0x6ab80                                ; [x0 encodeInteger:forKey:] x2, x3, x4, x5, x6, x7
    // 0x03a02c  adrp     x8, #0xad000                            
    // 0x03a030  ldr      x0, [x8, #0x1e8]                        ; class(?0x0)
}

- (id)copyWithZone:(void *)copyWithZone {   // 0x3a074
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 copyWithZone: 即可补全。
    // 0x03a074  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03a078  stp      x29, x30, [sp, #0x10]                   
    // 0x03a07c  add      x29, sp, #0x10                          
    // 0x03a080  mov      x19, x0                                 
    // 0x03a084  adrp     x8, #0xad000                            
    // 0x03a088  ldr      x0, [x8, #0x1e0]                        ; class(触摸事件数据)
    // 0x03a08c  bl       #0x69e00                                ; [class(触摸事件数据) allocWithZone:] x2, x3, x4, x5, x6, x7
    // 0x03a090  bl       #0x6aec0                                ; [class(触摸事件数据) init] x2, x3, x4, x5, x6, x7
    // 0x03a094  mov      x20, x0                                 
    // 0x03a098  ldr      d0, [x19, #8]                           
    // 0x03a09c  bl       #0x6df40                                ; [class(触摸事件数据) set时间戳:] x2, x3, x4, x5, x6, x7
    // 0x03a0a0  ldr      x2, [x19, #0x10]                        
    // 0x03a0a4  mov      x0, x20                                 
    // 0x03a0a8  bl       #0x6cee0                                ; [class(触摸事件数据) set事件类型:] x2, x3, x4, x5, x6, x7
    // 0x03a0ac  ldr      x2, [x19, #0x18]                        
    // 0x03a0b0  mov      x0, x20                                 
    // 0x03a0b4  bl       #0x6dca0                                ; [class(触摸事件数据) set手指ID:] x2, x3, x4, x5, x6, x7
    // 0x03a0b8  ldp      d0, d1, [x19, #0x20]                    
    // 0x03a0bc  mov      x0, x20                                 
    // 0x03a0c0  bl       #0x6cf20                                ; [class(触摸事件数据) set位置:] x2, x3, x4, x5, x6, x7
    // 0x03a0c4  mov      x0, x20                                 
    // 0x03a0c8  ldp      x29, x30, [sp, #0x10]                   
    // 0x03a0cc  ldp      x20, x19, [sp], #0x20                   
    // 0x03a0d0  ret                                              
}

- (id)description {   // 0x3a0d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 description 即可补全。
    // 0x03a0d4  sub      sp, sp, #0x40                           
    // 0x03a0d8  stp      x29, x30, [sp, #0x30]                   
    // 0x03a0dc  add      x29, sp, #0x30                          
    // 0x03a0e0  adrp     x8, #0xad000                            
    // 0x03a0e4  ldr      x8, [x8, #0x98]                         ; class(?0x0)
    // 0x03a0e8  ldr      d0, [x0, #8]                            
    // 0x03a0ec  ldp      x9, x10, [x0, #0x10]                    
    // 0x03a0f0  ldp      d1, d2, [x0, #0x20]                     
    // 0x03a0f4  stp      d1, d2, [sp, #0x18]                     
    // 0x03a0f8  stp      x9, x10, [sp, #8]                       
    // 0x03a0fc  str      d0, [sp]                                
    // 0x03a100  adrp     x2, #0x92000                            
    // 0x03a104  add      x2, x2, #0x210                          
    // 0x03a108  mov      x0, x8                                  
    // 0x03a10c  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x03a110  ldp      x29, x30, [sp, #0x30]                   
    // 0x03a114  add      sp, sp, #0x40                           
    // 0x03a118  ret                                              
}

- (double)时间戳 {   // 0x3a11c
    return __时间戳;
}

- (void)set时间戳:(double)set时间戳 {   // 0x3a124
    return __时间戳;
}

- (long long)事件类型 {   // 0x3a12c
    return __事件类型;
}

- (void)set事件类型:(long long)set事件类型 {   // 0x3a134
    __事件类型 = set事件类型;
}

- (long long)手指ID {   // 0x3a13c
    return __手指ID;
}

- (void)set手指ID:(long long)set手指ID {   // 0x3a144
    __手指ID = set手指ID;
}

- (CGPoint)位置 {   // 0x3a14c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 位置 即可补全。
    // 0x03a14c  ldp      d0, d1, [x0, #0x20]                     
    // 0x03a150  ret                                              
}

- (void)set位置:(CGPoint)set位置 {   // 0x3a154
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 触摸事件数据 set位置: 即可补全。
    // 0x03a154  stp      d0, d1, [x0, #0x20]                     
    // 0x03a158  ret                                              
}

@end