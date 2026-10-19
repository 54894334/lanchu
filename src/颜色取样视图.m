//
//  颜色取样视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 颜色取样视图

- (id)initWithFrame:(CGRect)initWithFrame 截图:(id)截图 区域:(CGRect)区域 点组:(id)点组 {   // 0x5c92c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 initWithFrame:截图:区域:点组: 即可补全。
    // 0x05c92c  sub      sp, sp, #0x120                          
    // 0x05c930  stp      d15, d14, [sp, #0x80]                   
    // 0x05c934  stp      d13, d12, [sp, #0x90]                   
    // 0x05c938  stp      d11, d10, [sp, #0xa0]                   
    // 0x05c93c  mov      x1, x30                                 
    // 0x05c940  bl       #0x616b0                                ; func_0x616b0
    // 0x05c944  mov      x30, x1                                 
    // 0x05c948  stp      x29, x30, [sp, #0x110]                  
    // 0x05c94c  add      x29, sp, #0x110                         
    // 0x05c950  mov      x20, x3                                 
    // 0x05c954  fmov     d11, d7                                 
    // 0x05c958  fmov     d10, d6                                 
    // 0x05c95c  fmov     d13, d5                                 
    // 0x05c960  fmov     d12, d4                                 
    // 0x05c964  mov      x19, x2                                 
    // 0x05c968  fmov     d8, d3                                  
    // 0x05c96c  fmov     d9, d2                                  
    // 0x05c970  fmov     d14, d1                                 
    // 0x05c974  fmov     d15, d0                                 
    // 0x05c978  mov      x21, x0                                 
    // 0x05c97c  adrp     x8, #0x8c000                            
    // 0x05c980  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05c984  ldr      x8, [x8]                                
    // 0x05c988  str      x8, [sp, #0x70]                         
}

- (CGPoint)点位:(id)点位 {   // 0x5d25c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 点位: 即可补全。
    // 0x05d25c  mov      x3, x30                                 
    // 0x05d260  bl       #0x60bd8                                ; func_0x60bd8
    // 0x05d264  mov      x30, x3                                 
    // 0x05d268  stp      x29, x30, [sp, #0x40]                   
    // 0x05d26c  add      x29, sp, #0x40                          
    // 0x05d270  mov      x8, x2                                  
    // 0x05d274  mov      x20, x0                                 
    // 0x05d278  adrp     x2, #0x8f000                            
    // 0x05d27c  add      x2, x2, #0xb90                          
    // 0x05d280  mov      x0, x8                                  
    // 0x05d284  bl       #0x6a5e0                                ; [x2 componentsSeparatedByString:] x2, x30, x4, x5, x6, x7
    // 0x05d288  mov      x29, x29                                
    // 0x05d28c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05d290  bl       #0x62204                                ; func_0x62204
    // 0x05d294  cmp      x0, #5                                  
    // 0x05d298  b.ne     #0x5d324                                
    // 0x05d29c  adrp     x8, #0xad000                            
    // 0x05d2a0  ldrsw    x22, [x8, #0xcac]                       
    // 0x05d2a4  bl       #0x617a4                                ; func_0x617a4
    // 0x05d2a8  fmov     d8, d0                                  
    // 0x05d2ac  bl       #0x617a4                                ; func_0x617a4
    // 0x05d2b0  fmov     d9, d2                                  
    // 0x05d2b4  mov      x0, x19                                 
    // 0x05d2b8  mov      x2, #0                                  
}

