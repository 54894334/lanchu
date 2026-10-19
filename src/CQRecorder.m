//
//  CQRecorder.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQRecorder

- (id)init {   // 0xf624
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder init 即可补全。
    // 0x00f624  sub      sp, sp, #0x30                           
    // 0x00f628  stp      x20, x19, [sp, #0x10]                   
    // 0x00f62c  stp      x29, x30, [sp, #0x20]                   
    // 0x00f630  add      x29, sp, #0x20                          
    // 0x00f634  adrp     x8, #0xad000                            
    // 0x00f638  ldr      x8, [x8, #0x4c8]                        ; class(CQRecorder)
    // 0x00f63c  stp      x0, x8, [sp]                            
    // 0x00f640  adrp     x8, #0xaa000                            
    // 0x00f644  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x00f648  mov      x0, sp                                  
    // 0x00f64c  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x00f650  mov      x19, x0                                 
    // 0x00f654  cbz      x0, #0xf698                             
    // 0x00f658  adrp     x8, #0xad000                            
    // 0x00f65c  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x00f660  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x00f664  mov      x29, x29                                
    // 0x00f668  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00f66c  ldr      x8, [x19, #8]                           
    // 0x00f670  str      x0, [x19, #8]                           
    // 0x00f674  bl       #0xfdc0                                 ; func_0xfdc0
    // 0x00f678  adrp     x8, #0xad000                            
    // 0x00f67c  ldr      x0, [x8, #0x1d8]                        ; class(?0x0)
    // 0x00f680  bl       #0x6aa60                                ; [class(?0x0) dictionary] x2, x3, x4, x5, x6, x7
}

- (void)安装 {   // 0xf6ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 安装 即可补全。
    // 0x00f6ac  stp      x20, x19, [sp, #-0x20]!                 
    // 0x00f6b0  stp      x29, x30, [sp, #0x10]                   
    // 0x00f6b4  add      x29, sp, #0x10                          
    // 0x00f6b8  ldrb     w8, [x0, #0x30]                         
    // 0x00f6bc  cbz      w8, #0xf6cc                             
    // 0x00f6c0  ldp      x29, x30, [sp, #0x10]                   
    // 0x00f6c4  ldp      x20, x19, [sp], #0x20                   
    // 0x00f6c8  ret                                              
    // 0x00f6cc  mov      w8, #1                                  
    // 0x00f6d0  strb     w8, [x0, #0x30]                         
    // 0x00f6d4  adrp     x8, #0xad000                            
    // 0x00f6d8  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x00f6dc  bl       #0x69010                                ; _objc_opt_class
    // 0x00f6e0  adrp     x8, #0xac000                            
    // 0x00f6e4  ldr      x1, [x8, #0xd18]                        ; SEL("sendEvent:")
    // 0x00f6e8  bl       #0x68d4c                                ; _class_getInstanceMethod
    // 0x00f6ec  cbz      x0, #0xf6c0                             
    // 0x00f6f0  mov      x19, x0                                 
    // 0x00f6f4  bl       #0x68f38                                ; _method_getImplementation
    // 0x00f6f8  adrp     x8, #0xaf000                            
    // 0x00f6fc  str      x0, [x8, #0x4c0]                        
    // 0x00f700  adrp     x1, #0xf000                             
    // 0x00f704  add      x1, x1, #0x718                          
    // 0x00f708  mov      x0, x19                                 
}

- (void)开始 {   // 0xf7ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 开始 即可补全。
    // 0x00f7ac  stp      x20, x19, [sp, #-0x20]!                 
    // 0x00f7b0  stp      x29, x30, [sp, #0x10]                   
    // 0x00f7b4  add      x29, sp, #0x10                          
    // 0x00f7b8  bl       #0x6904c                                ; _objc_retain
    // 0x00f7bc  bl       #0xfdb0                                 ; func_0xfdb0
    // 0x00f7c0  ldr      x0, [x19, #8]                           
    // 0x00f7c4  bl       #0x6b920                                ; [x0 removeAllObjects] x2, x3, x4, x5, x6, x7
    // 0x00f7c8  ldr      x0, [x19, #0x10]                        
    // 0x00f7cc  bl       #0x6b920                                ; [x0 removeAllObjects] x2, x3, x4, x5, x6, x7
    // 0x00f7d0  mov      w20, #1                                 
    // 0x00f7d4  str      x20, [x19, #0x28]                       
    // 0x00f7d8  adrp     x8, #0xad000                            
    // 0x00f7dc  ldr      x0, [x8, #0x138]                        ; class(?0x0)
    // 0x00f7e0  bl       #0x6a860                                ; [class(?0x0) date] x2, x3, x4, x5, x6, x7
    // 0x00f7e4  mov      x29, x29                                
    // 0x00f7e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00f7ec  ldr      x8, [x19, #0x18]                        
    // 0x00f7f0  str      x0, [x19, #0x18]                        
    // 0x00f7f4  bl       #0xfdc0                                 ; func_0xfdc0
    // 0x00f7f8  strb     w20, [x19, #0x31]                       
    // 0x00f7fc  bl       #0xfd98                                 ; func_0xfd98
    // 0x00f800  mov      x0, x19                                 
    // 0x00f804  ldp      x29, x30, [sp, #0x10]                   
    // 0x00f808  ldp      x20, x19, [sp], #0x20                   
}

