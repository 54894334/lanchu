//
//  CQTouchInjector.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQTouchInjector

- (id)init {   // 0x2040c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector init 即可补全。
    // 0x02040c  sub      sp, sp, #0x20                           
    // 0x020410  stp      x29, x30, [sp, #0x10]                   
    // 0x020414  add      x29, sp, #0x10                          
    // 0x020418  adrp     x8, #0xad000                            
    // 0x02041c  ldr      x8, [x8, #0x4e0]                        ; class(CQTouchInjector)
    // 0x020420  stp      x0, x8, [sp]                            
    // 0x020424  adrp     x8, #0xaa000                            
    // 0x020428  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x02042c  mov      x0, sp                                  
    // 0x020430  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x020434  cbz      x0, #0x20464                            
    // 0x020438  mov      w8, #1                                  
    // 0x02043c  strb     w8, [x0, #8]                            
    // 0x020440  adrp     x8, #0x7b000                            
    // 0x020444  ldr      q0, [x8, #0xdd0]                        ; ptr_0x7bdd0
    // 0x020448  adrp     x8, #0x7b000                            
    // 0x02044c  ldr      q1, [x8, #0xde0]                        ; ptr_0x7bde0
    // 0x020450  stp      q0, q1, [x0, #0x20]                     
    // 0x020454  mov      w8, #3                                  
    // 0x020458  str      x8, [x0, #0x40]                         
    // 0x02045c  str      xzr, [x0, #0x18]                        
    // 0x020460  str      wzr, [x0, #0x14]                        
    // 0x020464  ldp      x29, x30, [sp, #0x10]                   
    // 0x020468  add      sp, sp, #0x20                           
}

- (void *)取客户端 {   // 0x20470
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 取客户端 即可补全。
    // 0x020470  stp      x22, x21, [sp, #-0x30]!                 
    // 0x020474  stp      x20, x19, [sp, #0x10]                   
    // 0x020478  stp      x29, x30, [sp, #0x20]                   
    // 0x02047c  add      x29, sp, #0x20                          
    // 0x020480  mov      x20, x0                                 
    // 0x020484  add      x19, x0, #0x18                          
    // 0x020488  bl       #0x2401c                                ; func_0x2401c
    // 0x02048c  ldr      x21, [x20, #0x68]                       
    // 0x020490  cbnz     x21, #0x204c4                           
    // 0x020494  adrp     x8, #0xad000                            
    // 0x020498  ldr      x0, [x8, #0x200]                        ; class(?0x0)
    // 0x02049c  bl       #0x6b240                                ; [class(?0x0) isMainThread] x2, x3, x4, x5, x6, x7
    // 0x0204a0  tbz      w0, #0, #0x204c0                        
    // 0x0204a4  adrp     x8, #0x8c000                            
    // 0x0204a8  ldr      x8, [x8, #0x140]                        ; ptr_0x8c140
    // 0x0204ac  ldr      x0, [x8]                                
    // 0x0204b0  bl       #0x68c08                                ; _IOHIDEventSystemClientCreate
    // 0x0204b4  mov      x21, x0                                 
    // 0x0204b8  str      x0, [x20, #0x68]                        
    // 0x0204bc  b        #0x204c4                                
    // 0x0204c0  ldr      x21, [x20, #0x68]                       
    // 0x0204c4  bl       #0x24014                                ; func_0x24014
    // 0x0204c8  mov      x0, x21                                 
    // 0x0204cc  ldp      x29, x30, [sp, #0x20]                   
}

- (void)刷新上下文 {   // 0x204dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 刷新上下文 即可补全。
    // 0x0204dc  stp      d9, d8, [sp, #-0x70]!                   
    // 0x0204e0  stp      x28, x27, [sp, #0x10]                   
    // 0x0204e4  stp      x26, x25, [sp, #0x20]                   
    // 0x0204e8  stp      x24, x23, [sp, #0x30]                   
    // 0x0204ec  stp      x22, x21, [sp, #0x40]                   
    // 0x0204f0  stp      x20, x19, [sp, #0x50]                   
    // 0x0204f4  stp      x29, x30, [sp, #0x60]                   
    // 0x0204f8  add      x29, sp, #0x60                          
    // 0x0204fc  sub      sp, sp, #0x320                          
    // 0x020500  mov      x19, x0                                 
    // 0x020504  adrp     x8, #0x8c000                            
    // 0x020508  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02050c  ldr      x8, [x8]                                
    // 0x020510  stur     x8, [x29, #-0x70]                       
    // 0x020514  adrp     x8, #0xad000                            
    // 0x020518  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x02051c  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x020520  mov      x29, x29                                
    // 0x020524  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x020528  mov      x20, x0                                 
    // 0x02052c  cbz      x0, #0x207e0                            
    // 0x020530  movi     v0.16b, #0                              
    // 0x020534  stp      q0, q0, [sp, #0xf0]                     
    // 0x020538  stp      q0, q0, [sp, #0xd0]                     
}

- (unsigned int)取窗口上下文 {   // 0x209a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 取窗口上下文 即可补全。
    // 0x0209a4  sub      sp, sp, #0xa0                           
    // 0x0209a8  stp      d9, d8, [sp, #0x50]                     
    // 0x0209ac  stp      x24, x23, [sp, #0x60]                   
    // 0x0209b0  stp      x22, x21, [sp, #0x70]                   
    // 0x0209b4  stp      x20, x19, [sp, #0x80]                   
    // 0x0209b8  stp      x29, x30, [sp, #0x90]                   
    // 0x0209bc  add      x29, sp, #0x90                          
    // 0x0209c0  mov      x19, x0                                 
    // 0x0209c4  bl       #0x68a34                                ; _CFAbsoluteTimeGetCurrent
    // 0x0209c8  fmov     d8, d0                                  
    // 0x0209cc  ldr      d9, [x19, #0x70]                        
    // 0x0209d0  adrp     x8, #0xad000                            
    // 0x0209d4  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x0209d8  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x0209dc  mov      x29, x29                                
    // 0x0209e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0209e4  mov      x20, x0                                 
    // 0x0209e8  bl       #0x69fa0                                ; [class(UIApplication) applicationState] x2, x3, x4, x5, x6, x7
    // 0x0209ec  mov      x21, x0                                 
    // 0x0209f0  bl       #0x23eb8                                ; func_0x23eb8
    // 0x0209f4  ldrb     w8, [x19, #0xa]                         
    // 0x0209f8  fsub     d0, d8, d9                              
    // 0x0209fc  cmp      w8, #0                                  
    // 0x020a00  fmov     d1, #0.50000000                         
}

- (unsigned int)当前上下文Id {   // 0x20ad8
    return _上下文Id;
}