- (void)刷新点标 {   // 0x5d350
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 刷新点标 即可补全。
    // 0x05d350  sub      sp, sp, #0x180                          
    // 0x05d354  stp      d15, d14, [sp, #0xe0]                   
    // 0x05d358  stp      d13, d12, [sp, #0xf0]                   
    // 0x05d35c  stp      d11, d10, [sp, #0x100]                  
    // 0x05d360  stp      d9, d8, [sp, #0x110]                    
    // 0x05d364  stp      x28, x27, [sp, #0x120]                  
    // 0x05d368  stp      x26, x25, [sp, #0x130]                  
    // 0x05d36c  stp      x24, x23, [sp, #0x140]                  
    // 0x05d370  stp      x22, x21, [sp, #0x150]                  
    // 0x05d374  stp      x20, x19, [sp, #0x160]                  
    // 0x05d378  stp      x29, x30, [sp, #0x170]                  
    // 0x05d37c  add      x29, sp, #0x170                         
    // 0x05d380  mov      x19, x0                                 
    // 0x05d384  adrp     x8, #0x8c000                            
    // 0x05d388  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x05d38c  ldr      x8, [x8]                                
    // 0x05d390  stur     x8, [x29, #-0xa0]                       
    // 0x05d394  movi     v0.16b, #0                              
    // 0x05d398  stp      q0, q0, [sp, #0x10]                     
    // 0x05d39c  stp      q0, q0, [sp, #0x30]                     
    // 0x05d3a0  adrp     x8, #0xad000                            
    // 0x05d3a4  ldrsw    x8, [x8, #0xca8]                        
    // 0x05d3a8  str      x8, [sp, #8]                            
    // 0x05d3ac  ldr      x0, [x0, x8]                            
}

- (BOOL)gestureRecognizer:(id)gestureRecognizer shouldReceiveTouch:(id)shouldReceiveTouch {   // 0x5d7a8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 gestureRecognizer:shouldReceiveTouch: 即可补全。
    // 0x05d7a8  stp      x24, x23, [sp, #-0x40]!                 
    // 0x05d7ac  stp      x22, x21, [sp, #0x10]                   
    // 0x05d7b0  stp      x20, x19, [sp, #0x20]                   
    // 0x05d7b4  stp      x29, x30, [sp, #0x30]                   
    // 0x05d7b8  add      x29, sp, #0x30                          
    // 0x05d7bc  bl       #0x61590                                ; func_0x61590
    // 0x05d7c0  mov      x19, x0                                 
    // 0x05d7c4  adrp     x8, #0xad000                            
    // 0x05d7c8  ldrsw    x23, [x8, #0xcb0]                       
    // 0x05d7cc  ldr      x8, [x21, x23]                          
    // 0x05d7d0  cbz      x8, #0x5d814                            
    // 0x05d7d4  mov      x0, x19                                 
    // 0x05d7d8  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x05d7dc  mov      x29, x29                                
    // 0x05d7e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05d7e4  mov      x20, x0                                 
    // 0x05d7e8  ldr      x8, [x21, x23]                          
    // 0x05d7ec  cmp      x0, x8                                  
    // 0x05d7f0  b.eq     #0x5d81c                                
    // 0x05d7f4  mov      x0, x19                                 
    // 0x05d7f8  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x05d7fc  mov      x29, x29                                
    // 0x05d800  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x05d804  bl       #0x62080                                ; func_0x62080
}

- (void)拖按钮条:(id)拖按钮条 {   // 0x5d838
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 拖按钮条: 即可补全。
    // 0x05d838  mov      x1, x30                                 
    // 0x05d83c  bl       #0x608e4                                ; func_0x608e4
    // 0x05d840  mov      x30, x1                                 
    // 0x05d844  stp      x29, x30, [sp, #0x50]                   
    // 0x05d848  add      x29, sp, #0x50                          
    // 0x05d84c  mov      x20, x0                                 
    // 0x05d850  bl       #0x60364                                ; func_0x60364
    // 0x05d854  mov      x19, x0                                 
    // 0x05d858  bl       #0x6f6a0                                ; [x0 state] x2, x3, x4, x5, x6, x7
    // 0x05d85c  cmp      x0, #1                                  
    // 0x05d860  b.eq     #0x5d870                                
    // 0x05d864  bl       #0x60e78                                ; func_0x60e78
    // 0x05d868  cmp      x0, #2                                  
    // 0x05d86c  b.ne     #0x5d8cc                                
    // 0x05d870  bl       #0x615f0                                ; func_0x615f0
    // 0x05d874  bl       #0x61a24                                ; func_0x61a24
    // 0x05d878  adrp     x8, #0xad000                            
    // 0x05d87c  ldrsw    x21, [x8, #0xcb0]                       
    // 0x05d880  ldr      x0, [x20, x21]                          
    // 0x05d884  bl       #0x6a3e0                                ; [x0 center] x2, x3, x4, x5, x6, x7
    // 0x05d888  fadd     d10, d8, d0                             
    // 0x05d88c  fadd     d11, d9, d1                             
    // 0x05d890  adrp     x8, #0x8c000                            
    // 0x05d894  ldr      x8, [x8, #8]                            ; symbol(_CGPointZero)
}

