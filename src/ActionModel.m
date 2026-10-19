//
//  动作模型.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 动作模型

- (id)init {   // 0x2c5c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 init 即可补全。
    // 0x02c5c4  sub      sp, sp, #0x110                          
    // 0x02c5c8  stp      d11, d10, [sp, #0x90]                   
    // 0x02c5cc  stp      d9, d8, [sp, #0xa0]                     
    // 0x02c5d0  stp      x28, x27, [sp, #0xb0]                   
    // 0x02c5d4  stp      x26, x25, [sp, #0xc0]                   
    // 0x02c5d8  stp      x24, x23, [sp, #0xd0]                   
    // 0x02c5dc  stp      x22, x21, [sp, #0xe0]                   
    // 0x02c5e0  stp      x20, x19, [sp, #0xf0]                   
    // 0x02c5e4  stp      x29, x30, [sp, #0x100]                  
    // 0x02c5e8  add      x29, sp, #0x100                         
    // 0x02c5ec  adrp     x8, #0x8c000                            
    // 0x02c5f0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02c5f4  ldr      x8, [x8]                                
    // 0x02c5f8  str      x8, [sp, #0x80]                         
    // 0x02c5fc  adrp     x8, #0xad000                            
    // 0x02c600  ldr      x8, [x8, #0x4f8]                        ; class(动作模型)
    // 0x02c604  stp      x0, x8, [sp, #0x28]                     
    // 0x02c608  adrp     x8, #0xaa000                            
    // 0x02c60c  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x02c610  add      x0, sp, #0x28                           
    // 0x02c614  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x02c618  mov      x19, x0                                 
    // 0x02c61c  cbz      x0, #0x2ca7c                            
    // 0x02c620  adrp     x8, #0xad000                            
}

- (void)确保标识 {   // 0x2cac4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 确保标识 即可补全。
    // 0x02cac4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x02cac8  stp      x29, x30, [sp, #0x10]                   
    // 0x02cacc  add      x29, sp, #0x10                          
    // 0x02cad0  mov      x19, x0                                 
    // 0x02cad4  ldr      x0, [x0, #0x18]                         
    // 0x02cad8  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x02cadc  cbz      x0, #0x2caec                            
    // 0x02cae0  ldp      x29, x30, [sp, #0x10]                   
    // 0x02cae4  ldp      x20, x19, [sp], #0x20                   
    // 0x02cae8  ret                                              
    // 0x02caec  adrp     x8, #0xad000                            
    // 0x02caf0  ldr      x0, [x8, #0x3b0]                        ; class(?0x0)
    // 0x02caf4  bl       #0x69b60                                ; [class(?0x0) UUID] x2, x3, x4, x5, x6, x7
    // 0x02caf8  mov      x29, x29                                
    // 0x02cafc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02cb00  mov      x20, x0                                 
    // 0x02cb04  bl       #0x69b80                                ; [class(?0x0) UUIDString] x2, x3, x4, x5, x6, x7
    // 0x02cb08  mov      x29, x29                                
    // 0x02cb0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02cb10  ldr      x8, [x19, #0x18]                        
    // 0x02cb14  str      x0, [x19, #0x18]                        
    // 0x02cb18  bl       #0x2f454                                ; func_0x2f454
    // 0x02cb1c  mov      x0, x20                                 
    // 0x02cb20  ldp      x29, x30, [sp, #0x10]                   
}

- (id)CQ全部跳转目标标识 {   // 0x2cb28
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 CQ全部跳转目标标识 即可补全。
    // 0x02cb28  sub      sp, sp, #0x60                           
    // 0x02cb2c  stp      x22, x21, [sp, #0x30]                   
    // 0x02cb30  stp      x20, x19, [sp, #0x40]                   
    // 0x02cb34  stp      x29, x30, [sp, #0x50]                   
    // 0x02cb38  add      x29, sp, #0x50                          
    // 0x02cb3c  mov      x19, x0                                 
    // 0x02cb40  adrp     x8, #0xad000                            
    // 0x02cb44  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x02cb48  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x02cb4c  mov      x29, x29                                
    // 0x02cb50  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02cb54  adrp     x8, #0x8c000                            
    // 0x02cb58  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x02cb5c  str      x8, [sp, #8]                            
    // 0x02cb60  adrp     x8, #0x7b000                            
    // 0x02cb64  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x02cb68  str      d0, [sp, #0x10]                         
    // 0x02cb6c  adrp     x8, #0x2c000                            
    // 0x02cb70  add      x8, x8, #0xc30                          
    // 0x02cb74  adrp     x9, #0x8d000                            
    // 0x02cb78  add      x9, x9, #0x148                          
    // 0x02cb7c  stp      x8, x9, [sp, #0x18]                     
    // 0x02cb80  bl       #0x6904c                                ; _objc_retain
    // 0x02cb84  mov      x20, x0                                 
}