- (void)预热 {   // 0x20ae0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 预热 即可补全。
    // 0x020ae0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x020ae4  stp      x29, x30, [sp, #0x10]                   
    // 0x020ae8  add      x29, sp, #0x10                          
    // 0x020aec  mov      x19, x0                                 
    // 0x020af0  bl       #0x74560                                ; [x0 通道] x2, x3, x4, x5, x6, x7
    // 0x020af4  cmp      x0, #2                                  
    // 0x020af8  b.eq     #0x20b00                                
    // 0x020afc  bl       #0x24174                                ; func_0x24174
    // 0x020b00  bl       #0x23f5c                                ; func_0x23f5c
    // 0x020b04  mov      x0, x19                                 
    // 0x020b08  bl       #0x71280                                ; [x0 安装事件观察者] x2, x3, x4, x5, x6, x7
    // 0x020b0c  ldrb     w8, [x19, #0xa]                         
    // 0x020b10  cbz      w8, #0x20b1c                            
    // 0x020b14  ldp      x29, x30, [sp, #0x10]                   
    // 0x020b18  b        #0x23fa4                                ; func_0x23fa4
    // 0x020b1c  mov      x0, x19                                 
    // 0x020b20  mov      x2, #0                                  
    // 0x020b24  ldp      x29, x30, [sp, #0x10]                   
    // 0x020b28  ldp      x20, x19, [sp], #0x20                   
    // 0x020b2c  b        #0x71240                                ; [x0 安排上下文补抓:] #0, x3, x4, x5, x6, x7
}

- (void)安排上下文补抓:(long long)安排上下文补抓 {   // 0x20b30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 安排上下文补抓: 即可补全。
    // 0x020b30  cmp      x2, #7                                  
    // 0x020b34  b.gt     #0x20bf0                                
    // 0x020b38  sub      sp, sp, #0x70                           
    // 0x020b3c  stp      x22, x21, [sp, #0x40]                   
    // 0x020b40  stp      x20, x19, [sp, #0x50]                   
    // 0x020b44  stp      x29, x30, [sp, #0x60]                   
    // 0x020b48  add      x29, sp, #0x60                          
    // 0x020b4c  mov      x1, x0                                  
    // 0x020b50  ldrb     w8, [x0, #0xa]                          
    // 0x020b54  cbnz     w8, #0x20be0                            
    // 0x020b58  mov      x19, x2                                 
    // 0x020b5c  sub      x0, x29, #0x28                          
    // 0x020b60  bl       #0x68fec                                ; _objc_initWeak
    // 0x020b64  mov      x0, #0                                  
    // 0x020b68  mov      w1, #0xb280                             
    // 0x020b6c  movk     w1, #0xee6, lsl #16                     
    // 0x020b70  bl       #0x68e3c                                ; _dispatch_time
    // 0x020b74  mov      x20, x0                                 
    // 0x020b78  adrp     x8, #0x8c000                            
    // 0x020b7c  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x020b80  str      x8, [sp, #8]                            
    // 0x020b84  adrp     x8, #0x7b000                            
    // 0x020b88  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x020b8c  str      d0, [sp, #0x10]                         
}

- (void)确保上下文就绪 {   // 0x20c44
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 确保上下文就绪 即可补全。
    // 0x020c44  sub      sp, sp, #0xa0                           
    // 0x020c48  stp      d9, d8, [sp, #0x40]                     
    // 0x020c4c  stp      x26, x25, [sp, #0x50]                   
    // 0x020c50  stp      x24, x23, [sp, #0x60]                   
    // 0x020c54  stp      x22, x21, [sp, #0x70]                   
    // 0x020c58  stp      x20, x19, [sp, #0x80]                   
    // 0x020c5c  stp      x29, x30, [sp, #0x90]                   
    // 0x020c60  add      x29, sp, #0x90                          
    // 0x020c64  mov      x19, x0                                 
    // 0x020c68  adrp     x8, #0xad000                            
    // 0x020c6c  ldr      x0, [x8, #0x200]                        ; class(?0x0)
    // 0x020c70  bl       #0x6b240                                ; [class(?0x0) isMainThread] x2, x3, x4, x5, x6, x7
    // 0x020c74  tbz      w0, #0, #0x20cf8                        
    // 0x020c78  ldr      w22, [x19, #0x10]                       
    // 0x020c7c  strb     wzr, [x19, #0xa]                        
    // 0x020c80  bl       #0x23f5c                                ; func_0x23f5c
    // 0x020c84  mov      w23, #0xa                               
    // 0x020c88  adrp     x24, #0xad000                           
    // 0x020c8c  adrp     x25, #0xad000                           
    // 0x020c90  adrp     x8, #0x7b000                            
    // 0x020c94  ldr      d8, [x8, #0xc08]                        ; ptr_0x7bc08
    // 0x020c98  ldrb     w8, [x19, #0xa]                         
    // 0x020c9c  cbz      x23, #0x20d5c                           
    // 0x020ca0  cbnz     w8, #0x20d58                            
}

- (void)set通道:(unsigned long long)set通道 {   // 0x20ddc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector set通道: 即可补全。
    // 0x020ddc  sub      sp, sp, #0x50                           
    // 0x020de0  stp      x20, x19, [sp, #0x30]                   
    // 0x020de4  stp      x29, x30, [sp, #0x40]                   
    // 0x020de8  add      x29, sp, #0x40                          
    // 0x020dec  str      x2, [x0, #0x30]                         
    // 0x020df0  cmp      x2, #2                                  
    // 0x020df4  b.eq     #0x20e64                                
    // 0x020df8  mov      x19, x0                                 
    // 0x020dfc  ldr      x8, [x0, #0x68]                         
    // 0x020e00  cbnz     x8, #0x20e64                            
    // 0x020e04  adrp     x8, #0xad000                            
    // 0x020e08  ldr      x0, [x8, #0x200]                        ; class(?0x0)
    // 0x020e0c  bl       #0x6b240                                ; [class(?0x0) isMainThread] x2, x3, x4, x5, x6, x7
    // 0x020e10  cbz      w0, #0x20e28                            
    // 0x020e14  mov      x0, x19                                 
    // 0x020e18  ldp      x29, x30, [sp, #0x40]                   
    // 0x020e1c  ldp      x20, x19, [sp, #0x30]                   
    // 0x020e20  add      sp, sp, #0x50                           
    // 0x020e24  b        #0x70b40                                ; [x0 取客户端] x2, x3, x4, x5, x6, x7
    // 0x020e28  adrp     x8, #0x8c000                            
    // 0x020e2c  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x020e30  str      x8, [sp, #8]                            
    // 0x020e34  adrp     x8, #0x7b000                            
    // 0x020e38  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
}