- (void)点按:(id)点按 {   // 0x5d8d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 点按: 即可补全。
    // 0x05d8d8  sub      sp, sp, #0xb0                           
    // 0x05d8dc  stp      d13, d12, [sp, #0x50]                   
    // 0x05d8e0  stp      d11, d10, [sp, #0x60]                   
    // 0x05d8e4  stp      d9, d8, [sp, #0x70]                     
    // 0x05d8e8  stp      x22, x21, [sp, #0x80]                   
    // 0x05d8ec  stp      x20, x19, [sp, #0x90]                   
    // 0x05d8f0  stp      x29, x30, [sp, #0xa0]                   
    // 0x05d8f4  add      x29, sp, #0xa0                          
    // 0x05d8f8  bl       #0x61290                                ; func_0x61290
    // 0x05d8fc  mov      x2, x19                                 
    // 0x05d900  bl       #0x6b380                                ; [x0 locationInView:] x19, x3, x4, x5, x6, x7
    // 0x05d904  bl       #0x61a24                                ; func_0x61a24
    // 0x05d908  adrp     x8, #0xad000                            
    // 0x05d90c  ldrsw    x22, [x8, #0xca4]                       
    // 0x05d910  ldr      x0, [x19, x22]                          
    // 0x05d914  bl       #0x6a720                                ; [x0 count] x19, x3, x4, x5, x6, x7
    // 0x05d918  mov      x20, x0                                 
    // 0x05d91c  fmov     d12, #22.00000000                       
    // 0x05d920  subs     x20, x20, #1                            
    // 0x05d924  b.lt     #0x5d988                                
    // 0x05d928  ldr      x0, [x19, x22]                          
    // 0x05d92c  mov      x2, x20                                 
    // 0x05d930  bl       #0x6b680                                ; [x0 objectAtIndexedSubscript:] x0, x3, x4, x5, x6, x7
    // 0x05d934  mov      x29, x29                                
}

- (void)清空色点 {   // 0x5db18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 清空色点 即可补全。
    // 0x05db18  stp      x20, x19, [sp, #-0x20]!                 
    // 0x05db1c  stp      x29, x30, [sp, #0x10]                   
    // 0x05db20  add      x29, sp, #0x10                          
    // 0x05db24  mov      x19, x0                                 
    // 0x05db28  adrp     x8, #0xad000                            
    // 0x05db2c  ldrsw    x20, [x8, #0xca4]                       
    // 0x05db30  ldr      x0, [x0, x20]                           
    // 0x05db34  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x05db38  cbz      x0, #0x5db54                            
    // 0x05db3c  ldr      x0, [x19, x20]                          
    // 0x05db40  bl       #0x6b920                                ; [x0 removeAllObjects] x2, x3, x4, x5, x6, x7
    // 0x05db44  mov      x0, x19                                 
    // 0x05db48  ldp      x29, x30, [sp, #0x10]                   
    // 0x05db4c  ldp      x20, x19, [sp], #0x20                   
    // 0x05db50  b        #0x70560                                ; [x0 刷新点标] x2, x3, x4, x5, x6, x7
    // 0x05db54  ldp      x29, x30, [sp, #0x10]                   
    // 0x05db58  ldp      x20, x19, [sp], #0x20                   
    // 0x05db5c  ret                                              
}