- (id)停止 {   // 0xf818
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 停止 即可补全。
    // 0x00f818  stp      x20, x19, [sp, #-0x20]!                 
    // 0x00f81c  stp      x29, x30, [sp, #0x10]                   
    // 0x00f820  add      x29, sp, #0x10                          
    // 0x00f824  bl       #0x6904c                                ; _objc_retain
    // 0x00f828  bl       #0xfdb0                                 ; func_0xfdb0
    // 0x00f82c  strb     wzr, [x19, #0x31]                       
    // 0x00f830  ldr      x0, [x19, #0x18]                        
    // 0x00f834  bl       #0x6fb40                                ; [x0 timeIntervalSinceNow] x2, x3, x4, x5, x6, x7
    // 0x00f838  fneg     d0, d0                                  
    // 0x00f83c  str      d0, [x19, #0x20]                        
    // 0x00f840  bl       #0xfd98                                 ; func_0xfd98
    // 0x00f844  bl       #0xfda8                                 ; func_0xfda8
    // 0x00f848  adrp     x8, #0xad000                            
    // 0x00f84c  ldr      x20, [x8, #0x1e0]                       ; class(触摸事件数据)
    // 0x00f850  mov      x0, x19                                 
    // 0x00f854  bl       #0x6ffa0                                ; [x19 事件列表] x2, x3, x4, x5, x6, x7
    // 0x00f858  mov      x29, x29                                
    // 0x00f85c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00f860  mov      x19, x0                                 
    // 0x00f864  mov      x0, x20                                 
    // 0x00f868  mov      x2, x19                                 
    // 0x00f86c  bl       #0x71780                                ; [class(触摸事件数据) 归档数组:] x19, x3, x4, x5, x6, x7
    // 0x00f870  mov      x29, x29                                
    // 0x00f874  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)事件列表 {   // 0xf894
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 事件列表 即可补全。
    // 0x00f894  stp      x20, x19, [sp, #-0x20]!                 
    // 0x00f898  stp      x29, x30, [sp, #0x10]                   
    // 0x00f89c  add      x29, sp, #0x10                          
    // 0x00f8a0  bl       #0x6904c                                ; _objc_retain
    // 0x00f8a4  bl       #0xfdb0                                 ; func_0xfdb0
    // 0x00f8a8  ldr      x0, [x19, #8]                           
    // 0x00f8ac  bl       #0x6a700                                ; [x0 copy] x2, x3, x4, x5, x6, x7
    // 0x00f8b0  bl       #0xfd8c                                 ; func_0xfd8c
    // 0x00f8b4  bl       #0xfda8                                 ; func_0xfda8
    // 0x00f8b8  mov      x0, x20                                 
    // 0x00f8bc  ldp      x29, x30, [sp, #0x10]                   
    // 0x00f8c0  b        #0xfda0                                 ; func_0xfda0
    // 0x00f8c4  bl       #0xfd8c                                 ; func_0xfd8c
    // 0x00f8c8  bl       #0xfdb8                                 ; func_0xfdb8
}

- (double)录制时长 {   // 0xf8cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 录制时长 即可补全。
    // 0x00f8cc  stp      x29, x30, [sp, #-0x10]!                 
    // 0x00f8d0  mov      x29, sp                                 
    // 0x00f8d4  ldrb     w8, [x0, #0x31]                         
    // 0x00f8d8  cbz      w8, #0xf8ec                             
    // 0x00f8dc  ldr      x0, [x0, #0x18]                         
    // 0x00f8e0  bl       #0x6fb40                                ; [x0 timeIntervalSinceNow] x2, x3, x4, x5, x6, x7
    // 0x00f8e4  fneg     d0, d0                                  
    // 0x00f8e8  b        #0xf8f0                                 
    // 0x00f8ec  ldr      d0, [x0, #0x20]                         
    // 0x00f8f0  ldp      x29, x30, [sp], #0x10                   
    // 0x00f8f4  ret                                              
}

- (void)处理事件:(id)处理事件 {   // 0xf8f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder 处理事件: 即可补全。
    // 0x00f8f8  sub      sp, sp, #0x180                          
    // 0x00f8fc  stp      d13, d12, [sp, #0xf0]                   
    // 0x00f900  stp      d11, d10, [sp, #0x100]                  
    // 0x00f904  stp      d9, d8, [sp, #0x110]                    
    // 0x00f908  stp      x28, x27, [sp, #0x120]                  
    // 0x00f90c  stp      x26, x25, [sp, #0x130]                  
    // 0x00f910  stp      x24, x23, [sp, #0x140]                  
    // 0x00f914  stp      x22, x21, [sp, #0x150]                  
    // 0x00f918  stp      x20, x19, [sp, #0x160]                  
    // 0x00f91c  stp      x29, x30, [sp, #0x170]                  
    // 0x00f920  add      x29, sp, #0x170                         
    // 0x00f924  mov      x19, x0                                 
    // 0x00f928  adrp     x8, #0x8c000                            
    // 0x00f92c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x00f930  ldr      x8, [x8]                                
    // 0x00f934  stur     x8, [x29, #-0x90]                       
    // 0x00f938  mov      x0, x2                                  
    // 0x00f93c  bl       #0x6904c                                ; _objc_retain
    // 0x00f940  mov      x20, x0                                 
    // 0x00f944  cbz      x0, #0xfc74                             
    // 0x00f948  adrp     x8, #0xaf000                            
    // 0x00f94c  ldr      x8, [x8, #0x4e0]                        ; data_0xaf4e0(=0x0)
    // 0x00f950  cmn      x8, #1                                  
    // 0x00f954  b.ne     #0xfcc0                                 
}

- (BOOL)录制中 {   // 0xfd38
    return __录制中;
}

- (id)状态回调 {   // 0xfd40
    return __状态回调;
}

- (void)set状态回调:(id)set状态回调 {   // 0xfd48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQRecorder set状态回调: 即可补全。
    // 0x00fd48  mov      w3, #0x38                               
    // 0x00fd4c  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

@end