- (void)安装事件观察者 {   // 0x20e74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 安装事件观察者 即可补全。
    // 0x020e74  sub      sp, sp, #0xd0                           
    // 0x020e78  stp      d9, d8, [sp, #0x80]                     
    // 0x020e7c  stp      x24, x23, [sp, #0x90]                   
    // 0x020e80  stp      x22, x21, [sp, #0xa0]                   
    // 0x020e84  stp      x20, x19, [sp, #0xb0]                   
    // 0x020e88  stp      x29, x30, [sp, #0xc0]                   
    // 0x020e8c  add      x29, sp, #0xc0                          
    // 0x020e90  mov      x19, x0                                 
    // 0x020e94  adrp     x8, #0xad000                            
    // 0x020e98  ldr      x0, [x8, #0x200]                        ; class(?0x0)
    // 0x020e9c  bl       #0x6b240                                ; [class(?0x0) isMainThread] x2, x3, x4, x5, x6, x7
    // 0x020ea0  tbz      w0, #0, #0x20fac                        
    // 0x020ea4  mov      x0, x19                                 
    // 0x020ea8  bl       #0x714e0                                ; [x0 已装事件观察者] x2, x3, x4, x5, x6, x7
    // 0x020eac  tbnz     w0, #0, #0x20fec                        
    // 0x020eb0  mov      x0, x19                                 
    // 0x020eb4  mov      w2, #1                                  
    // 0x020eb8  bl       #0x6d940                                ; [x0 set已装事件观察者:] x2, x3, x4, x5, x6, x7
    // 0x020ebc  adrp     x22, #0xad000                           
    // 0x020ec0  ldr      x0, [x22, #0x1a8]                       ; class(?0x0)
    // 0x020ec4  bl       #0x6a960                                ; [class(?0x0) defaultCenter] x2, x3, x4, x5, x6, x7
    // 0x020ec8  mov      x29, x29                                
    // 0x020ecc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x020ed0  mov      x20, x0                                 
}

- (void)开启后台保活 {   // 0x2103c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 开启后台保活 即可补全。
    // 0x02103c  sub      sp, sp, #0x40                           
    // 0x021040  stp      x29, x30, [sp, #0x30]                   
    // 0x021044  add      x29, sp, #0x30                          
    // 0x021048  adrp     x8, #0x8c000                            
    // 0x02104c  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x021050  str      x8, [sp, #8]                            
    // 0x021054  adrp     x8, #0x7b000                            
    // 0x021058  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x02105c  adrp     x8, #0x21000                            
    // 0x021060  add      x8, x8, #0x90                           
    // 0x021064  str      d0, [sp, #0x10]                         
    // 0x021068  adrp     x9, #0x8c000                            
    // 0x02106c  add      x9, x9, #0x3c0                          
    // 0x021070  stp      x8, x9, [sp, #0x18]                     
    // 0x021074  str      x0, [sp, #0x28]                         
    // 0x021078  adrp     x0, #0x8c000                            
    // 0x02107c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x021080  bl       #0x24158                                ; func_0x24158
    // 0x021084  ldp      x29, x30, [sp, #0x30]                   
    // 0x021088  add      sp, sp, #0x40                           
    // 0x02108c  ret                                              
}

- (void)回前台刷新上下文 {   // 0x210cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 回前台刷新上下文 即可补全。
    // 0x0210cc  sub      sp, sp, #0x40                           
    // 0x0210d0  stp      x20, x19, [sp, #0x20]                   
    // 0x0210d4  stp      x29, x30, [sp, #0x30]                   
    // 0x0210d8  add      x29, sp, #0x30                          
    // 0x0210dc  mov      x19, x0                                 
    // 0x0210e0  ldr      w20, [x0, #0x10]                        
    // 0x0210e4  strb     wzr, [x0, #0xa]                         
    // 0x0210e8  bl       #0x70460                                ; [x0 刷新上下文] x2, x3, x4, x5, x6, x7
    // 0x0210ec  ldrb     w8, [x19, #0xa]                         
    // 0x0210f0  cbnz     w8, #0x21100                            
    // 0x0210f4  mov      x0, x19                                 
    // 0x0210f8  mov      x2, #0                                  
    // 0x0210fc  bl       #0x71240                                ; [x0 安排上下文补抓:] #0, x3, x4, x5, x6, x7
    // 0x021100  bl       #0x24174                                ; func_0x24174
    // 0x021104  adrp     x8, #0xad000                            
    // 0x021108  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x02110c  adrp     x8, #0x8d000                            
    // 0x021110  add      x8, x8, #0xc70                          
    // 0x021114  ldrb     w9, [x19, #0xa]                         
    // 0x021118  adrp     x10, #0x8d000                           
    // 0x02111c  add      x10, x10, #0xc90                        
    // 0x021120  cmp      w9, #0                                  
    // 0x021124  csel     x8, x10, x8, eq                         
    // 0x021128  ldr      w9, [x19, #0x10]                        
}

- (void)结束后台保活 {   // 0x21170
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 结束后台保活 即可补全。
    // 0x021170  sub      sp, sp, #0x40                           
    // 0x021174  stp      x29, x30, [sp, #0x30]                   
    // 0x021178  add      x29, sp, #0x30                          
    // 0x02117c  adrp     x8, #0x8c000                            
    // 0x021180  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x021184  str      x8, [sp, #8]                            
    // 0x021188  adrp     x8, #0x7b000                            
    // 0x02118c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x021190  adrp     x8, #0x21000                            
    // 0x021194  add      x8, x8, #0x1c4                          
    // 0x021198  str      d0, [sp, #0x10]                         
    // 0x02119c  adrp     x9, #0x8c000                            
    // 0x0211a0  add      x9, x9, #0x3c0                          
    // 0x0211a4  stp      x8, x9, [sp, #0x18]                     
    // 0x0211a8  str      x0, [sp, #0x28]                         
    // 0x0211ac  adrp     x0, #0x8c000                            
    // 0x0211b0  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x0211b4  bl       #0x24158                                ; func_0x24158
    // 0x0211b8  ldp      x29, x30, [sp, #0x30]                   
    // 0x0211bc  add      sp, sp, #0x40                           
    // 0x0211c0  ret                                              
}

- (void)续后台断言 {   // 0x211fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 续后台断言 即可补全。
    // 0x0211fc  sub      sp, sp, #0x50                           
    // 0x021200  stp      x20, x19, [sp, #0x30]                   
    // 0x021204  stp      x29, x30, [sp, #0x40]                   
    // 0x021208  add      x29, sp, #0x40                          
    // 0x02120c  mov      x19, x0                                 
    // 0x021210  bl       #0x700e0                                ; [x0 保活中] x2, x3, x4, x5, x6, x7
    // 0x021214  cbz      w0, #0x212a4                            
    // 0x021218  adrp     x8, #0xad000                            
    // 0x02121c  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x021220  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x021224  mov      x29, x29                                
    // 0x021228  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02122c  mov      x20, x0                                 
    // 0x021230  cbz      x0, #0x212a0                            
    // 0x021234  mov      x0, x19                                 
    // 0x021238  bl       #0x73300                                ; [x0 结束后台断言] x2, x3, x4, x5, x6, x7
    // 0x02123c  adrp     x8, #0x8c000                            
    // 0x021240  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x021244  str      x8, [sp, #8]                            
    // 0x021248  adrp     x8, #0x7b000                            
    // 0x02124c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x021250  adrp     x8, #0x21000                            
    // 0x021254  add      x8, x8, #0x2ac                          
    // 0x021258  str      d0, [sp, #0x10]                         
}