- (void)拖动色点:(id)拖动色点 {   // 0x5db60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 拖动色点: 即可补全。
    // 0x05db60  sub      sp, sp, #0xe0                           
    // 0x05db64  stp      d13, d12, [sp, #0x50]                   
    // 0x05db68  stp      d11, d10, [sp, #0x60]                   
    // 0x05db6c  stp      d9, d8, [sp, #0x70]                     
    // 0x05db70  stp      x28, x27, [sp, #0x80]                   
    // 0x05db74  stp      x26, x25, [sp, #0x90]                   
    // 0x05db78  stp      x24, x23, [sp, #0xa0]                   
    // 0x05db7c  stp      x22, x21, [sp, #0xb0]                   
    // 0x05db80  stp      x20, x19, [sp, #0xc0]                   
    // 0x05db84  stp      x29, x30, [sp, #0xd0]                   
    // 0x05db88  add      x29, sp, #0xd0                          
    // 0x05db8c  mov      x20, x0                                 
    // 0x05db90  bl       #0x60364                                ; func_0x60364
    // 0x05db94  mov      x19, x0                                 
    // 0x05db98  bl       #0x61a78                                ; func_0x61a78
    // 0x05db9c  bl       #0x61854                                ; func_0x61854
    // 0x05dba0  bl       #0x60e78                                ; func_0x60e78
    // 0x05dba4  adrp     x8, #0xad000                            
    // 0x05dba8  ldrsw    x26, [x8, #0xcb4]                       
    // 0x05dbac  adrp     x24, #0xad000                           
    // 0x05dbb0  adrp     x23, #0xad000                           
    // 0x05dbb4  cmp      x0, #1                                  
    // 0x05dbb8  b.ne     #0x5dc2c                                
    // 0x05dbbc  mov      x8, #-1                                 
}

- (void)确认取样 {   // 0x5df54
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 确认取样 即可补全。
    // 0x05df54  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05df58  stp      x20, x19, [sp, #0x10]                   
    // 0x05df5c  stp      x29, x30, [sp, #0x20]                   
    // 0x05df60  add      x29, sp, #0x20                          
    // 0x05df64  mov      x21, x0                                 
    // 0x05df68  adrp     x8, #0xad000                            
    // 0x05df6c  ldrsw    x22, [x8, #0xc98]                       
    // 0x05df70  ldr      x0, [x0, x22]                           
    // 0x05df74  bl       #0x6907c                                ; _objc_retainBlock
    // 0x05df78  mov      x19, x0                                 
    // 0x05df7c  adrp     x8, #0xad000                            
    // 0x05df80  ldrsw    x8, [x8, #0xca4]                        
    // 0x05df84  ldr      x0, [x21, x8]                           
    // 0x05df88  bl       #0x6a700                                ; [x0 copy] x2, x3, x4, x5, x6, x7
    // 0x05df8c  mov      x20, x0                                 
    // 0x05df90  ldr      x0, [x21, x22]                          
    // 0x05df94  str      xzr, [x21, x22]                         
    // 0x05df98  bl       #0x69040                                ; _objc_release
    // 0x05df9c  adrp     x8, #0xad000                            
    // 0x05dfa0  ldrsw    x8, [x8, #0xc9c]                        
    // 0x05dfa4  ldr      x0, [x21, x8]                           
    // 0x05dfa8  str      xzr, [x21, x8]                          
    // 0x05dfac  bl       #0x69040                                ; _objc_release
    // 0x05dfb0  mov      x0, x21                                 
}

- (void)取消取样 {   // 0x5dfdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 颜色取样视图 取消取样 即可补全。
    // 0x05dfdc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x05dfe0  stp      x20, x19, [sp, #0x10]                   
    // 0x05dfe4  stp      x29, x30, [sp, #0x20]                   
    // 0x05dfe8  add      x29, sp, #0x20                          
    // 0x05dfec  mov      x20, x0                                 
    // 0x05dff0  adrp     x8, #0xad000                            
    // 0x05dff4  ldrsw    x21, [x8, #0xc9c]                       
    // 0x05dff8  ldr      x0, [x0, x21]                           
    // 0x05dffc  bl       #0x6907c                                ; _objc_retainBlock
    // 0x05e000  mov      x19, x0                                 
    // 0x05e004  adrp     x8, #0xad000                            
    // 0x05e008  ldrsw    x8, [x8, #0xc98]                        
    // 0x05e00c  bl       #0x61ee4                                ; func_0x61ee4
    // 0x05e010  bl       #0x62038                                ; func_0x62038
    // 0x05e014  mov      x0, x20                                 
    // 0x05e018  bl       #0x6b960                                ; [x0 removeFromSuperview] x2, x3, x4, x5, x6, x7
    // 0x05e01c  cbz      x19, #0x5e024                           
    // 0x05e020  bl       #0x61cc8                                ; func_0x61cc8
    // 0x05e024  mov      x0, x19                                 
    // 0x05e028  ldp      x29, x30, [sp, #0x20]                   
    // 0x05e02c  b        #0x601c0                                ; func_0x601c0
}

@end