- (id)initWithCoder:(id)initWithCoder {   // 0x2cc7c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 initWithCoder: 即可补全。
    // 0x02cc7c  sub      sp, sp, #0x70                           
    // 0x02cc80  stp      d9, d8, [sp, #0x10]                     
    // 0x02cc84  stp      x26, x25, [sp, #0x20]                   
    // 0x02cc88  stp      x24, x23, [sp, #0x30]                   
    // 0x02cc8c  stp      x22, x21, [sp, #0x40]                   
    // 0x02cc90  stp      x20, x19, [sp, #0x50]                   
    // 0x02cc94  stp      x29, x30, [sp, #0x60]                   
    // 0x02cc98  add      x29, sp, #0x60                          
    // 0x02cc9c  mov      x20, x0                                 
    // 0x02cca0  bl       #0x2f518                                ; func_0x2f518
    // 0x02cca4  mov      x19, x0                                 
    // 0x02cca8  adrp     x8, #0xad000                            
    // 0x02ccac  ldr      x8, [x8, #0x4f8]                        ; class(动作模型)
    // 0x02ccb0  stp      x20, x8, [sp]                           
    // 0x02ccb4  adrp     x8, #0xaa000                            
    // 0x02ccb8  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x02ccbc  mov      x0, sp                                  
    // 0x02ccc0  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x02ccc4  mov      x29, x29                                
    // 0x02ccc8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02cccc  mov      x20, x0                                 
    // 0x02ccd0  bl       #0x69040                                ; _objc_release
    // 0x02ccd4  cbz      x20, #0x2dc40                           
    // 0x02ccd8  adrp     x2, #0x90000                            
}

- (void)encodeWithCoder:(id)encodeWithCoder {   // 0x2dc74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 encodeWithCoder: 即可补全。
    // 0x02dc74  stp      x22, x21, [sp, #-0x30]!                 
    // 0x02dc78  stp      x20, x19, [sp, #0x10]                   
    // 0x02dc7c  stp      x29, x30, [sp, #0x20]                   
    // 0x02dc80  add      x29, sp, #0x20                          
    // 0x02dc84  mov      x20, x0                                 
    // 0x02dc88  ldr      x21, [x0, #0x18]                        
    // 0x02dc8c  bl       #0x2f518                                ; func_0x2f518
    // 0x02dc90  mov      x19, x0                                 
    // 0x02dc94  adrp     x3, #0x90000                            
    // 0x02dc98  add      x3, x3, #0xed0                          
    // 0x02dc9c  mov      x2, x21                                 
    // 0x02dca0  bl       #0x6aba0                                ; [x0 encodeObject:forKey:] x2, x3, x4, x5, x6, x7
    // 0x02dca4  ldr      x2, [x20, #0x20]                        
    // 0x02dca8  adrp     x3, #0x90000                            
    // 0x02dcac  add      x3, x3, #0xef0                          
    // 0x02dcb0  bl       #0x2f44c                                ; func_0x2f44c
    // 0x02dcb4  ldr      x2, [x20, #0x28]                        
    // 0x02dcb8  adrp     x3, #0x90000                            
    // 0x02dcbc  add      x3, x3, #0xf10                          
    // 0x02dcc0  bl       #0x2f44c                                ; func_0x2f44c
    // 0x02dcc4  ldr      x2, [x20, #0x30]                        
    // 0x02dcc8  adrp     x3, #0x90000                            
    // 0x02dccc  add      x3, x3, #0xf30                          
    // 0x02dcd0  bl       #0x2f424                                ; func_0x2f424
}

- (id)copyWithZone:(void *)copyWithZone {   // 0x2e478
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 copyWithZone: 即可补全。
    // 0x02e478  stp      x22, x21, [sp, #-0x30]!                 
    // 0x02e47c  stp      x20, x19, [sp, #0x10]                   
    // 0x02e480  stp      x29, x30, [sp, #0x20]                   
    // 0x02e484  add      x29, sp, #0x20                          
    // 0x02e488  mov      x20, x0                                 
    // 0x02e48c  adrp     x8, #0xad000                            
    // 0x02e490  ldr      x0, [x8, #0x230]                        ; class(?0x0)
    // 0x02e494  mov      x2, x20                                 
    // 0x02e498  mov      w3, #0                                  
    // 0x02e49c  mov      x4, #0                                  
    // 0x02e4a0  bl       #0x6a080                                ; [class(?0x0) archivedDataWithRootObject:requiringSecureCoding:error:] x0, x3, #0, x5, x6, x7
    // 0x02e4a4  mov      x29, x29                                
    // 0x02e4a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02e4ac  mov      x19, x0                                 
    // 0x02e4b0  cbz      x0, #0x2e4e8                            
    // 0x02e4b4  adrp     x8, #0xad000                            
    // 0x02e4b8  ldr      x0, [x8, #0x3b8]                        ; class(?0x0)
    // 0x02e4bc  mov      x2, x19                                 
    // 0x02e4c0  bl       #0x6fc00                                ; [class(?0x0) unarchiveObjectWithData:] class(?0x0), x3, #0, x5, x6, x7
    // 0x02e4c4  mov      x29, x29                                
    // 0x02e4c8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02e4cc  mov      x21, x0                                 
    // 0x02e4d0  cmp      x0, #0                                  
    // 0x02e4d4  csel     x0, x20, x0, eq                         
}