- (void)结束后台断言 {   // 0x212d0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 结束后台断言 即可补全。
    // 0x0212d0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0212d4  stp      x29, x30, [sp, #0x10]                   
    // 0x0212d8  add      x29, sp, #0x10                          
    // 0x0212dc  mov      x20, x0                                 
    // 0x0212e0  bl       #0x70d60                                ; [x0 后台任务] x2, x3, x4, x5, x6, x7
    // 0x0212e4  adrp     x8, #0x8c000                            
    // 0x0212e8  ldr      x8, [x8, #0x70]                         ; symbol(_UIBackgroundTaskInvalid)
    // 0x0212ec  ldr      x2, [x8]                                
    // 0x0212f0  cmp      x0, x2                                  
    // 0x0212f4  b.ne     #0x21300                                
    // 0x0212f8  ldp      x29, x30, [sp, #0x10]                   
    // 0x0212fc  b        #0x23fa4                                ; func_0x23fa4
    // 0x021300  mov      x19, x0                                 
    // 0x021304  mov      x0, x20                                 
    // 0x021308  bl       #0x6d4e0                                ; [x0 set后台任务:] x2, x3, x4, x5, x6, x7
    // 0x02130c  adrp     x8, #0xad000                            
    // 0x021310  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x021314  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x021318  mov      x29, x29                                
    // 0x02131c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x021320  mov      x20, x0                                 
    // 0x021324  mov      x2, x19                                 
    // 0x021328  bl       #0x6abc0                                ; [class(UIApplication) endBackgroundTask:] x0, x3, x4, x5, x6, x7
    // 0x02132c  mov      x0, x20                                 
}

- (void)安装事件探针 {   // 0x21354
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 安装事件探针 即可补全。
    // 0x021354  adrp     x8, #0xb0000                            
    // 0x021358  ldrb     w9, [x8, #0x5e0]                        
    // 0x02135c  tbz      w9, #0, #0x21364                        
    // 0x021360  ret                                              
    // 0x021364  mov      w9, #1                                  
    // 0x021368  strb     w9, [x8, #0x5e0]                        
    // 0x02136c  adrp     x0, #0x8c000                            
    // 0x021370  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x021374  adrp     x1, #0x8d000                            
    // 0x021378  add      x1, x1, #0x30                           
    // 0x02137c  b        #0x68d70                                ; _dispatch_async
}

- (void)cq原发事件:(id)cq原发事件 {   // 0x21bb0
}

- (CGPoint)抖动后的点:(CGPoint)抖动后的点 开启:(BOOL)开启 {   // 0x21bb4 · 逐条还原
    // 汇编依据：0x21bd4 cbz w2（未开启直接返回原点）
    //           0x21bdc/0x21bf8 ldp d12,d1,[x19,#0x20] → 下限/上限（ivar off 32 / 40）
    //           0x21be0 arc4random_uniform(10000) / 10000.0 → 0~1 随机
    //           0x21c00 fmadd → lo + rand*(hi-lo)；0x21c20 fmul → 乘到坐标上
    // 注意是「乘法抖动」，不是坐标偏移：抖动 0.95~1.05 表示 ±5%
    if (!开启) return 抖动后的点;

    double lo = _抖动下限;
    double hi = _抖动上限;
    double span = hi - lo;

    double rx = (double)arc4random_uniform(10000) / 10000.0;
    double kx = lo + rx * span;

    double ry = (double)arc4random_uniform(10000) / 10000.0;
    double ky = lo + ry * span;

    return CGPointMake(抖动后的点.x * kx, 抖动后的点.y * ky);
}

- (NSString *)量程说明 {   // 0x21c38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 量程说明 即可补全。
    // 0x021c38  sub      sp, sp, #0x30                           
    // 0x021c3c  stp      x20, x19, [sp, #0x10]                   
    // 0x021c40  stp      x29, x30, [sp, #0x20]                   
    // 0x021c44  add      x29, sp, #0x20                          
    // 0x021c48  mov      x19, x0                                 
    // 0x021c4c  bl       #0x71100                                ; [x0 坐标量程] x2, x3, x4, x5, x6, x7
    // 0x021c50  cbz      x0, #0x21c78                            
    // 0x021c54  mov      x0, x19                                 
    // 0x021c58  bl       #0x71100                                ; [x0 坐标量程] x2, x3, x4, x5, x6, x7
    // 0x021c5c  sub      x8, x0, #1                              
    // 0x021c60  cmp      x8, #3                                  
    // 0x021c64  b.hs     #0x21c78                                
    // 0x021c68  adrp     x9, #0x8d000                            
    // 0x021c6c  add      x9, x9, #0x130                          
    // 0x021c70  ldr      x0, [x9, x8, lsl #3]                    
    // 0x021c74  b        #0x21cbc                                
    // 0x021c78  ldr      d0, [x19, #0x48]                        
    // 0x021c7c  fcmp     d0, #0.0                                
    // 0x021c80  b.le     #0x21cb4                                
    // 0x021c84  ldr      d1, [x19, #0x50]                        
    // 0x021c88  fcmp     d1, #0.0                                
    // 0x021c8c  b.le     #0x21cb4                                
    // 0x021c90  adrp     x8, #0xad000                            
    // 0x021c94  ldr      x0, [x8, #0x98]                         ; class(?0x0)
}

- (CGPoint)HID坐标:(CGPoint)HID坐标 {   // 0x21ccc · 逐条还原
    // 汇编依据：
    //   0x21cf8 [UIScreen mainScreen] / 0x21d08 bounds → d10=width, d11=height
    //   0x21d18 常量 100.0 → d12 = p.x/100, d13 = d12*width（百分比→绝对点）
    //                        d10 = p.y/100, d11 = d10*height
    //   0x21d34 [self 坐标量程] 后四路分支：
    //        2 → 原样返回（认为调用方给的已是 HID 原生坐标）
    //        1 → 返回 x/100, y/100（归一化）
    //        3 → 返回 百分比×屏幕尺寸（绝对点）
    //        0 → 看实测系数：两个都 >0 用 绝对点/系数；否则退回归一化
    CGRect b = [UIScreen mainScreen].bounds;

    double nx = HID坐标.x / 100.0;
    double pw = nx * b.size.width;
    double ny = HID坐标.y / 100.0;
    double ph = ny * b.size.height;

    NSInteger scale = [self 坐标量程];
    CGPoint out;

    switch (scale) {
        case 2:
            out = HID坐标;
            break;
        case 3:
            out = CGPointMake(pw, ph);
            break;
        case 1:
            out = CGPointMake(nx, ny);
            break;
        case 0:
        default:
            if (_实测系数X > 0 && _实测系数Y > 0) {
                out = CGPointMake(pw / _实测系数X, ph / _实测系数Y);
            } else {
                out = CGPointMake(nx, ny);
            }
            break;
    }
    // 原实现在返回前还会过一次 0x2417c（未逐条还原，疑似边界裁剪），此处直通
    return out;
}

- (void)派发:(id)派发 按下:(BOOL)按下 {   // 0x21d98
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 派发:按下: 即可补全。
    // 0x021d98  mov      w4, #1                                  
    // 0x021d9c  b        #0x729c0                                ; [x0 派发:按下:起始索引:] x2, x3, x4, x5, x6, x7
}

