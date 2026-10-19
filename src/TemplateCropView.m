//
//  模板裁切视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 模板裁切视图

- (id)initWithFrame:(CGRect)initWithFrame 截图:(id)截图 {   // 0x5b2e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 initWithFrame:截图: 即可补全。
    // 0x05b2e0  mov      x1, x30                                 
    // 0x05b2e4  bl       #0x61340                                ; func_0x61340
    // 0x05b2e8  mov      x30, x1                                 
    // 0x05b2ec  stp      x29, x30, [sp, #0xb0]                   
    // 0x05b2f0  add      x29, sp, #0xb0                          
    // 0x05b2f4  mov      x21, x2                                 
    // 0x05b2f8  bl       #0x62344                                ; func_0x62344
    // 0x05b2fc  mov      x20, x0                                 
    // 0x05b300  bl       #0x60364                                ; func_0x60364
    // 0x05b304  mov      x19, x0                                 
    // 0x05b308  adrp     x8, #0xad000                            
    // 0x05b30c  ldr      x8, [x8, #0x5a0]                        ; class(模板裁切视图)
    // 0x05b310  stp      x20, x8, [sp, #0x10]                    
    // 0x05b314  adrp     x8, #0xaa000                            
    // 0x05b318  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x05b31c  add      x0, sp, #0x10                           
    // 0x05b320  bl       #0x61200                                ; func_0x61200
    // 0x05b324  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x05b328  mov      x20, x0                                 
    // 0x05b32c  cbz      x0, #0x5bd10                            
    // 0x05b330  adrp     x8, #0xad000                            
    // 0x05b334  ldrsw    x8, [x8, #0xc74]                        
    // 0x05b338  add      x0, x20, x8                             
    // 0x05b33c  bl       #0x62024                                ; func_0x62024
}

- (void)刷新选区 {   // 0x5bd2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 刷新选区 即可补全。
    // 0x05bd2c  sub      sp, sp, #0x100                          
    // 0x05bd30  stp      d11, d10, [sp, #0xa0]                   
    // 0x05bd34  stp      d9, d8, [sp, #0xb0]                     
    // 0x05bd38  stp      x24, x23, [sp, #0xc0]                   
    // 0x05bd3c  stp      x22, x21, [sp, #0xd0]                   
    // 0x05bd40  stp      x20, x19, [sp, #0xe0]                   
    // 0x05bd44  stp      x29, x30, [sp, #0xf0]                   
    // 0x05bd48  add      x29, sp, #0xf0                          
    // 0x05bd4c  mov      x19, x0                                 
    // 0x05bd50  adrp     x8, #0x8c000                            
    // 0x05bd54  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05bd58  ldr      x8, [x8]                                
    // 0x05bd5c  stur     x8, [x29, #-0x58]                       
    // 0x05bd60  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x05bd64  stp      q3, q2, [sp, #0x10]                     
    // 0x05bd68  adrp     x8, #0xad000                            
    // 0x05bd6c  ldrsw    x8, [x8, #0xc90]                        
    // 0x05bd70  add      x8, x19, x8                             
    // 0x05bd74  mov      v5.16b, v2.16b                          
    // 0x05bd78  mov      v5.d[1], v3.d[0]                        
    // 0x05bd7c  fmov     v1.2d, #-8.00000000                     
    // 0x05bd80  fadd     v1.2d, v5.2d, v1.2d                     
    // 0x05bd84  ldp      q2, q3, [x8]                            
    // 0x05bd88  fcmgt    v4.2d, v1.2d, v2.2d                     
}

- (long long)命中角:(CGPoint)命中角 {   // 0x5bfac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 命中角: 即可补全。
    // 0x05bfac  mov      x1, x30                                 
    // 0x05bfb0  bl       #0x608e4                                ; func_0x608e4
    // 0x05bfb4  mov      x30, x1                                 
    // 0x05bfb8  stp      x29, x30, [sp, #0x50]                   
    // 0x05bfbc  add      x29, sp, #0x50                          
    // 0x05bfc0  bl       #0x610d4                                ; func_0x610d4
    // 0x05bfc4  mov      x19, #0                                 
    // 0x05bfc8  fmov     d12, #26.00000000                       
    // 0x05bfcc  adrp     x22, #0xad000                           
    // 0x05bfd0  cmp      x19, #4                                 
    // 0x05bfd4  b.eq     #0x5c018                                
    // 0x05bfd8  ldrsw    x8, [x22, #0xc84]                       
    // 0x05bfdc  ldr      x0, [x20, x8]                           
    // 0x05bfe0  mov      x2, x19                                 
    // 0x05bfe4  bl       #0x6b680                                ; [x0 objectAtIndexedSubscript:] #0, x3, x4, x5, x6, x7
    // 0x05bfe8  mov      x29, x29                                
    // 0x05bfec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05bff0  mov      x21, x0                                 
    // 0x05bff4  bl       #0x6a3e0                                ; [x0 center] #0, x3, x4, x5, x6, x7
    // 0x05bff8  fmov     d10, d0                                 
    // 0x05bffc  fmov     d11, d1                                 
    // 0x05c000  bl       #0x6018c                                ; func_0x6018c
    // 0x05c004  bl       #0x61ed8                                ; func_0x61ed8
    // 0x05c008  fcmp     d0, d12                                 
}