- (id)description {   // 0x2e6fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 description 即可补全。
    // 0x02e6fc  sub      sp, sp, #0x60                           
    // 0x02e700  stp      x24, x23, [sp, #0x20]                   
    // 0x02e704  stp      x22, x21, [sp, #0x30]                   
    // 0x02e708  stp      x20, x19, [sp, #0x40]                   
    // 0x02e70c  stp      x29, x30, [sp, #0x50]                   
    // 0x02e710  add      x29, sp, #0x50                          
    // 0x02e714  mov      x19, x0                                 
    // 0x02e718  adrp     x8, #0xad000                            
    // 0x02e71c  ldr      x20, [x8, #0x98]                        ; class(?0x0)
    // 0x02e720  bl       #0x69010                                ; _objc_opt_class
    // 0x02e724  bl       #0x68c44                                ; _NSStringFromClass
    // 0x02e728  mov      x29, x29                                
    // 0x02e72c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02e730  mov      x21, x0                                 
    // 0x02e734  ldp      x23, x0, [x19, #0x28]                   
    // 0x02e738  bl       #0x2e6d8                                ; func_0x2e6d8
    // 0x02e73c  mov      x29, x29                                
    // 0x02e740  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02e744  mov      x22, x0                                 
    // 0x02e748  ldr      x8, [x19, #0x38]                        
    // 0x02e74c  stp      x0, x8, [sp, #0x10]                     
    // 0x02e750  stp      x21, x23, [sp]                          
    // 0x02e754  adrp     x2, #0x91000                            
    // 0x02e758  add      x2, x2, #0xcb0                          
}

- (NSString *)标识 {   // 0x2e794
    return _标识;
}

- (void)set标识:(NSString *)set标识 {   // 0x2e79c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set标识: 即可补全。
    // 0x02e79c  mov      w3, #0x18                               
    // 0x02e7a0  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)gid {   // 0x2e7a4
    return _gid;
}

- (void)setGid:(NSString *)setGid {   // 0x2e7ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 setGid: 即可补全。
    // 0x02e7ac  mov      w3, #0x20                               
    // 0x02e7b0  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)名称 {   // 0x2e7b4
    return _名称;
}

- (void)set名称:(NSString *)set名称 {   // 0x2e7bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set名称: 即可补全。
    // 0x02e7bc  mov      w3, #0x28                               
    // 0x02e7c0  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)类型 {   // 0x2e7c4
    return _类型;
}

- (void)set类型:(long long)set类型 {   // 0x2e7cc
    _类型 = set类型;
}

- (BOOL)是否开启 {   // 0x2e7d4
    return _是否开启;
}

- (void)set是否开启:(BOOL)set是否开启 {   // 0x2e7dc
    _是否开启 = set是否开启;
}

- (long long)次数 {   // 0x2e7e4
    return _次数;
}

- (void)set次数:(long long)set次数 {   // 0x2e7ec
    _次数 = set次数;
}

- (double)开始延迟 {   // 0x2e7f4
    return _开始延迟;
}

- (void)set开始延迟:(double)set开始延迟 {   // 0x2e7fc
    _开始延迟 = set开始延迟;
}

- (double)结束延迟 {   // 0x2e804
    return _结束延迟;
}

- (void)set结束延迟:(double)set结束延迟 {   // 0x2e80c
    _结束延迟 = set结束延迟;
}

- (double)连点间隔 {   // 0x2e814
    return _连点间隔;
}

- (void)set连点间隔:(double)set连点间隔 {   // 0x2e81c
    _连点间隔 = set连点间隔;
}

- (long long)自动复杂度 {   // 0x2e824
    return _自动复杂度;
}

- (void)set自动复杂度:(long long)set自动复杂度 {   // 0x2e82c
    _自动复杂度 = set自动复杂度;
}

- (CGPoint)坐标 {   // 0x2e834
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 坐标 即可补全。
    // 0x02e834  ldr      d0, [x0, #0x340]                        
    // 0x02e838  ldr      d1, [x0, #0x348]                        
    // 0x02e83c  ret                                              
}

- (void)set坐标:(CGPoint)set坐标 {   // 0x2e840
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set坐标: 即可补全。
    // 0x02e840  str      d0, [x0, #0x340]                        
    // 0x02e844  str      d1, [x0, #0x348]                        
    // 0x02e848  ret                                              
}

- (CGPoint)起始坐标 {   // 0x2e84c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 起始坐标 即可补全。
    // 0x02e84c  ldr      d0, [x0, #0x350]                        
    // 0x02e850  ldr      d1, [x0, #0x358]                        
    // 0x02e854  ret                                              
}

- (void)set起始坐标:(CGPoint)set起始坐标 {   // 0x2e858
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set起始坐标: 即可补全。
    // 0x02e858  str      d0, [x0, #0x350]                        
    // 0x02e85c  str      d1, [x0, #0x358]                        
    // 0x02e860  ret                                              
}

- (CGPoint)结束坐标 {   // 0x2e864
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 结束坐标 即可补全。
    // 0x02e864  ldr      d0, [x0, #0x360]                        
    // 0x02e868  ldr      d1, [x0, #0x368]                        
    // 0x02e86c  ret                                              
}