- (void)派发:(id)派发 按下:(BOOL)按下 起始索引:(unsigned int)起始索引 {   // 0x21da0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 派发:按下:起始索引: 即可补全。
    // 0x021da0  sub      sp, sp, #0x1d0                          
    // 0x021da4  stp      d13, d12, [sp, #0x140]                  
    // 0x021da8  stp      d11, d10, [sp, #0x150]                  
    // 0x021dac  stp      d9, d8, [sp, #0x160]                    
    // 0x021db0  stp      x28, x27, [sp, #0x170]                  
    // 0x021db4  stp      x26, x25, [sp, #0x180]                  
    // 0x021db8  stp      x24, x23, [sp, #0x190]                  
    // 0x021dbc  stp      x22, x21, [sp, #0x1a0]                  
    // 0x021dc0  stp      x20, x19, [sp, #0x1b0]                  
    // 0x021dc4  stp      x29, x30, [sp, #0x1c0]                  
    // 0x021dc8  add      x29, sp, #0x1c0                         
    // 0x021dcc  mov      x21, x4                                 
    // 0x021dd0  mov      x24, x3                                 
    // 0x021dd4  mov      x22, x0                                 
    // 0x021dd8  adrp     x8, #0x8c000                            
    // 0x021ddc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x021de0  ldr      x8, [x8]                                
    // 0x021de4  stur     x8, [x29, #-0x90]                       
    // 0x021de8  bl       #0x23f64                                ; func_0x23f64
    // 0x021dec  mov      x20, x0                                 
    // 0x021df0  mov      x0, x22                                 
    // 0x021df4  bl       #0x70dc0                                ; [x0 启用] x2, x3, x4, x5, x6, x7
    // 0x021df8  cbz      w0, #0x22048                            
    // 0x021dfc  mov      x0, x20                                 
}

- (void)派发HID坐标:(id)派发HID坐标 按下:(BOOL)按下 起始索引:(unsigned int)起始索引 反馈点:(id)反馈点 说明:(id)说明 {   // 0x22118
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 派发HID坐标:按下:起始索引:反馈点:说明: 即可补全。
    // 0x022118  sub      sp, sp, #0x1a0                          
    // 0x02211c  stp      d9, d8, [sp, #0x130]                    
    // 0x022120  stp      x28, x27, [sp, #0x140]                  
    // 0x022124  stp      x26, x25, [sp, #0x150]                  
    // 0x022128  stp      x24, x23, [sp, #0x160]                  
    // 0x02212c  stp      x22, x21, [sp, #0x170]                  
    // 0x022130  stp      x20, x19, [sp, #0x180]                  
    // 0x022134  stp      x29, x30, [sp, #0x190]                  
    // 0x022138  add      x29, sp, #0x190                         
    // 0x02213c  mov      x20, x5                                 
    // 0x022140  mov      x28, x4                                 
    // 0x022144  mov      x22, x3                                 
    // 0x022148  mov      x21, x0                                 
    // 0x02214c  adrp     x8, #0x8c000                            
    // 0x022150  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x022154  ldr      x8, [x8]                                
    // 0x022158  stur     x8, [x29, #-0x70]                       
    // 0x02215c  bl       #0x23f64                                ; func_0x23f64
    // 0x022160  mov      x19, x0                                 
    // 0x022164  bl       #0x23fc8                                ; func_0x23fc8
    // 0x022168  mov      x26, x0                                 
    // 0x02216c  bl       #0x240bc                                ; func_0x240bc
    // 0x022170  cbz      x0, #0x223e0                            
    // 0x022174  bl       #0x68ee4                                ; _mach_absolute_time
}

- (void)投递:(void *)投递 {   // 0x22520
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 投递: 即可补全。
    // 0x022520  stp      x24, x23, [sp, #-0x40]!                 
    // 0x022524  stp      x22, x21, [sp, #0x10]                   
    // 0x022528  stp      x20, x19, [sp, #0x20]                   
    // 0x02252c  stp      x29, x30, [sp, #0x30]                   
    // 0x022530  add      x29, sp, #0x30                          
    // 0x022534  mov      x21, x2                                 
    // 0x022538  mov      x19, x0                                 
    // 0x02253c  add      x20, x0, #0x14                          
    // 0x022540  mov      x0, x20                                 
    // 0x022544  bl       #0x690e8                                ; _os_unfair_lock_lock
    // 0x022548  adrp     x8, #0xad000                            
    // 0x02254c  ldr      x0, [x8, #0xf8]                         ; class(CQLogger)
    // 0x022550  bl       #0x6f560                                ; [class(CQLogger) shared] x2, x3, x4, x5, x6, x7
    // 0x022554  mov      x29, x29                                
    // 0x022558  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02255c  mov      x22, x0                                 
    // 0x022560  bl       #0x73ec0                                ; [class(CQLogger) 详细] x2, x3, x4, x5, x6, x7
    // 0x022564  bl       #0x23ec0                                ; func_0x23ec0
    // 0x022568  adrp     x24, #0xad000                           
    // 0x02256c  ldr      x0, [x24, #0xe0]                        ; class(UIApplication)
    // 0x022570  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x022574  mov      x29, x29                                
    // 0x022578  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02257c  mov      x23, x0                                 
}

- (void)点击:(CGPoint)点击 {   // 0x226c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 点击: 即可补全。
    // 0x0226c0  sub      sp, sp, #0x70                           
    // 0x0226c4  stp      d9, d8, [sp, #0x20]                     
    // 0x0226c8  stp      x24, x23, [sp, #0x30]                   
    // 0x0226cc  stp      x22, x21, [sp, #0x40]                   
    // 0x0226d0  stp      x20, x19, [sp, #0x50]                   
    // 0x0226d4  stp      x29, x30, [sp, #0x60]                   
    // 0x0226d8  add      x29, sp, #0x60                          
    // 0x0226dc  fmov     d8, d1                                  
    // 0x0226e0  fmov     d9, d0                                  
    // 0x0226e4  mov      x19, x0                                 
    // 0x0226e8  adrp     x8, #0x8c000                            
    // 0x0226ec  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0226f0  ldr      x8, [x8]                                
    // 0x0226f4  str      x8, [sp, #0x18]                         
    // 0x0226f8  adrp     x22, #0xad000                           
    // 0x0226fc  ldr      x0, [x22, #0x1e8]                       ; class(?0x0)
    // 0x022700  bl       #0x6fcc0                                ; [class(?0x0) valueWithCGPoint:] x2, x3, x4, x5, x6, x7
    // 0x022704  mov      x29, x29                                
    // 0x022708  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02270c  bl       #0x24024                                ; func_0x24024
    // 0x022710  bl       #0x6a120                                ; [class(?0x0) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x022714  mov      x29, x29                                
    // 0x022718  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02271c  bl       #0x24000                                ; func_0x24000
}