- (BOOL)gestureRecognizer:(id)gestureRecognizer shouldReceiveTouch:(id)shouldReceiveTouch {   // 0x5c03c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 gestureRecognizer:shouldReceiveTouch: 即可补全。
    // 0x05c03c  stp      x24, x23, [sp, #-0x40]!                 
    // 0x05c040  stp      x22, x21, [sp, #0x10]                   
    // 0x05c044  stp      x20, x19, [sp, #0x20]                   
    // 0x05c048  stp      x29, x30, [sp, #0x30]                   
    // 0x05c04c  add      x29, sp, #0x30                          
    // 0x05c050  bl       #0x61590                                ; func_0x61590
    // 0x05c054  mov      x19, x0                                 
    // 0x05c058  adrp     x8, #0xad000                            
    // 0x05c05c  ldrsw    x23, [x8, #0xc88]                       
    // 0x05c060  ldr      x8, [x21, x23]                          
    // 0x05c064  cbz      x8, #0x5c0a8                            
    // 0x05c068  mov      x0, x19                                 
    // 0x05c06c  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x05c070  mov      x29, x29                                
    // 0x05c074  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05c078  mov      x20, x0                                 
    // 0x05c07c  ldr      x8, [x21, x23]                          
    // 0x05c080  cmp      x0, x8                                  
    // 0x05c084  b.eq     #0x5c0b0                                
    // 0x05c088  mov      x0, x19                                 
    // 0x05c08c  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x05c090  mov      x29, x29                                
    // 0x05c094  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05c098  bl       #0x62080                                ; func_0x62080
}

- (void)拖按钮条:(id)拖按钮条 {   // 0x5c0cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 拖按钮条: 即可补全。
    // 0x05c0cc  mov      x1, x30                                 
    // 0x05c0d0  bl       #0x608e4                                ; func_0x608e4
    // 0x05c0d4  mov      x30, x1                                 
    // 0x05c0d8  stp      x29, x30, [sp, #0x50]                   
    // 0x05c0dc  add      x29, sp, #0x50                          
    // 0x05c0e0  mov      x20, x0                                 
    // 0x05c0e4  bl       #0x60364                                ; func_0x60364
    // 0x05c0e8  mov      x19, x0                                 
    // 0x05c0ec  bl       #0x6f6a0                                ; [x0 state] x2, x3, x4, x5, x6, x7
    // 0x05c0f0  cmp      x0, #1                                  
    // 0x05c0f4  b.eq     #0x5c104                                
    // 0x05c0f8  bl       #0x60e78                                ; func_0x60e78
    // 0x05c0fc  cmp      x0, #2                                  
    // 0x05c100  b.ne     #0x5c160                                
    // 0x05c104  bl       #0x615f0                                ; func_0x615f0
    // 0x05c108  bl       #0x61a24                                ; func_0x61a24
    // 0x05c10c  adrp     x8, #0xad000                            
    // 0x05c110  ldrsw    x21, [x8, #0xc88]                       
    // 0x05c114  ldr      x0, [x20, x21]                          
    // 0x05c118  bl       #0x6a3e0                                ; [x0 center] x2, x3, x4, x5, x6, x7
    // 0x05c11c  fadd     d10, d8, d0                             
    // 0x05c120  fadd     d11, d9, d1                             
    // 0x05c124  adrp     x8, #0x8c000                            
    // 0x05c128  ldr      x8, [x8, #8]                            ; symbol(_CGPointZero)
}