- (void)set结束坐标:(CGPoint)set结束坐标 {   // 0x2e870
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set结束坐标: 即可补全。
    // 0x02e870  str      d0, [x0, #0x360]                        
    // 0x02e874  str      d1, [x0, #0x368]                        
    // 0x02e878  ret                                              
}

- (NSArray *)位置偏移 {   // 0x2e87c
    return _位置偏移;
}

- (void)set位置偏移:(NSArray *)set位置偏移 {   // 0x2e884
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set位置偏移: 即可补全。
    // 0x02e884  mov      w3, #0x60                               
    // 0x02e888  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)偏移随机数 {   // 0x2e88c
    return _偏移随机数;
}

- (void)set偏移随机数:(long long)set偏移随机数 {   // 0x2e894
    _偏移随机数 = set偏移随机数;
}

- (long long)时长随机开关 {   // 0x2e89c
    return _时长随机开关;
}

- (void)set时长随机开关:(long long)set时长随机开关 {   // 0x2e8a4
    _时长随机开关 = set时长随机开关;
}

- (double)时长随机幅度 {   // 0x2e8ac
    return _时长随机幅度;
}

- (void)set时长随机幅度:(double)set时长随机幅度 {   // 0x2e8b4
    _时长随机幅度 = set时长随机幅度;
}

- (long long)等待随机 {   // 0x2e8bc
    return _等待随机;
}

- (void)set等待随机:(long long)set等待随机 {   // 0x2e8c4
    _等待随机 = set等待随机;
}

- (double)等待秒 {   // 0x2e8cc
    return _等待秒;
}

- (void)set等待秒:(double)set等待秒 {   // 0x2e8d4
    _等待秒 = set等待秒;
}

- (double)等待下限 {   // 0x2e8dc
    return _等待下限;
}

- (void)set等待下限:(double)set等待下限 {   // 0x2e8e4
    _等待下限 = set等待下限;
}

- (double)等待上限 {   // 0x2e8ec
    return _等待上限;
}

- (void)set等待上限:(double)set等待上限 {   // 0x2e8f4
    _等待上限 = set等待上限;
}

- (long long)等待结束行为 {   // 0x2e8fc
    return _等待结束行为;
}

- (void)set等待结束行为:(long long)set等待结束行为 {   // 0x2e904
    _等待结束行为 = set等待结束行为;
}

- (NSString *)等待跳转 {   // 0x2e90c
    return _等待跳转;
}

- (void)set等待跳转:(NSString *)set等待跳转 {   // 0x2e914
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set等待跳转: 即可补全。
    // 0x02e914  mov      w3, #0xa8                               
    // 0x02e918  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)是否随机 {   // 0x2e91c
    return _是否随机;
}

- (void)set是否随机:(long long)set是否随机 {   // 0x2e924
    _是否随机 = set是否随机;
}

- (long long)位置偏移随机数开关 {   // 0x2e92c
    return _位置偏移随机数开关;
}

- (void)set位置偏移随机数开关:(long long)set位置偏移随机数开关 {   // 0x2e934
    _位置偏移随机数开关 = set位置偏移随机数开关;
}

- (double)长按时长 {   // 0x2e93c
    return _长按时长;
}

- (void)set长按时长:(double)set长按时长 {   // 0x2e944
    _长按时长 = set长按时长;
}

- (double)滑动时长 {   // 0x2e94c
    return _滑动时长;
}

- (void)set滑动时长:(double)set滑动时长 {   // 0x2e954
    _滑动时长 = set滑动时长;
}

- (long long)方向 {   // 0x2e95c
    return _方向;
}

- (void)set方向:(long long)set方向 {   // 0x2e964
    _方向 = set方向;
}

- (double)距离 {   // 0x2e96c
    return _距离;
}

- (void)set距离:(double)set距离 {   // 0x2e974
    _距离 = set距离;
}

- (long long)滑动帧数 {   // 0x2e97c
    return _滑动帧数;
}

- (void)set滑动帧数:(long long)set滑动帧数 {   // 0x2e984
    _滑动帧数 = set滑动帧数;
}

- (UIImage *)图片 {   // 0x2e98c
    return _图片;
}

- (void)set图片:(UIImage *)set图片 {   // 0x2e994
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set图片: 即可补全。
    // 0x02e994  mov      x1, x2                                  
    // 0x02e998  add      x0, x0, #0xe8                           
    // 0x02e99c  b        #0x690a0                                ; _objc_storeStrong
}

- (double)相似度 {   // 0x2e9a0
    return _相似度;
}

- (void)set相似度:(double)set相似度 {   // 0x2e9a8
    _相似度 = set相似度;
}

- (CGRect)识别区域 {   // 0x2e9b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 识别区域 即可补全。
    // 0x02e9b0  ldr      d0, [x0, #0x370]                        
    // 0x02e9b4  ldr      d1, [x0, #0x378]                        
    // 0x02e9b8  ldr      d2, [x0, #0x380]                        
    // 0x02e9bc  ldr      d3, [x0, #0x388]                        
    // 0x02e9c0  ret                                              
}