- (void)点击:(CGPoint)点击 次数:(long long)次数 偏移随机:(BOOL)偏移随机 间隔:(double)间隔 {   // 0x227e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 点击:次数:偏移随机:间隔: 即可补全。
    // 0x0227e0  stp      d11, d10, [sp, #-0x50]!                 
    // 0x0227e4  stp      d9, d8, [sp, #0x10]                     
    // 0x0227e8  stp      x22, x21, [sp, #0x20]                   
    // 0x0227ec  stp      x20, x19, [sp, #0x30]                   
    // 0x0227f0  stp      x29, x30, [sp, #0x40]                   
    // 0x0227f4  add      x29, sp, #0x40                          
    // 0x0227f8  fmov     d8, d2                                  
    // 0x0227fc  mov      x19, x3                                 
    // 0x022800  fmov     d9, d1                                  
    // 0x022804  fmov     d10, d0                                 
    // 0x022808  mov      x20, x0                                 
    // 0x02280c  mov      x21, #0                                 
    // 0x022810  cmp      x2, #1                                  
    // 0x022814  csinc    x22, x2, xzr, gt                        
    // 0x022818  cmp      x22, x21                                
    // 0x02281c  b.eq     #0x22848                                
    // 0x022820  bl       #0x23fb4                                ; func_0x23fb4
    // 0x022824  mov      x0, x20                                 
    // 0x022828  bl       #0x72d80                                ; [x0 点击:] x2, x3, x4, x5, x6, x7
    // 0x02282c  add      x21, x21, #1                            
    // 0x022830  fcmp     d8, #0.0                                
    // 0x022834  ccmp     x21, x22, #2, gt                        
    // 0x022838  b.hs     #0x22818                                
    // 0x02283c  fmov     d0, d8                                  
}

- (void)双击:(CGPoint)双击 次数:(long long)次数 偏移随机:(BOOL)偏移随机 间隔:(double)间隔 {   // 0x22860
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 双击:次数:偏移随机:间隔: 即可补全。
    // 0x022860  sub      sp, sp, #0xd0                           
    // 0x022864  stp      d15, d14, [sp, #0x30]                   
    // 0x022868  stp      d13, d12, [sp, #0x40]                   
    // 0x02286c  stp      d11, d10, [sp, #0x50]                   
    // 0x022870  stp      d9, d8, [sp, #0x60]                     
    // 0x022874  stp      x28, x27, [sp, #0x70]                   
    // 0x022878  stp      x26, x25, [sp, #0x80]                   
    // 0x02287c  stp      x24, x23, [sp, #0x90]                   
    // 0x022880  stp      x22, x21, [sp, #0xa0]                   
    // 0x022884  stp      x20, x19, [sp, #0xb0]                   
    // 0x022888  stp      x29, x30, [sp, #0xc0]                   
    // 0x02288c  add      x29, sp, #0xc0                          
    // 0x022890  mov      x19, x3                                 
    // 0x022894  fmov     d8, d2                                  
    // 0x022898  fmov     d9, d1                                  
    // 0x02289c  fmov     d10, d0                                 
    // 0x0228a0  mov      x20, x0                                 
    // 0x0228a4  mov      x24, #0                                 
    // 0x0228a8  adrp     x8, #0x8c000                            
    // 0x0228ac  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0228b0  ldr      x8, [x8]                                
    // 0x0228b4  str      x8, [sp, #0x28]                         
    // 0x0228b8  cmp      x2, #1                                  
    // 0x0228bc  csinc    x25, x2, xzr, gt                        
}

- (void)长按:(CGPoint)长按 时长:(double)时长 {   // 0x22b10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 长按:时长: 即可补全。
    // 0x022b10  sub      sp, sp, #0x80                           
    // 0x022b14  stp      d11, d10, [sp, #0x20]                   
    // 0x022b18  stp      d9, d8, [sp, #0x30]                     
    // 0x022b1c  stp      x24, x23, [sp, #0x40]                   
    // 0x022b20  stp      x22, x21, [sp, #0x50]                   
    // 0x022b24  stp      x20, x19, [sp, #0x60]                   
    // 0x022b28  stp      x29, x30, [sp, #0x70]                   
    // 0x022b2c  add      x29, sp, #0x70                          
    // 0x022b30  fmov     d10, d2                                 
    // 0x022b34  fmov     d8, d1                                  
    // 0x022b38  fmov     d9, d0                                  
    // 0x022b3c  mov      x19, x0                                 
    // 0x022b40  adrp     x8, #0x8c000                            
    // 0x022b44  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x022b48  ldr      x8, [x8]                                
    // 0x022b4c  str      x8, [sp, #0x18]                         
    // 0x022b50  adrp     x22, #0xad000                           
    // 0x022b54  ldr      x0, [x22, #0x1e8]                       ; class(?0x0)
    // 0x022b58  bl       #0x6fcc0                                ; [class(?0x0) valueWithCGPoint:] x2, x3, x4, x5, x6, x7
    // 0x022b5c  mov      x29, x29                                
    // 0x022b60  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x022b64  bl       #0x24024                                ; func_0x24024
    // 0x022b68  bl       #0x6a120                                ; [class(?0x0) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x022b6c  mov      x29, x29                                
}

- (void)滑动:(CGPoint)滑动 to:(CGPoint)to 时长:(double)时长 帧数:(long long)帧数 随机点数:(BOOL)随机点数 {   // 0x22c0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 滑动:to:时长:帧数:随机点数: 即可补全。
    // 0x022c0c  mov      x1, x30                                 
    // 0x022c10  bl       #0x24074                                ; func_0x24074
    // 0x022c14  mov      x30, x1                                 
    // 0x022c18  stp      x29, x30, [sp, #0xb0]                   
    // 0x022c1c  add      x29, sp, #0xb0                          
    // 0x022c20  fmov     d10, d4                                 
    // 0x022c24  str      d3, [sp, #8]                            
    // 0x022c28  fmov     d9, d2                                  
    // 0x022c2c  fmov     d11, d1                                 
    // 0x022c30  fmov     d12, d0                                 
    // 0x022c34  mov      x19, x0                                 
    // 0x022c38  adrp     x8, #0x8c000                            
    // 0x022c3c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x022c40  ldr      x8, [x8]                                
    // 0x022c44  str      x8, [sp, #0x28]                         
    // 0x022c48  cmp      x2, #0                                  
    // 0x022c4c  mov      w8, #0x14                               
    // 0x022c50  csel     x8, x2, x8, gt                          
    // 0x022c54  cbz      w3, #0x22c84                            
    // 0x022c58  scvtf    d8, x8                                  
    // 0x022c5c  bl       #0x24104                                ; func_0x24104
    // 0x022c60  ucvtf    d0, w0                                  
    // 0x022c64  adrp     x8, #0x7b000                            
    // 0x022c68  ldr      d1, [x8, #0xdf8]                        ; ptr_0x7bdf8
}