- (void)拖:(id)拖 {   // 0x5c16c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 拖: 即可补全。
    // 0x05c16c  mov      x1, x30                                 
    // 0x05c170  bl       #0x608e4                                ; func_0x608e4
    // 0x05c174  mov      x30, x1                                 
    // 0x05c178  stp      x29, x30, [sp, #0x50]                   
    // 0x05c17c  add      x29, sp, #0x50                          
    // 0x05c180  mov      x20, x0                                 
    // 0x05c184  bl       #0x60364                                ; func_0x60364
    // 0x05c188  mov      x19, x0                                 
    // 0x05c18c  bl       #0x61a78                                ; func_0x61a78
    // 0x05c190  fmov     d10, d0                                 
    // 0x05c194  fmov     d8, d1                                  
    // 0x05c198  bl       #0x60e78                                ; func_0x60e78
    // 0x05c19c  cmp      x0, #1                                  
    // 0x05c1a0  b.ne     #0x5c1c8                                
    // 0x05c1a4  mov      x0, x20                                 
    // 0x05c1a8  fmov     d0, d10                                 
    // 0x05c1ac  fmov     d1, d8                                  
    // 0x05c1b0  bl       #0x70ec0                                ; [x0 命中角:] x2, x3, x4, x5, x6, x7
    // 0x05c1b4  tbnz     x0, #0x3f, #0x5c234                     
    // 0x05c1b8  adrp     x8, #0xad000                            
    // 0x05c1bc  ldrsw    x8, [x8, #0xc78]                        
    // 0x05c1c0  str      x0, [x20, x8]                           
    // 0x05c1c4  b        #0x5c398                                
    // 0x05c1c8  bl       #0x60e78                                ; func_0x60e78
}

- (void)确认裁切 {   // 0x5c3a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 确认裁切 即可补全。
    // 0x05c3a4  sub      sp, sp, #0x80                           
    // 0x05c3a8  stp      d15, d14, [sp, #0x10]                   
    // 0x05c3ac  stp      d13, d12, [sp, #0x20]                   
    // 0x05c3b0  stp      d11, d10, [sp, #0x30]                   
    // 0x05c3b4  stp      d9, d8, [sp, #0x40]                     
    // 0x05c3b8  stp      x22, x21, [sp, #0x50]                   
    // 0x05c3bc  stp      x20, x19, [sp, #0x60]                   
    // 0x05c3c0  stp      x29, x30, [sp, #0x70]                   
    // 0x05c3c4  add      x29, sp, #0x70                          
    // 0x05c3c8  mov      x19, x0                                 
    // 0x05c3cc  adrp     x8, #0xad000                            
    // 0x05c3d0  ldrsw    x8, [x8, #0xc90]                        
    // 0x05c3d4  add      x8, x0, x8                              
    // 0x05c3d8  ldp      d0, d1, [x8]                            
    // 0x05c3dc  ldp      d2, d3, [x8, #0x10]                     
    // 0x05c3e0  bl       #0x68b78                                ; _CGRectIntegral
    // 0x05c3e4  bl       #0x611d4                                ; func_0x611d4
    // 0x05c3e8  bl       #0x60d28                                ; func_0x60d28
    // 0x05c3ec  bl       #0x61e48                                ; func_0x61e48
    // 0x05c3f0  bl       #0x60cf0                                ; func_0x60cf0
    // 0x05c3f4  bl       #0x68b84                                ; _CGRectIntersection
    // 0x05c3f8  fmov     d9, d0                                  
    // 0x05c3fc  fmov     d0, #8.00000000                         
    // 0x05c400  fcmp     d2, d0                                  
}

- (void)取消裁切 {   // 0x5c5c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 模板裁切视图 取消裁切 即可补全。
    // 0x05c5c8  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05c5cc  stp      x20, x19, [sp, #0x10]                   
    // 0x05c5d0  stp      x29, x30, [sp, #0x20]                   
    // 0x05c5d4  add      x29, sp, #0x20                          
    // 0x05c5d8  mov      x20, x0                                 
    // 0x05c5dc  adrp     x8, #0xad000                            
    // 0x05c5e0  ldrsw    x21, [x8, #0xc70]                       
    // 0x05c5e4  ldr      x0, [x0, x21]                           
    // 0x05c5e8  bl       #0x6907c                                ; _objc_retainBlock
    // 0x05c5ec  mov      x19, x0                                 
    // 0x05c5f0  adrp     x8, #0xad000                            
    // 0x05c5f4  ldrsw    x8, [x8, #0xc6c]                        
    // 0x05c5f8  bl       #0x61ee4                                ; func_0x61ee4
    // 0x05c5fc  bl       #0x62038                                ; func_0x62038
    // 0x05c600  mov      x0, x20                                 
    // 0x05c604  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x05c608  cbz      x19, #0x5c610                           
    // 0x05c60c  bl       #0x61cc8                                ; func_0x61cc8
    // 0x05c610  mov      x0, x19                                 
    // 0x05c614  ldp      x29, x30, [sp, #0x20]                   
    // 0x05c618  b        #0x601c0                                ; func_0x601c0
}

@end