- (void)set识别区域:(CGRect)set识别区域 {   // 0x2e9c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识别区域: 即可补全。
    // 0x02e9c4  str      d0, [x0, #0x370]                        
    // 0x02e9c8  str      d1, [x0, #0x378]                        
    // 0x02e9cc  str      d2, [x0, #0x380]                        
    // 0x02e9d0  str      d3, [x0, #0x388]                        
    // 0x02e9d4  ret                                              
}

- (double)识图超时 {   // 0x2e9d8
    return _识图超时;
}

- (void)set识图超时:(double)set识图超时 {   // 0x2e9e0
    _识图超时 = set识图超时;
}

- (double)识图延迟 {   // 0x2e9e8
    return _识图延迟;
}

- (void)set识图延迟:(double)set识图延迟 {   // 0x2e9f0
    _识图延迟 = set识图延迟;
}

- (long long)识图点击 {   // 0x2e9f8
    return _识图点击;
}

- (void)set识图点击:(long long)set识图点击 {   // 0x2ea00
    _识图点击 = set识图点击;
}

- (NSString *)识图跳转 {   // 0x2ea08
    return _识图跳转;
}

- (void)set识图跳转:(NSString *)set识图跳转 {   // 0x2ea10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识图跳转: 即可补全。
    // 0x02ea10  mov      w3, #0x110                              
    // 0x02ea14  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识图命中行为 {   // 0x2ea18
    return _识图命中行为;
}

- (void)set识图命中行为:(long long)set识图命中行为 {   // 0x2ea20
    _识图命中行为 = set识图命中行为;
}

- (double)识图长按时长 {   // 0x2ea28
    return _识图长按时长;
}

- (void)set识图长按时长:(double)set识图长按时长 {   // 0x2ea30
    _识图长按时长 = set识图长按时长;
}

- (double)识图滑动时长 {   // 0x2ea38
    return _识图滑动时长;
}

- (void)set识图滑动时长:(double)set识图滑动时长 {   // 0x2ea40
    _识图滑动时长 = set识图滑动时长;
}

- (long long)识图滑动帧数 {   // 0x2ea48
    return _识图滑动帧数;
}

- (void)set识图滑动帧数:(long long)set识图滑动帧数 {   // 0x2ea50
    _识图滑动帧数 = set识图滑动帧数;
}

- (double)识图滑动时隔 {   // 0x2ea58
    return _识图滑动时隔;
}

- (void)set识图滑动时隔:(double)set识图滑动时隔 {   // 0x2ea60
    _识图滑动时隔 = set识图滑动时隔;
}

- (NSArray *)识图路径点 {   // 0x2ea68
    return _识图路径点;
}

- (void)set识图路径点:(NSArray *)set识图路径点 {   // 0x2ea70
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识图路径点: 即可补全。
    // 0x02ea70  mov      w3, #0x140                              
    // 0x02ea74  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)识图判断 {   // 0x2ea78
    return _识图判断;
}

- (void)set识图判断:(BOOL)set识图判断 {   // 0x2ea80
    _识图判断 = set识图判断;
}

- (long long)识图判断次数 {   // 0x2ea88
    return _识图判断次数;
}

- (void)set识图判断次数:(long long)set识图判断次数 {   // 0x2ea90
    _识图判断次数 = set识图判断次数;
}

- (long long)识图判断失败行为 {   // 0x2ea98
    return _识图判断失败行为;
}

- (void)set识图判断失败行为:(long long)set识图判断失败行为 {   // 0x2eaa0
    _识图判断失败行为 = set识图判断失败行为;
}

- (NSString *)识图判断跳转 {   // 0x2eaa8
    return _识图判断跳转;
}

- (void)set识图判断跳转:(NSString *)set识图判断跳转 {   // 0x2eab0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识图判断跳转: 即可补全。
    // 0x02eab0  mov      w3, #0x158                              
    // 0x02eab4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识图失败行为 {   // 0x2eab8
    return _识图失败行为;
}

- (void)set识图失败行为:(long long)set识图失败行为 {   // 0x2eac0
    _识图失败行为 = set识图失败行为;
}

- (NSString *)识图失败跳转 {   // 0x2eac8
    return _识图失败跳转;
}

- (void)set识图失败跳转:(NSString *)set识图失败跳转 {   // 0x2ead0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识图失败跳转: 即可补全。
    // 0x02ead0  mov      w3, #0x168                              
    // 0x02ead4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSArray *)多点坐标组 {   // 0x2ead8
    return _多点坐标组;
}

- (void)set多点坐标组:(NSArray *)set多点坐标组 {   // 0x2eae0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set多点坐标组: 即可补全。
    // 0x02eae0  mov      w3, #0x170                              
    // 0x02eae4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)自由模式 {   // 0x2eae8
    return _自由模式;
}

- (void)set自由模式:(long long)set自由模式 {   // 0x2eaf0
    _自由模式 = set自由模式;
}

- (BOOL)自由长按 {   // 0x2eaf8
    return _自由长按;
}

- (void)set自由长按:(BOOL)set自由长按 {   // 0x2eb00
    _自由长按 = set自由长按;
}

- (NSArray *)自由路径点 {   // 0x2eb08
    return _自由路径点;
}