- (void)多点点击:(id)多点点击 偏移随机:(BOOL)偏移随机 {   // 0x22e04
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 多点点击:偏移随机: 即可补全。
    // 0x022e04  sub      sp, sp, #0x130                          
    // 0x022e08  stp      x28, x27, [sp, #0xd0]                   
    // 0x022e0c  stp      x26, x25, [sp, #0xe0]                   
    // 0x022e10  stp      x24, x23, [sp, #0xf0]                   
    // 0x022e14  stp      x22, x21, [sp, #0x100]                  
    // 0x022e18  stp      x20, x19, [sp, #0x110]                  
    // 0x022e1c  stp      x29, x30, [sp, #0x120]                  
    // 0x022e20  add      x29, sp, #0x120                         
    // 0x022e24  mov      x21, x3                                 
    // 0x022e28  mov      x19, x0                                 
    // 0x022e2c  adrp     x8, #0x8c000                            
    // 0x022e30  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x022e34  ldr      x8, [x8]                                
    // 0x022e38  stur     x8, [x29, #-0x58]                       
    // 0x022e3c  bl       #0x23f64                                ; func_0x23f64
    // 0x022e40  mov      x22, x0                                 
    // 0x022e44  adrp     x8, #0xad000                            
    // 0x022e48  ldr      x20, [x8, #0x170]                       ; class(?0x0)
    // 0x022e4c  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x022e50  mov      x2, x0                                  
    // 0x022e54  mov      x0, x20                                 
    // 0x022e58  bl       #0x6a0e0                                ; [class(?0x0) arrayWithCapacity:] x0, x3, x4, x5, x6, x7
    // 0x022e5c  mov      x29, x29                                
    // 0x022e60  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)自由滑动:(CGPoint)自由滑动 to:(CGPoint)to 长按:(double)长按 时长:(double)时长 帧数:(long long)帧数 随机点数:(BOOL)随机点数 {   // 0x22f8c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 自由滑动:to:长按:时长:帧数:随机点数: 即可补全。
    // 0x022f8c  mov      x1, x30                                 
    // 0x022f90  bl       #0x24074                                ; func_0x24074
    // 0x022f94  mov      x30, x1                                 
    // 0x022f98  stp      x29, x30, [sp, #0xb0]                   
    // 0x022f9c  add      x29, sp, #0xb0                          
    // 0x022fa0  fmov     d13, d5                                 
    // 0x022fa4  fmov     d12, d4                                 
    // 0x022fa8  fmov     d15, d3                                 
    // 0x022fac  fmov     d9, d2                                  
    // 0x022fb0  fmov     d10, d1                                 
    // 0x022fb4  fmov     d11, d0                                 
    // 0x022fb8  mov      x19, x0                                 
    // 0x022fbc  adrp     x8, #0x8c000                            
    // 0x022fc0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x022fc4  ldr      x8, [x8]                                
    // 0x022fc8  str      x8, [sp, #0x28]                         
    // 0x022fcc  cmp      x2, #0                                  
    // 0x022fd0  mov      w8, #0x14                               
    // 0x022fd4  csel     x8, x2, x8, gt                          
    // 0x022fd8  cbz      w3, #0x23008                            
    // 0x022fdc  scvtf    d8, x8                                  
    // 0x022fe0  bl       #0x24104                                ; func_0x24104
    // 0x022fe4  ucvtf    d0, w0                                  
    // 0x022fe8  adrp     x8, #0x7b000                            
}

- (void)连续滑动:(id)连续滑动 长按:(double)长按 段时长:(double)段时长 段帧数:(long long)段帧数 间隔:(double)间隔 随机点数:(BOOL)随机点数 {   // 0x23188
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 连续滑动:长按:段时长:段帧数:间隔:随机点数: 即可补全。
    // 0x023188  sub      sp, sp, #0x110                          
    // 0x02318c  stp      d15, d14, [sp, #0x70]                   
    // 0x023190  stp      d13, d12, [sp, #0x80]                   
    // 0x023194  stp      d11, d10, [sp, #0x90]                   
    // 0x023198  stp      d9, d8, [sp, #0xa0]                     
    // 0x02319c  stp      x28, x27, [sp, #0xb0]                   
    // 0x0231a0  stp      x26, x25, [sp, #0xc0]                   
    // 0x0231a4  stp      x24, x23, [sp, #0xd0]                   
    // 0x0231a8  stp      x22, x21, [sp, #0xe0]                   
    // 0x0231ac  stp      x20, x19, [sp, #0xf0]                   
    // 0x0231b0  stp      x29, x30, [sp, #0x100]                  
    // 0x0231b4  add      x29, sp, #0x100                         
    // 0x0231b8  str      w4, [sp, #0x2c]                         
    // 0x0231bc  str      d2, [sp, #0x38]                         
    // 0x0231c0  mov      x22, x3                                 
    // 0x0231c4  fmov     d10, d1                                 
    // 0x0231c8  fmov     d9, d0                                  
    // 0x0231cc  mov      x20, x0                                 
    // 0x0231d0  adrp     x8, #0x8c000                            
    // 0x0231d4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0231d8  ldr      x8, [x8]                                
    // 0x0231dc  str      x8, [sp, #0x60]                         
    // 0x0231e0  bl       #0x23f64                                ; func_0x23f64
    // 0x0231e4  mov      x19, x0                                 
}

- (void)回放:(id)回放 循环:(long long)循环 {   // 0x23558
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 回放:循环: 即可补全。
    // 0x023558  sub      sp, sp, #0x160                          
    // 0x02355c  stp      x28, x27, [sp, #0x100]                  
    // 0x023560  stp      x26, x25, [sp, #0x110]                  
    // 0x023564  stp      x24, x23, [sp, #0x120]                  
    // 0x023568  stp      x22, x21, [sp, #0x130]                  
    // 0x02356c  stp      x20, x19, [sp, #0x140]                  
    // 0x023570  stp      x29, x30, [sp, #0x150]                  
    // 0x023574  add      x29, sp, #0x150                         
    // 0x023578  mov      x21, x3                                 
    // 0x02357c  mov      x19, x0                                 
    // 0x023580  adrp     x8, #0x8c000                            
    // 0x023584  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x023588  ldr      x8, [x8]                                
    // 0x02358c  stur     x8, [x29, #-0x60]                       
    // 0x023590  bl       #0x23f64                                ; func_0x23f64
    // 0x023594  mov      x8, #0                                  
    // 0x023598  cmp      x21, #1                                 
    // 0x02359c  csinc    x9, x21, xzr, gt                        
    // 0x0235a0  stp      x9, x0, [sp, #8]                        
    // 0x0235a4  adrp     x28, #0xad000                           
    // 0x0235a8  ldr      x9, [sp, #8]                            
    // 0x0235ac  cmp      x8, x9                                  
    // 0x0235b0  b.eq     #0x236dc                                
    // 0x0235b4  str      x8, [sp, #0x18]                         
}

