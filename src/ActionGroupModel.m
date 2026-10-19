//
//  动作组模型.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 动作组模型

- (id)initWithCoder:(id)initWithCoder {   // 0x37e4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作组模型 initWithCoder: 即可补全。
    // 0x037e4c  sub      sp, sp, #0x50                           
    // 0x037e50  stp      x24, x23, [sp, #0x10]                   
    // 0x037e54  stp      x22, x21, [sp, #0x20]                   
    // 0x037e58  stp      x20, x19, [sp, #0x30]                   
    // 0x037e5c  stp      x29, x30, [sp, #0x40]                   
    // 0x037e60  add      x29, sp, #0x40                          
    // 0x037e64  mov      x20, x0                                 
    // 0x037e68  bl       #0x38268                                ; func_0x38268
    // 0x037e6c  mov      x19, x0                                 
    // 0x037e70  adrp     x8, #0xad000                            
    // 0x037e74  ldr      x8, [x8, #0x528]                        ; class(动作组模型)
    // 0x037e78  stp      x20, x8, [sp]                           
    // 0x037e7c  adrp     x8, #0xaa000                            
    // 0x037e80  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x037e84  mov      x0, sp                                  
    // 0x037e88  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x037e8c  mov      x20, x0                                 
    // 0x037e90  cbz      x0, #0x37f50                            
    // 0x037e94  adrp     x2, #0x90000                            
    // 0x037e98  add      x2, x2, #0xed0                          
    // 0x037e9c  mov      x0, x19                                 
    // 0x037ea0  bl       #0x6a940                                ; [x0 decodeObjectForKey:] x2, x3, x4, x5, x6, x7
    // 0x037ea4  mov      x29, x29                                
    // 0x037ea8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)encodeWithCoder:(id)encodeWithCoder {   // 0x37f74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作组模型 encodeWithCoder: 即可补全。
    // 0x037f74  stp      x22, x21, [sp, #-0x30]!                 
    // 0x037f78  stp      x20, x19, [sp, #0x10]                   
    // 0x037f7c  stp      x29, x30, [sp, #0x20]                   
    // 0x037f80  add      x29, sp, #0x20                          
    // 0x037f84  mov      x19, x0                                 
    // 0x037f88  ldr      x20, [x0, #0x10]                        
    // 0x037f8c  bl       #0x38268                                ; func_0x38268
    // 0x037f90  mov      x21, x0                                 
    // 0x037f94  adrp     x3, #0x90000                            
    // 0x037f98  add      x3, x3, #0xed0                          
    // 0x037f9c  mov      x2, x20                                 
    // 0x037fa0  bl       #0x6aba0                                ; [x0 encodeObject:forKey:] x2, x3, x4, x5, x6, x7
    // 0x037fa4  ldr      x2, [x19, #0x18]                        
    // 0x037fa8  adrp     x3, #0x90000                            
    // 0x037fac  add      x3, x3, #0xf10                          
    // 0x037fb0  mov      x0, x21                                 
    // 0x037fb4  bl       #0x6aba0                                ; [x0 encodeObject:forKey:] x2, x3, x4, x5, x6, x7
    // 0x037fb8  ldrb     w2, [x19, #8]                           
    // 0x037fbc  adrp     x3, #0x92000                            
    // 0x037fc0  add      x3, x3, #0x30                           
    // 0x037fc4  mov      x0, x21                                 
    // 0x037fc8  bl       #0x6ab40                                ; [x0 encodeBool:forKey:] x2, x3, x4, x5, x6, x7
    // 0x037fcc  mov      x0, x21                                 
    // 0x037fd0  ldp      x29, x30, [sp, #0x20]                   
}

- (id)description {   // 0x3816c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作组模型 description 即可补全。
    // 0x03816c  sub      sp, sp, #0x50                           
    // 0x038170  stp      x22, x21, [sp, #0x20]                   
    // 0x038174  stp      x20, x19, [sp, #0x30]                   
    // 0x038178  stp      x29, x30, [sp, #0x40]                   
    // 0x03817c  add      x29, sp, #0x40                          
    // 0x038180  mov      x19, x0                                 
    // 0x038184  adrp     x8, #0xad000                            
    // 0x038188  ldr      x20, [x8, #0x98]                        ; class(?0x0)
    // 0x03818c  bl       #0x69010                                ; _objc_opt_class
    // 0x038190  bl       #0x68c44                                ; _NSStringFromClass
    // 0x038194  mov      x29, x29                                
    // 0x038198  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03819c  mov      x21, x0                                 
    // 0x0381a0  ldr      x8, [x19, #0x18]                        
    // 0x0381a4  ldrb     w9, [x19, #9]                           
    // 0x0381a8  stp      x8, x9, [sp, #8]                        
    // 0x0381ac  str      x0, [sp]                                
    // 0x0381b0  adrp     x2, #0x92000                            
    // 0x0381b4  add      x2, x2, #0x50                           
    // 0x0381b8  mov      x0, x20                                 
    // 0x0381bc  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x0381c0  mov      x29, x29                                
    // 0x0381c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0381c8  mov      x19, x0                                 
}

- (NSString *)标识 {   // 0x381e8
    return _标识;
}

- (void)set标识:(NSString *)set标识 {   // 0x381f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作组模型 set标识: 即可补全。
    // 0x0381f0  mov      w3, #0x10                               
    // 0x0381f4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)名称 {   // 0x381f8
    return _名称;
}

- (void)set名称:(NSString *)set名称 {   // 0x38200
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作组模型 set名称: 即可补全。
    // 0x038200  mov      w3, #0x18                               
    // 0x038204  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)专属 {   // 0x38208
    return _专属;
}

- (void)set专属:(BOOL)set专属 {   // 0x38210
    _专属 = set专属;
}

- (BOOL)是否开启 {   // 0x38218
    return _是否开启;
}

- (void)set是否开启:(BOOL)set是否开启 {   // 0x38220
    _是否开启 = set是否开启;
}

@end