- (void)set自由路径点:(NSArray *)set自由路径点 {   // 0x2eb10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set自由路径点: 即可补全。
    // 0x02eb10  mov      w3, #0x180                              
    // 0x02eb14  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (double)自由滑动时长 {   // 0x2eb18
    return _自由滑动时长;
}

- (void)set自由滑动时长:(double)set自由滑动时长 {   // 0x2eb20
    _自由滑动时长 = set自由滑动时长;
}

- (long long)自由滑动帧数 {   // 0x2eb28
    return _自由滑动帧数;
}

- (void)set自由滑动帧数:(long long)set自由滑动帧数 {   // 0x2eb30
    _自由滑动帧数 = set自由滑动帧数;
}

- (NSArray *)自由坐标组 {   // 0x2eb38
    return _自由坐标组;
}

- (void)set自由坐标组:(NSArray *)set自由坐标组 {   // 0x2eb40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set自由坐标组: 即可补全。
    // 0x02eb40  mov      w3, #0x198                              
    // 0x02eb44  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)循环上限 {   // 0x2eb48
    return _循环上限;
}

- (void)set循环上限:(long long)set循环上限 {   // 0x2eb50
    _循环上限 = set循环上限;
}

- (NSString *)循环变量名 {   // 0x2eb58
    return _循环变量名;
}

- (void)set循环变量名:(NSString *)set循环变量名 {   // 0x2eb60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set循环变量名: 即可补全。
    // 0x02eb60  mov      w3, #0x1a8                              
    // 0x02eb64  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)循环每轮清零 {   // 0x2eb68
    return _循环每轮清零;
}

- (void)set循环每轮清零:(BOOL)set循环每轮清零 {   // 0x2eb70
    _循环每轮清零 = set循环每轮清零;
}

- (NSString *)循环配对标识 {   // 0x2eb78
    return _循环配对标识;
}

- (void)set循环配对标识:(NSString *)set循环配对标识 {   // 0x2eb80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set循环配对标识: 即可补全。
    // 0x02eb80  mov      w3, #0x1b0                              
    // 0x02eb84  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (double)识字等待 {   // 0x2eb88
    return _识字等待;
}

- (void)set识字等待:(double)set识字等待 {   // 0x2eb90
    _识字等待 = set识字等待;
}

- (long long)识字类型 {   // 0x2eb98
    return _识字类型;
}

- (void)set识字类型:(long long)set识字类型 {   // 0x2eba0
    _识字类型 = set识字类型;
}

- (NSString *)识字文本 {   // 0x2eba8
    return _识字文本;
}

- (void)set识字文本:(NSString *)set识字文本 {   // 0x2ebb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识字文本: 即可补全。
    // 0x02ebb0  mov      w3, #0x1c8                              
    // 0x02ebb4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识字条件 {   // 0x2ebb8
    return _识字条件;
}

- (void)set识字条件:(long long)set识字条件 {   // 0x2ebc0
    _识字条件 = set识字条件;
}

- (double)识字数值 {   // 0x2ebc8
    return _识字数值;
}

- (void)set识字数值:(double)set识字数值 {   // 0x2ebd0
    _识字数值 = set识字数值;
}

- (long long)识字成功行为 {   // 0x2ebd8
    return _识字成功行为;
}

- (void)set识字成功行为:(long long)set识字成功行为 {   // 0x2ebe0
    _识字成功行为 = set识字成功行为;
}

- (double)识字长按时长 {   // 0x2ebe8
    return _识字长按时长;
}

- (void)set识字长按时长:(double)set识字长按时长 {   // 0x2ebf0
    _识字长按时长 = set识字长按时长;
}

- (double)识字滑动时长 {   // 0x2ebf8
    return _识字滑动时长;
}

- (void)set识字滑动时长:(double)set识字滑动时长 {   // 0x2ec00
    _识字滑动时长 = set识字滑动时长;
}

- (long long)识字滑动帧数 {   // 0x2ec08
    return _识字滑动帧数;
}

- (void)set识字滑动帧数:(long long)set识字滑动帧数 {   // 0x2ec10
    _识字滑动帧数 = set识字滑动帧数;
}

- (double)识字滑动时隔 {   // 0x2ec18
    return _识字滑动时隔;
}

- (void)set识字滑动时隔:(double)set识字滑动时隔 {   // 0x2ec20
    _识字滑动时隔 = set识字滑动时隔;
}

- (NSArray *)识字路径点 {   // 0x2ec28
    return _识字路径点;
}

- (void)set识字路径点:(NSArray *)set识字路径点 {   // 0x2ec30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识字路径点: 即可补全。
    // 0x02ec30  mov      w3, #0x208                              
    // 0x02ec34  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识字失败行为 {   // 0x2ec38
    return _识字失败行为;
}

- (void)set识字失败行为:(long long)set识字失败行为 {   // 0x2ec40
    _识字失败行为 = set识字失败行为;
}

- (NSString *)识字跳转 {   // 0x2ec48
    return _识字跳转;
}