- (void)并发点击:(id)并发点击 次数:(long long)次数 间隔:(double)间隔 按下时长:(double)按下时长 偏移随机:(BOOL)偏移随机 同步起手:(BOOL)同步起手 完成:(id)完成 {   // 0x23720
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 并发点击:次数:间隔:按下时长:偏移随机:同步起手:完成: 即可补全。
    // 0x023720  sub      sp, sp, #0x170                          
    // 0x023724  stp      d13, d12, [sp, #0xe0]                   
    // 0x023728  stp      d11, d10, [sp, #0xf0]                   
    // 0x02372c  stp      d9, d8, [sp, #0x100]                    
    // 0x023730  stp      x28, x27, [sp, #0x110]                  
    // 0x023734  stp      x26, x25, [sp, #0x120]                  
    // 0x023738  stp      x24, x23, [sp, #0x130]                  
    // 0x02373c  stp      x22, x21, [sp, #0x140]                  
    // 0x023740  stp      x20, x19, [sp, #0x150]                  
    // 0x023744  stp      x29, x30, [sp, #0x160]                  
    // 0x023748  add      x29, sp, #0x160                         
    // 0x02374c  mov      x20, x6                                 
    // 0x023750  mov      x25, x5                                 
    // 0x023754  str      w4, [sp, #0x1c]                         
    // 0x023758  fmov     d9, d1                                  
    // 0x02375c  fmov     d8, d0                                  
    // 0x023760  str      x3, [sp, #0x10]                         
    // 0x023764  mov      x26, x0                                 
    // 0x023768  bl       #0x23f64                                ; func_0x23f64
    // 0x02376c  mov      x19, x0                                 
    // 0x023770  bl       #0x23fc8                                ; func_0x23fc8
    // 0x023774  mov      x20, x0                                 
    // 0x023778  bl       #0x240bc                                ; func_0x240bc
    // 0x02377c  adrp     x8, #0x8c000                            
}

- (void)取消并发 {   // 0x23c80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTouchInjector 取消并发 即可补全。
    // 0x023c80  mov      w2, #1                                  
    // 0x023c84  b        #0x6d9a0                                ; [x0 set并发已取消:] x2, x3, x4, x5, x6, x7
}

- (BOOL)启用 {   // 0x23c88
    return _启用;
}

- (void)set启用:(BOOL)set启用 {   // 0x23c90
    _启用 = set启用;
}

- (BOOL)显示反馈 {   // 0x23c98
    return _显示反馈;
}

- (void)set显示反馈:(BOOL)set显示反馈 {   // 0x23ca0
    _显示反馈 = set显示反馈;
}

- (double)抖动下限 {   // 0x23ca8
    return _抖动下限;
}

- (void)set抖动下限:(double)set抖动下限 {   // 0x23cb0
    _抖动下限 = set抖动下限;
}

- (double)抖动上限 {   // 0x23cb8
    return _抖动上限;
}

- (void)set抖动上限:(double)set抖动上限 {   // 0x23cc0
    _抖动上限 = set抖动上限;
}

- (unsigned long long)通道 {   // 0x23cc8
    return _通道;
}

- (unsigned long long)并发模式 {   // 0x23cd0
    return _并发模式;
}

- (void)set并发模式:(unsigned long long)set并发模式 {   // 0x23cd8
    _并发模式 = set并发模式;
}

- (unsigned long long)坐标量程 {   // 0x23ce0
    return _坐标量程;
}

- (void)set坐标量程:(unsigned long long)set坐标量程 {   // 0x23ce8
    _坐标量程 = set坐标量程;
}

- (double)实测系数X {   // 0x23cf0
    return _实测系数X;
}

- (void)set实测系数X:(double)set实测系数X {   // 0x23cf8
    _实测系数X = set实测系数X;
}

- (double)实测系数Y {   // 0x23d00
    return _实测系数Y;
}

- (void)set实测系数Y:(double)set实测系数Y {   // 0x23d08
    _实测系数Y = set实测系数Y;
}

- (long long)活跃并发数 {   // 0x23d10
    return _活跃并发数;
}

- (void)set活跃并发数:(long long)set活跃并发数 {   // 0x23d18
    _活跃并发数 = set活跃并发数;
}

- (unsigned long long)累计派发次数 {   // 0x23d20
    return _累计派发次数;
}

- (void)set累计派发次数:(unsigned long long)set累计派发次数 {   // 0x23d28
    _累计派发次数 = set累计派发次数;
}

- (void *)client {   // 0x23d30
    return _client;
}

- (void)setClient:(void *)setClient {   // 0x23d38
    _client = setClient;
}

- (unsigned int)上下文Id {   // 0x23d40
    return _上下文Id;
}

- (void)set上下文Id:(unsigned int)set上下文Id {   // 0x23d48
    _上下文Id = set上下文Id;
}

- (BOOL)上下文已就绪 {   // 0x23d50
    return _上下文已就绪;
}

- (void)set上下文已就绪:(BOOL)set上下文已就绪 {   // 0x23d58
    _上下文已就绪 = set上下文已就绪;
}

- (double)上下文刷新时刻 {   // 0x23d60
    return _上下文刷新时刻;
}

- (void)set上下文刷新时刻:(double)set上下文刷新时刻 {   // 0x23d68
    _上下文刷新时刻 = set上下文刷新时刻;
}

- (BOOL)并发已取消 {   // 0x23d70
    return _并发已取消;
}

- (void)set并发已取消:(BOOL)set并发已取消 {   // 0x23d78
    _并发已取消 = set并发已取消;
}

- (os_unfair_lock)派发锁 {   // 0x23d80
    return _派发锁;
}

- (void)set派发锁:(os_unfair_lock)set派发锁 {   // 0x23d88
    _派发锁 = set派发锁;
}

- (os_unfair_lock)客户端锁 {   // 0x23d90
    return _客户端锁;
}

- (void)set客户端锁:(os_unfair_lock)set客户端锁 {   // 0x23d98
    _客户端锁 = set客户端锁;
}

- (os_unfair_lock)计数锁 {   // 0x23da0
    return _计数锁;
}

- (void)set计数锁:(os_unfair_lock)set计数锁 {   // 0x23da8
    _计数锁 = set计数锁;
}

- (BOOL)保活中 {   // 0x23db0
    return _保活中;
}

- (void)set保活中:(BOOL)set保活中 {   // 0x23db8
    _保活中 = set保活中;
}

- (unsigned long long)后台任务 {   // 0x23dc0
    return _后台任务;
}

- (void)set后台任务:(unsigned long long)set后台任务 {   // 0x23dc8
    _后台任务 = set后台任务;
}

- (id)后台观察者 {   // 0x23dd0
    return _后台观察者;
}

- (void)set后台观察者:(id)set后台观察者 {   // 0x23dd8
    _后台观察者 = set后台观察者;
}

- (id)前台观察者 {   // 0x23de0
    return _前台观察者;
}

- (void)set前台观察者:(id)set前台观察者 {   // 0x23de8
    _前台观察者 = set前台观察者;
}

- (BOOL)已请求建客户端 {   // 0x23df0
    return _已请求建客户端;
}

- (void)set已请求建客户端:(BOOL)set已请求建客户端 {   // 0x23df8
    _已请求建客户端 = set已请求建客户端;
}

- (BOOL)已装事件观察者 {   // 0x23e00
    return _已装事件观察者;
}

- (void)set已装事件观察者:(BOOL)set已装事件观察者 {   // 0x23e08
    _已装事件观察者 = set已装事件观察者;
}

@end