- (void)set识字跳转:(NSString *)set识字跳转 {   // 0x2ec50
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识字跳转: 即可补全。
    // 0x02ec50  mov      w3, #0x218                              
    // 0x02ec54  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)识字失败跳转 {   // 0x2ec58
    return _识字失败跳转;
}

- (void)set识字失败跳转:(NSString *)set识字失败跳转 {   // 0x2ec60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识字失败跳转: 即可补全。
    // 0x02ec60  mov      w3, #0x220                              
    // 0x02ec64  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (double)取字等待 {   // 0x2ec68
    return _取字等待;
}

- (void)set取字等待:(double)set取字等待 {   // 0x2ec70
    _取字等待 = set取字等待;
}

- (long long)取字存储 {   // 0x2ec78
    return _取字存储;
}

- (void)set取字存储:(long long)set取字存储 {   // 0x2ec80
    _取字存储 = set取字存储;
}

- (long long)取字成功行为 {   // 0x2ec88
    return _取字成功行为;
}

- (void)set取字成功行为:(long long)set取字成功行为 {   // 0x2ec90
    _取字成功行为 = set取字成功行为;
}

- (long long)取字失败行为 {   // 0x2ec98
    return _取字失败行为;
}

- (void)set取字失败行为:(long long)set取字失败行为 {   // 0x2eca0
    _取字失败行为 = set取字失败行为;
}

- (NSString *)取字跳转 {   // 0x2eca8
    return _取字跳转;
}

- (void)set取字跳转:(NSString *)set取字跳转 {   // 0x2ecb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set取字跳转: 即可补全。
    // 0x02ecb0  mov      w3, #0x248                              
    // 0x02ecb4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)取字失败跳转 {   // 0x2ecb8
    return _取字失败跳转;
}

- (void)set取字失败跳转:(NSString *)set取字失败跳转 {   // 0x2ecc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set取字失败跳转: 即可补全。
    // 0x02ecc0  mov      w3, #0x250                              
    // 0x02ecc4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)取字模式 {   // 0x2ecc8
    return _取字模式;
}

- (void)set取字模式:(long long)set取字模式 {   // 0x2ecd0
    _取字模式 = set取字模式;
}

- (long long)取字高级类型 {   // 0x2ecd8
    return _取字高级类型;
}

- (void)set取字高级类型:(long long)set取字高级类型 {   // 0x2ece0
    _取字高级类型 = set取字高级类型;
}

- (NSString *)取字目标文本 {   // 0x2ece8
    return _取字目标文本;
}

- (void)set取字目标文本:(NSString *)set取字目标文本 {   // 0x2ecf0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set取字目标文本: 即可补全。
    // 0x02ecf0  mov      w3, #0x268                              
    // 0x02ecf4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)取字替换文本 {   // 0x2ecf8
    return _取字替换文本;
}

- (void)set取字替换文本:(NSString *)set取字替换文本 {   // 0x2ed00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set取字替换文本: 即可补全。
    // 0x02ed00  mov      w3, #0x270                              
    // 0x02ed04  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)取字正则 {   // 0x2ed08
    return _取字正则;
}

- (void)set取字正则:(NSString *)set取字正则 {   // 0x2ed10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set取字正则: 即可补全。
    // 0x02ed10  mov      w3, #0x278                              
    // 0x02ed14  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)取字第几条 {   // 0x2ed18
    return _取字第几条;
}

- (void)set取字第几条:(long long)set取字第几条 {   // 0x2ed20
    _取字第几条 = set取字第几条;
}

- (double)输入等待 {   // 0x2ed28
    return _输入等待;
}

- (void)set输入等待:(double)set输入等待 {   // 0x2ed30
    _输入等待 = set输入等待;
}

- (NSString *)输入文本 {   // 0x2ed38
    return _输入文本;
}

- (void)set输入文本:(NSString *)set输入文本 {   // 0x2ed40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set输入文本: 即可补全。
    // 0x02ed40  mov      w3, #0x290                              
    // 0x02ed44  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)输入模式 {   // 0x2ed48
    return _输入模式;
}

- (void)set输入模式:(long long)set输入模式 {   // 0x2ed50
    _输入模式 = set输入模式;
}

- (long long)输入来源 {   // 0x2ed58
    return _输入来源;
}

- (void)set输入来源:(long long)set输入来源 {   // 0x2ed60
    _输入来源 = set输入来源;
}

- (long long)输入暂存取条 {   // 0x2ed68
    return _输入暂存取条;
}

- (void)set输入暂存取条:(long long)set输入暂存取条 {   // 0x2ed70
    _输入暂存取条 = set输入暂存取条;
}

- (BOOL)输入清空 {   // 0x2ed78
    return _输入清空;
}

- (void)set输入清空:(BOOL)set输入清空 {   // 0x2ed80
    _输入清空 = set输入清空;
}

- (BOOL)输入回车 {   // 0x2ed88
    return _输入回车;
}

- (void)set输入回车:(BOOL)set输入回车 {   // 0x2ed90
    _输入回车 = set输入回车;
}

- (double)识色等待 {   // 0x2ed98
    return _识色等待;
}

- (void)set识色等待:(double)set识色等待 {   // 0x2eda0
    _识色等待 = set识色等待;
}

- (long long)识色次数 {   // 0x2eda8
    return _识色次数;
}

- (void)set识色次数:(long long)set识色次数 {   // 0x2edb0
    _识色次数 = set识色次数;
}

- (long long)识色容差 {   // 0x2edb8
    return _识色容差;
}

- (void)set识色容差:(long long)set识色容差 {   // 0x2edc0
    _识色容差 = set识色容差;
}

- (long long)识色模式 {   // 0x2edc8
    return _识色模式;
}

- (void)set识色模式:(long long)set识色模式 {   // 0x2edd0
    _识色模式 = set识色模式;
}

- (NSArray *)识色点组 {   // 0x2edd8
    return _识色点组;
}

- (void)set识色点组:(NSArray *)set识色点组 {   // 0x2ede0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识色点组: 即可补全。
    // 0x02ede0  mov      w3, #0x2d0                              
    // 0x02ede4  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识色成功行为 {   // 0x2ede8
    return _识色成功行为;
}

- (void)set识色成功行为:(long long)set识色成功行为 {   // 0x2edf0
    _识色成功行为 = set识色成功行为;
}

- (double)识色长按时长 {   // 0x2edf8
    return _识色长按时长;
}

- (void)set识色长按时长:(double)set识色长按时长 {   // 0x2ee00
    _识色长按时长 = set识色长按时长;
}

- (double)识色滑动时长 {   // 0x2ee08
    return _识色滑动时长;
}

- (void)set识色滑动时长:(double)set识色滑动时长 {   // 0x2ee10
    _识色滑动时长 = set识色滑动时长;
}

- (long long)识色滑动帧数 {   // 0x2ee18
    return _识色滑动帧数;
}

- (void)set识色滑动帧数:(long long)set识色滑动帧数 {   // 0x2ee20
    _识色滑动帧数 = set识色滑动帧数;
}

- (double)识色滑动时隔 {   // 0x2ee28
    return _识色滑动时隔;
}

- (void)set识色滑动时隔:(double)set识色滑动时隔 {   // 0x2ee30
    _识色滑动时隔 = set识色滑动时隔;
}

- (NSArray *)识色路径点 {   // 0x2ee38
    return _识色路径点;
}

- (void)set识色路径点:(NSArray *)set识色路径点 {   // 0x2ee40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识色路径点: 即可补全。
    // 0x02ee40  mov      w3, #0x300                              
    // 0x02ee44  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (long long)识色失败行为 {   // 0x2ee48
    return _识色失败行为;
}

- (void)set识色失败行为:(long long)set识色失败行为 {   // 0x2ee50
    _识色失败行为 = set识色失败行为;
}

- (NSString *)识色跳转 {   // 0x2ee58
    return _识色跳转;
}

- (void)set识色跳转:(NSString *)set识色跳转 {   // 0x2ee60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识色跳转: 即可补全。
    // 0x02ee60  mov      w3, #0x310                              
    // 0x02ee64  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (NSString *)识色失败跳转 {   // 0x2ee68
    return _识色失败跳转;
}

- (void)set识色失败跳转:(NSString *)set识色失败跳转 {   // 0x2ee70
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set识色失败跳转: 即可补全。
    // 0x02ee70  mov      w3, #0x318                              
    // 0x02ee74  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)等待模式 {   // 0x2ee78
    return _等待模式;
}

- (void)set等待模式:(BOOL)set等待模式 {   // 0x2ee80
    _等待模式 = set等待模式;
}

- (double)等待总超时 {   // 0x2ee88
    return _等待总超时;
}

- (void)set等待总超时:(double)set等待总超时 {   // 0x2ee90
    _等待总超时 = set等待总超时;
}

- (NSData *)录制数据 {   // 0x2ee98
    return _录制数据;
}

- (void)set录制数据:(NSData *)set录制数据 {   // 0x2eea0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 动作模型 set录制数据: 即可补全。
    // 0x02eea0  mov      x1, x2                                  
    // 0x02eea4  add      x0, x0, #0x328                          
    // 0x02eea8  b        #0x690a0                                ; _objc_storeStrong
}

- (double)录制时间 {   // 0x2eeac
    return _录制时间;
}

- (void)set录制时间:(double)set录制时间 {   // 0x2eeb4
    _录制时间 = set录制时间;
}

- (double)循环次数 {   // 0x2eebc
    return _循环次数;
}

- (void)set循环次数:(double)set循环次数 {   // 0x2eec4
    _循环次数 = set循环次数;
}

- (BOOL)击杀特效 {   // 0x2eecc
    return _击杀特效;
}

- (void)set击杀特效:(BOOL)set击杀特效 {   // 0x2eed4
    _击杀特效 = set击杀特效;
}

- (BOOL)自动旋转 {   // 0x2eedc
    return _自动旋转;
}

- (void)set自动旋转:(BOOL)set自动旋转 {   // 0x2eee4
    _自动旋转 = set自动旋转;
}

- (BOOL)自动缩放 {   // 0x2eeec
    return _自动缩放;
}

- (void)set自动缩放:(BOOL)set自动缩放 {   // 0x2eef4
    _自动缩放 = set自动缩放;
}

@end