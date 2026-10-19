//
//  CQTaskEngine.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQTaskEngine

- (BOOL)运行中 {   // 0x16370
    return __运行中;
}

- (void)set试跑白名单:(id)set试跑白名单 {   // 0x16378
    __试跑白名单 = set试跑白名单;
}

- (id)试跑白名单 {   // 0x163a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 试跑白名单 即可补全。
    // 0x0163a4  ldr      x0, [x0, #0x20]                         
    // 0x0163a8  b        #0x69064                                ; _objc_retainAutoreleaseReturnValue
}

- (void)启动 {   // 0x163ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 启动 即可补全。
    // 0x0163ac  sub      sp, sp, #0x60                           
    // 0x0163b0  stp      x22, x21, [sp, #0x30]                   
    // 0x0163b4  stp      x20, x19, [sp, #0x40]                   
    // 0x0163b8  stp      x29, x30, [sp, #0x50]                   
    // 0x0163bc  add      x29, sp, #0x50                          
    // 0x0163c0  ldrb     w8, [x0, #8]                            
    // 0x0163c4  cbz      w8, #0x163ec                            
    // 0x0163c8  adrp     x0, #0x8c000                            
    // 0x0163cc  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x0163d0  adrp     x1, #0x8c000                            
    // 0x0163d4  add      x1, x1, #0xc50                          
    // 0x0163d8  ldp      x29, x30, [sp, #0x50]                   
    // 0x0163dc  ldp      x20, x19, [sp, #0x40]                   
    // 0x0163e0  ldp      x22, x21, [sp, #0x30]                   
    // 0x0163e4  add      sp, sp, #0x60                           
    // 0x0163e8  b        #0x68d70                                ; _dispatch_async
    // 0x0163ec  mov      x20, x0                                 
    // 0x0163f0  mov      w8, #1                                  
    // 0x0163f4  strh     w8, [x0, #8]                            
    // 0x0163f8  adrp     x19, #0xad000                           
    // 0x0163fc  ldr      x0, [x19, #0x1d8]                       ; class(?0x0)
    // 0x016400  bl       #0x6aa60                                ; [class(?0x0) dictionary] x2, x3, x4, x5, x6, x7
    // 0x016404  mov      x29, x29                                
    // 0x016408  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)停止 {   // 0x1659c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 停止 即可补全。
    // 0x01659c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0165a0  stp      x29, x30, [sp, #0x10]                   
    // 0x0165a4  add      x29, sp, #0x10                          
    // 0x0165a8  mov      w8, #1                                  
    // 0x0165ac  sturh    w8, [x0, #9]                            
    // 0x0165b0  adrp     x8, #0xad000                            
    // 0x0165b4  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x0165b8  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x0165bc  mov      x29, x29                                
    // 0x0165c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0165c4  mov      x19, x0                                 
    // 0x0165c8  bl       #0x70b60                                ; [class(CQTouchInjector) 取消并发] x2, x3, x4, x5, x6, x7
    // 0x0165cc  mov      x0, x19                                 
    // 0x0165d0  ldp      x29, x30, [sp, #0x10]                   
    // 0x0165d4  b        #0x1c4ec                                ; func_0x1c4ec
}

- (void)主循环 {   // 0x165d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 主循环 即可补全。
    // 0x0165d8  stp      d9, d8, [sp, #-0x70]!                   
    // 0x0165dc  stp      x28, x27, [sp, #0x10]                   
    // 0x0165e0  stp      x26, x25, [sp, #0x20]                   
    // 0x0165e4  stp      x24, x23, [sp, #0x30]                   
    // 0x0165e8  stp      x22, x21, [sp, #0x40]                   
    // 0x0165ec  stp      x20, x19, [sp, #0x50]                   
    // 0x0165f0  stp      x29, x30, [sp, #0x60]                   
    // 0x0165f4  add      x29, sp, #0x60                          
    // 0x0165f8  sub      sp, sp, #0x690                          
    // 0x0165fc  mov      x9, x0                                  
    // 0x016600  str      xzr, [sp, #0x60]                        
    // 0x016604  adrp     x8, #0x8c000                            
    // 0x016608  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x01660c  ldr      x8, [x8]                                
    // 0x016610  stur     x8, [x29, #-0x70]                       
    // 0x016614  adrp     x8, #0x7b000                            
    // 0x016618  ldr      d8, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x01661c  str      x0, [sp, #0x68]                         
    // 0x016620  ldrb     w8, [x9, #9]                            
    // 0x016624  cbnz     w8, #0x17558                            
    // 0x016628  adrp     x8, #0xad000                            
    // 0x01662c  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x016630  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x016634  mov      x29, x29                                
}

- (id)执行单个:(id)执行单个 {   // 0x1787c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 执行单个: 即可补全。
    // 0x01787c  sub      sp, sp, #0x110                          
    // 0x017880  stp      x28, x27, [sp, #0xb0]                   
    // 0x017884  stp      x26, x25, [sp, #0xc0]                   
    // 0x017888  stp      x24, x23, [sp, #0xd0]                   
    // 0x01788c  stp      x22, x21, [sp, #0xe0]                   
    // 0x017890  stp      x20, x19, [sp, #0xf0]                   
    // 0x017894  stp      x29, x30, [sp, #0x100]                  
    // 0x017898  add      x29, sp, #0x100                         
    // 0x01789c  bl       #0x1c524                                ; func_0x1c524
    // 0x0178a0  mov      x19, x0                                 
    // 0x0178a4  mov      x0, x20                                 
    // 0x0178a8  bl       #0x72e40                                ; [x20 状态回调] x2, x3, x4, x5, x6, x7
    // 0x0178ac  mov      x29, x29                                
    // 0x0178b0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0178b4  mov      x21, x0                                 
    // 0x0178b8  bl       #0x69040                                ; _objc_release
    // 0x0178bc  adrp     x27, #0x8c000                           
    // 0x0178c0  ldr      x27, [x27, #0xd8]                       ; ptr_0x8c0d8
    // 0x0178c4  adrp     x28, #0x7b000                           
    // 0x0178c8  adrp     x26, #0x8c000                           
    // 0x0178cc  add      x26, x26, #0x650                        
    // 0x0178d0  cbz      x21, #0x17910                           
    // 0x0178d4  str      x27, [sp, #0x78]                        
    // 0x0178d8  ldr      d0, [x28, #0x8c0]                       ; ptr_0x7b8c0
}

- (long long)跳转下标:(id)跳转下标 列表:(id)列表 {   // 0x17d58
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跳转下标:列表: 即可补全。
    // 0x017d58  stp      x24, x23, [sp, #-0x40]!                 
    // 0x017d5c  stp      x22, x21, [sp, #0x10]                   
    // 0x017d60  stp      x20, x19, [sp, #0x20]                   
    // 0x017d64  stp      x29, x30, [sp, #0x30]                   
    // 0x017d68  add      x29, sp, #0x30                          
    // 0x017d6c  mov      x20, x3                                 
    // 0x017d70  bl       #0x1c530                                ; func_0x1c530
    // 0x017d74  bl       #0x1c6c0                                ; func_0x1c6c0
    // 0x017d78  mov      x20, x0                                 
    // 0x017d7c  bl       #0x1c9a8                                ; func_0x1c9a8
    // 0x017d80  cbz      x0, #0x17dd4                            
    // 0x017d84  mov      x21, #0                                 
    // 0x017d88  bl       #0x1c750                                ; func_0x1c750
    // 0x017d8c  cmp      x21, x0                                 
    // 0x017d90  b.hs     #0x17dd4                                
    // 0x017d94  mov      x0, x20                                 
    // 0x017d98  mov      x2, x21                                 
    // 0x017d9c  bl       #0x6b680                                ; [x0 objectAtIndexedSubscript:] #0, x3, x4, x5, x6, x7
    // 0x017da0  mov      x29, x29                                
    // 0x017da4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x017da8  mov      x22, x0                                 
    // 0x017dac  bl       #0x727c0                                ; [x0 标识] #0, x3, x4, x5, x6, x7
    // 0x017db0  mov      x29, x29                                
    // 0x017db4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)休眠:(double)休眠 {   // 0x17df8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 休眠: 即可补全。
    // 0x017df8  stp      d11, d10, [sp, #-0x70]!                 
    // 0x017dfc  stp      d9, d8, [sp, #0x10]                     
    // 0x017e00  stp      x26, x25, [sp, #0x20]                   
    // 0x017e04  stp      x24, x23, [sp, #0x30]                   
    // 0x017e08  stp      x22, x21, [sp, #0x40]                   
    // 0x017e0c  stp      x20, x19, [sp, #0x50]                   
    // 0x017e10  stp      x29, x30, [sp, #0x60]                   
    // 0x017e14  add      x29, sp, #0x60                          
    // 0x017e18  fmov     d8, d0                                  
    // 0x017e1c  mov      x19, x0                                 
    // 0x017e20  adrp     x8, #0x7b000                            
    // 0x017e24  ldr      d9, [x8, #0xaa0]                        ; ptr_0x7baa0
    // 0x017e28  adrp     x23, #0xb0000                           
    // 0x017e2c  adrp     x24, #0xb0000                           
    // 0x017e30  adrp     x8, #0x7b000                            
    // 0x017e34  ldr      d10, [x8, #0x8d8]                       ; ptr_0x7b8d8
    // 0x017e38  adrp     x25, #0xb0000                           
    // 0x017e3c  adrp     x20, #0xb0000                           
    // 0x017e40  add      x20, x20, #0x5b8                        
    // 0x017e44  adrp     x21, #0x8c000                           
    // 0x017e48  add      x21, x21, #0xe90                        
    // 0x017e4c  fcmp     d8, #0.0                                
    // 0x017e50  b.le     #0x17ec8                                
    // 0x017e54  ldrb     w8, [x19, #9]                           
}

- (BOOL)偏移随机:(id)偏移随机 {   // 0x17ee8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 偏移随机: 即可补全。
    // 0x017ee8  stp      x29, x30, [sp, #-0x10]!                 
    // 0x017eec  mov      x29, sp                                 
    // 0x017ef0  mov      x0, x2                                  
    // 0x017ef4  bl       #0x70120                                ; [x2 偏移随机数] x2, x3, x4, x5, x6, x7
    // 0x017ef8  cmp      x0, #1                                  
    // 0x017efc  cset     w0, eq                                  
    // 0x017f00  ldp      x29, x30, [sp], #0x10                   
    // 0x017f04  ret                                              
}

- (id)输入取一条:(id)输入取一条 动作:(id)动作 {   // 0x17f08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 输入取一条:动作: 即可补全。
    // 0x017f08  stp      x24, x23, [sp, #-0x40]!                 
    // 0x017f0c  stp      x22, x21, [sp, #0x10]                   
    // 0x017f10  stp      x20, x19, [sp, #0x20]                   
    // 0x017f14  stp      x29, x30, [sp, #0x30]                   
    // 0x017f18  add      x29, sp, #0x30                          
    // 0x017f1c  mov      x20, x2                                 
    // 0x017f20  mov      x21, x0                                 
    // 0x017f24  mov      x0, x3                                  
    // 0x017f28  bl       #0x6904c                                ; _objc_retain
    // 0x017f2c  bl       #0x1c6c0                                ; func_0x1c6c0
    // 0x017f30  mov      x20, x0                                 
    // 0x017f34  mov      x0, x19                                 
    // 0x017f38  bl       #0x74340                                ; [x19 输入模式] x2, x3, x4, x5, x6, x7
    // 0x017f3c  cmp      x0, #1                                  
    // 0x017f40  b.ne     #0x17f54                                
    // 0x017f44  bl       #0x1c750                                ; func_0x1c750
    // 0x017f48  bl       #0x68d1c                                ; _arc4random_uniform
    // 0x017f4c  mov      w22, w0                                 
    // 0x017f50  b        #0x18018                                
    // 0x017f54  ldr      x22, [x21, #0x18]                       
    // 0x017f58  cbnz     x22, #0x17f80                           
    // 0x017f5c  adrp     x8, #0xad000                            
    // 0x017f60  ldr      x0, [x8, #0x1d8]                        ; class(?0x0)
    // 0x017f64  bl       #0x6aa60                                ; [class(?0x0) dictionary] x2, x3, x4, x5, x6, x7
}

- (void)跑输入:(id)跑输入 {   // 0x18050
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑输入: 即可补全。
    // 0x018050  stp      d9, d8, [sp, #-0x70]!                   
    // 0x018054  stp      x28, x27, [sp, #0x10]                   
    // 0x018058  stp      x26, x25, [sp, #0x20]                   
    // 0x01805c  stp      x24, x23, [sp, #0x30]                   
    // 0x018060  stp      x22, x21, [sp, #0x40]                   
    // 0x018064  stp      x20, x19, [sp, #0x50]                   
    // 0x018068  stp      x29, x30, [sp, #0x60]                   
    // 0x01806c  add      x29, sp, #0x60                          
    // 0x018070  sub      sp, sp, #0x280                          
    // 0x018074  str      x0, [sp, #8]                            
    // 0x018078  adrp     x8, #0x8c000                            
    // 0x01807c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x018080  ldr      x8, [x8]                                
    // 0x018084  stur     x8, [x29, #-0x70]                       
    // 0x018088  bl       #0x1c530                                ; func_0x1c530
    // 0x01808c  mov      x19, x0                                 
    // 0x018090  bl       #0x74380                                ; [x0 输入等待] x2, x3, x4, x5, x6, x7
    // 0x018094  fcmp     d0, #0.0                                
    // 0x018098  b.le     #0x180a8                                
    // 0x01809c  mov      x0, x19                                 
    // 0x0180a0  bl       #0x74380                                ; [x0 输入等待] x2, x3, x4, x5, x6, x7
    // 0x0180a4  bl       #0x1c934                                ; func_0x1c934
    // 0x0180a8  mov      x0, x19                                 
    // 0x0180ac  bl       #0x74320                                ; [x0 输入来源] x2, x3, x4, x5, x6, x7
}

- (id)跑等待:(id)跑等待 {   // 0x18a18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑等待: 即可补全。
    // 0x018a18  stp      d9, d8, [sp, #-0x40]!                   
    // 0x018a1c  stp      x22, x21, [sp, #0x10]                   
    // 0x018a20  stp      x20, x19, [sp, #0x20]                   
    // 0x018a24  stp      x29, x30, [sp, #0x30]                   
    // 0x018a28  add      x29, sp, #0x30                          
    // 0x018a2c  bl       #0x1c524                                ; func_0x1c524
    // 0x018a30  mov      x19, x0                                 
    // 0x018a34  bl       #0x730e0                                ; [x0 等待随机] x2, x3, x4, x5, x6, x7
    // 0x018a38  cmp      x0, #1                                  
    // 0x018a3c  b.ne     #0x18aa4                                
    // 0x018a40  mov      x0, x19                                 
    // 0x018a44  bl       #0x72fc0                                ; [x0 等待下限] x2, x3, x4, x5, x6, x7
    // 0x018a48  fmov     d8, d0                                  
    // 0x018a4c  mov      x0, x19                                 
    // 0x018a50  bl       #0x72fa0                                ; [x0 等待上限] x2, x3, x4, x5, x6, x7
    // 0x018a54  fcmp     d8, d0                                  
    // 0x018a58  fcsel    d8, d8, d0, mi                          
    // 0x018a5c  mov      x0, x19                                 
    // 0x018a60  bl       #0x72fc0                                ; [x0 等待下限] x2, x3, x4, x5, x6, x7
    // 0x018a64  fmov     d9, d0                                  
    // 0x018a68  mov      x0, x19                                 
    // 0x018a6c  bl       #0x72fa0                                ; [x0 等待上限] x2, x3, x4, x5, x6, x7
    // 0x018a70  fcmp     d9, d0                                  
    // 0x018a74  fcsel    d0, d0, d9, mi                          
}

- (void)跑循环:(id)跑循环 {   // 0x18b58
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑循环: 即可补全。
    // 0x018b58  stp      x22, x21, [sp, #-0x30]!                 
    // 0x018b5c  stp      x20, x19, [sp, #0x10]                   
    // 0x018b60  stp      x29, x30, [sp, #0x20]                   
    // 0x018b64  add      x29, sp, #0x20                          
    // 0x018b68  bl       #0x1c524                                ; func_0x1c524
    // 0x018b6c  mov      x19, x0                                 
    // 0x018b70  bl       #0x71920                                ; [x0 循环变量名] x2, x3, x4, x5, x6, x7
    // 0x018b74  mov      x29, x29                                
    // 0x018b78  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018b7c  bl       #0x1c874                                ; func_0x1c874
    // 0x018b80  cbz      x0, #0x18b9c                            
    // 0x018b84  mov      x0, x19                                 
    // 0x018b88  bl       #0x71920                                ; [x0 循环变量名] x2, x3, x4, x5, x6, x7
    // 0x018b8c  mov      x29, x29                                
    // 0x018b90  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018b94  mov      x21, x0                                 
    // 0x018b98  b        #0x18ba4                                
    // 0x018b9c  adrp     x21, #0x8f000                           
    // 0x018ba0  add      x21, x21, #0x810                        
    // 0x018ba4  bl       #0x1c50c                                ; func_0x1c50c
    // 0x018ba8  mov      x0, x19                                 
    // 0x018bac  bl       #0x71980                                ; [x0 循环每轮清零] x2, x3, x4, x5, x6, x7
    // 0x018bb0  mov      x8, x0                                  
    // 0x018bb4  ldr      x0, [x20, #0x28]                        
}

- (id)跑循环结尾:(id)跑循环结尾 {   // 0x18bfc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑循环结尾: 即可补全。
    // 0x018bfc  sub      sp, sp, #0x60                           
    // 0x018c00  stp      x26, x25, [sp, #0x10]                   
    // 0x018c04  stp      x24, x23, [sp, #0x20]                   
    // 0x018c08  stp      x22, x21, [sp, #0x30]                   
    // 0x018c0c  stp      x20, x19, [sp, #0x40]                   
    // 0x018c10  stp      x29, x30, [sp, #0x50]                   
    // 0x018c14  add      x29, sp, #0x50                          
    // 0x018c18  mov      x21, x0                                 
    // 0x018c1c  bl       #0x1c530                                ; func_0x1c530
    // 0x018c20  mov      x19, x0                                 
    // 0x018c24  bl       #0x719c0                                ; [x0 循环配对标识] x2, x3, x4, x5, x6, x7
    // 0x018c28  mov      x29, x29                                
    // 0x018c2c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018c30  bl       #0x1c5a4                                ; func_0x1c5a4
    // 0x018c34  cbz      x0, #0x18c68                            
    // 0x018c38  mov      x0, x19                                 
    // 0x018c3c  bl       #0x71920                                ; [x0 循环变量名] x2, x3, x4, x5, x6, x7
    // 0x018c40  mov      x29, x29                                
    // 0x018c44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018c48  bl       #0x1c718                                ; func_0x1c718
    // 0x018c4c  cbz      x0, #0x18c70                            
    // 0x018c50  mov      x0, x19                                 
    // 0x018c54  bl       #0x71920                                ; [x0 循环变量名] x2, x3, x4, x5, x6, x7
    // 0x018c58  mov      x29, x29                                
}

- (id)动作By标识:(id)动作By标识 {   // 0x18d64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 动作By标识: 即可补全。
    // 0x018d64  sub      sp, sp, #0x130                          
    // 0x018d68  stp      x28, x27, [sp, #0xd0]                   
    // 0x018d6c  stp      x26, x25, [sp, #0xe0]                   
    // 0x018d70  stp      x24, x23, [sp, #0xf0]                   
    // 0x018d74  stp      x22, x21, [sp, #0x100]                  
    // 0x018d78  stp      x20, x19, [sp, #0x110]                  
    // 0x018d7c  stp      x29, x30, [sp, #0x120]                  
    // 0x018d80  add      x29, sp, #0x120                         
    // 0x018d84  mov      x0, x2                                  
    // 0x018d88  adrp     x8, #0x8c000                            
    // 0x018d8c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x018d90  ldr      x8, [x8]                                
    // 0x018d94  stur     x8, [x29, #-0x58]                       
    // 0x018d98  bl       #0x6904c                                ; _objc_retain
    // 0x018d9c  mov      x19, x0                                 
    // 0x018da0  bl       #0x6b300                                ; [x2 length] x2, x3, x4, x5, x6, x7
    // 0x018da4  cbz      x0, #0x18e74                            
    // 0x018da8  bl       #0x1c790                                ; func_0x1c790
    // 0x018dac  adrp     x8, #0xad000                            
    // 0x018db0  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x018db4  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x018db8  mov      x29, x29                                
    // 0x018dbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018dc0  mov      x21, x0                                 
}

- (double)取值时长:(double)取值时长 动作:(id)动作 {   // 0x18ebc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 取值时长:动作: 即可补全。
    // 0x018ebc  stp      d11, d10, [sp, #-0x40]!                 
    // 0x018ec0  stp      d9, d8, [sp, #0x10]                     
    // 0x018ec4  stp      x20, x19, [sp, #0x20]                   
    // 0x018ec8  stp      x29, x30, [sp, #0x30]                   
    // 0x018ecc  add      x29, sp, #0x30                          
    // 0x018ed0  mov      x0, x2                                  
    // 0x018ed4  fmov     d8, d0                                  
    // 0x018ed8  bl       #0x6904c                                ; _objc_retain
    // 0x018edc  mov      x19, x0                                 
    // 0x018ee0  cbz      x0, #0x18f4c                            
    // 0x018ee4  mov      x0, x19                                 
    // 0x018ee8  bl       #0x72260                                ; [x2 时长随机开关] x2, x3, x4, x5, x6, x7
    // 0x018eec  fcmp     d8, #0.0                                
    // 0x018ef0  ccmp     x0, #1, #0, hi                          
    // 0x018ef4  b.ne     #0x18f4c                                
    // 0x018ef8  mov      x0, x19                                 
    // 0x018efc  bl       #0x72240                                ; [x2 时长随机幅度] x2, x3, x4, x5, x6, x7
    // 0x018f00  fmov     d9, #1.00000000                         
    // 0x018f04  fcmp     d0, d9                                  
    // 0x018f08  fcsel    d0, d9, d0, gt                          
    // 0x018f0c  fmov     d10, xzr                                
    // 0x018f10  fmaxnm   d11, d0, d10                            
    // 0x018f14  fcmp     d11, #0.0                               
    // 0x018f18  b.ls     #0x18f4c                                
}

- (id)多点列表:(id)多点列表 {   // 0x18f68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 多点列表: 即可补全。
    // 0x018f68  mov      x0, x30                                 
    // 0x018f6c  bl       #0x1c804                                ; func_0x1c804
    // 0x018f70  mov      x30, x0                                 
    // 0x018f74  stp      x29, x30, [sp, #0x150]                  
    // 0x018f78  add      x29, sp, #0x150                         
    // 0x018f7c  mov      x0, x2                                  
    // 0x018f80  adrp     x8, #0x8c000                            
    // 0x018f84  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x018f88  ldr      x8, [x8]                                
    // 0x018f8c  stur     x8, [x29, #-0x88]                       
    // 0x018f90  bl       #0x6904c                                ; _objc_retain
    // 0x018f94  mov      x20, x0                                 
    // 0x018f98  adrp     x8, #0xad000                            
    // 0x018f9c  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x018fa0  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x018fa4  mov      x29, x29                                
    // 0x018fa8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x018fac  mov      x19, x0                                 
    // 0x018fb0  adrp     x24, #0xad000                           
    // 0x018fb4  ldr      x21, [x24, #0x1e8]                      ; class(?0x0)
    // 0x018fb8  bl       #0x1c758                                ; func_0x1c758
    // 0x018fbc  mov      x0, x21                                 
    // 0x018fc0  bl       #0x6fcc0                                ; [class(?0x0) valueWithCGPoint:] x2, x3, x4, x5, x6, x7
    // 0x018fc4  mov      x29, x29                                
}

- (void)跑点击:(id)跑点击 {   // 0x19124
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑点击: 即可补全。
    // 0x019124  stp      x24, x23, [sp, #-0x40]!                 
    // 0x019128  stp      x22, x21, [sp, #0x10]                   
    // 0x01912c  stp      x20, x19, [sp, #0x20]                   
    // 0x019130  stp      x29, x30, [sp, #0x30]                   
    // 0x019134  add      x29, sp, #0x30                          
    // 0x019138  bl       #0x1c524                                ; func_0x1c524
    // 0x01913c  mov      x19, x0                                 
    // 0x019140  bl       #0x70080                                ; [x0 位置偏移] x2, x3, x4, x5, x6, x7
    // 0x019144  mov      x29, x29                                
    // 0x019148  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01914c  mov      x22, x0                                 
    // 0x019150  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x019154  cbz      x0, #0x19170                            
    // 0x019158  bl       #0x1c538                                ; func_0x1c538
    // 0x01915c  bl       #0x71160                                ; [x0 多点列表:] x2, x3, x4, x5, x6, x7
    // 0x019160  mov      x29, x29                                
    // 0x019164  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x019168  mov      x21, x0                                 
    // 0x01916c  b        #0x19174                                
    // 0x019170  mov      x21, #0                                 
    // 0x019174  bl       #0x1c50c                                ; func_0x1c50c
    // 0x019178  bl       #0x1c920                                ; func_0x1c920
    // 0x01917c  cmp      x0, #2                                  
    // 0x019180  b.lo     #0x191c0                                
}

- (void)跑并发点击:(id)跑并发点击 点列表:(id)点列表 {   // 0x19238
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑并发点击:点列表: 即可补全。
    // 0x019238  sub      sp, sp, #0x90                           
    // 0x01923c  stp      d9, d8, [sp, #0x30]                     
    // 0x019240  stp      x26, x25, [sp, #0x40]                   
    // 0x019244  stp      x24, x23, [sp, #0x50]                   
    // 0x019248  stp      x22, x21, [sp, #0x60]                   
    // 0x01924c  stp      x20, x19, [sp, #0x70]                   
    // 0x019250  stp      x29, x30, [sp, #0x80]                   
    // 0x019254  add      x29, sp, #0x80                          
    // 0x019258  mov      x20, x3                                 
    // 0x01925c  mov      x21, x0                                 
    // 0x019260  bl       #0x1c530                                ; func_0x1c530
    // 0x019264  bl       #0x1c6c0                                ; func_0x1c6c0
    // 0x019268  mov      x20, x0                                 
    // 0x01926c  adrp     x8, #0xad000                            
    // 0x019270  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x019274  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x019278  mov      x29, x29                                
    // 0x01927c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x019280  mov      x22, x0                                 
    // 0x019284  mov      x0, #0                                  
    // 0x019288  bl       #0x68de8                                ; _dispatch_semaphore_create
    // 0x01928c  mov      x23, x0                                 
    // 0x019290  bl       #0x1c6d4                                ; func_0x1c6d4
    // 0x019294  mov      x24, x0                                 
}

- (void)注入点击:(id)注入点击 {   // 0x1937c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 注入点击: 即可补全。
    // 0x01937c  stp      d9, d8, [sp, #-0x50]!                   
    // 0x019380  stp      x24, x23, [sp, #0x10]                   
    // 0x019384  stp      x22, x21, [sp, #0x20]                   
    // 0x019388  stp      x20, x19, [sp, #0x30]                   
    // 0x01938c  stp      x29, x30, [sp, #0x40]                   
    // 0x019390  add      x29, sp, #0x40                          
    // 0x019394  mov      x21, x0                                 
    // 0x019398  bl       #0x1c530                                ; func_0x1c530
    // 0x01939c  mov      x19, x0                                 
    // 0x0193a0  adrp     x8, #0xad000                            
    // 0x0193a4  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x0193a8  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x0193ac  mov      x29, x29                                
    // 0x0193b0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0193b4  mov      x20, x0                                 
    // 0x0193b8  mov      x0, x19                                 
    // 0x0193bc  bl       #0x70080                                ; [x0 位置偏移] x2, x3, x4, x5, x6, x7
    // 0x0193c0  mov      x29, x29                                
    // 0x0193c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0193c8  mov      x22, x0                                 
    // 0x0193cc  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x0193d0  mov      x23, x0                                 
    // 0x0193d4  bl       #0x1c50c                                ; func_0x1c50c
    // 0x0193d8  cbz      x23, #0x19414                           
}

- (void)跑多点:(id)跑多点 {   // 0x1944c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑多点: 即可补全。
    // 0x01944c  stp      x26, x25, [sp, #-0x50]!                 
    // 0x019450  stp      x24, x23, [sp, #0x10]                   
    // 0x019454  stp      x22, x21, [sp, #0x20]                   
    // 0x019458  stp      x20, x19, [sp, #0x30]                   
    // 0x01945c  stp      x29, x30, [sp, #0x40]                   
    // 0x019460  add      x29, sp, #0x40                          
    // 0x019464  mov      x19, x0                                 
    // 0x019468  bl       #0x1c530                                ; func_0x1c530
    // 0x01946c  mov      x20, x0                                 
    // 0x019470  bl       #0x71180                                ; [x0 多点坐标组] x2, x3, x4, x5, x6, x7
    // 0x019474  mov      x29, x29                                
    // 0x019478  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01947c  bl       #0x1c980                                ; func_0x1c980
    // 0x019480  mov      x22, x0                                 
    // 0x019484  bl       #0x1c514                                ; func_0x1c514
    // 0x019488  cbz      x22, #0x19534                           
    // 0x01948c  bl       #0x1c7ac                                ; func_0x1c7ac
    // 0x019490  cmp      x0, #1                                  
    // 0x019494  b.lt     #0x194a4                                
    // 0x019498  bl       #0x1c7ac                                ; func_0x1c7ac
    // 0x01949c  mov      x21, x0                                 
    // 0x0194a0  b        #0x194a8                                
    // 0x0194a4  mov      x21, #0x7fffffffffffffff                
    // 0x0194a8  mov      w24, #1                                 
}

- (void)跑双击:(id)跑双击 {   // 0x19550
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑双击: 即可补全。
    // 0x019550  stp      d9, d8, [sp, #-0x40]!                   
    // 0x019554  stp      x22, x21, [sp, #0x10]                   
    // 0x019558  stp      x20, x19, [sp, #0x20]                   
    // 0x01955c  stp      x29, x30, [sp, #0x30]                   
    // 0x019560  add      x29, sp, #0x30                          
    // 0x019564  bl       #0x1c524                                ; func_0x1c524
    // 0x019568  mov      x19, x0                                 
    // 0x01956c  bl       #0x728e0                                ; [x0 次数] x2, x3, x4, x5, x6, x7
    // 0x019570  cmp      x0, #1                                  
    // 0x019574  b.lt     #0x19584                                
    // 0x019578  bl       #0x1c6d4                                ; func_0x1c6d4
    // 0x01957c  mov      x21, x0                                 
    // 0x019580  b        #0x19588                                
    // 0x019584  mov      w21, #1                                 
    // 0x019588  adrp     x8, #0xad000                            
    // 0x01958c  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x019590  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x019594  mov      x29, x29                                
    // 0x019598  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01959c  mov      x22, x0                                 
    // 0x0195a0  mov      x0, x19                                 
    // 0x0195a4  bl       #0x710a0                                ; [x0 坐标] x2, x3, x4, x5, x6, x7
    // 0x0195a8  fmov     d8, d0                                  
    // 0x0195ac  fmov     d9, d1                                  
}

- (void)跑自由滑动:(id)跑自由滑动 {   // 0x197dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑自由滑动: 即可补全。
    // 0x0197dc  sub      sp, sp, #0x1b0                          
    // 0x0197e0  stp      d15, d14, [sp, #0x110]                  
    // 0x0197e4  stp      d13, d12, [sp, #0x120]                  
    // 0x0197e8  stp      d11, d10, [sp, #0x130]                  
    // 0x0197ec  stp      d9, d8, [sp, #0x140]                    
    // 0x0197f0  stp      x28, x27, [sp, #0x150]                  
    // 0x0197f4  stp      x26, x25, [sp, #0x160]                  
    // 0x0197f8  stp      x24, x23, [sp, #0x170]                  
    // 0x0197fc  stp      x22, x21, [sp, #0x180]                  
    // 0x019800  stp      x20, x19, [sp, #0x190]                  
    // 0x019804  stp      x29, x30, [sp, #0x1a0]                  
    // 0x019808  add      x29, sp, #0x1a0                         
    // 0x01980c  mov      x19, x0                                 
    // 0x019810  adrp     x8, #0x8c000                            
    // 0x019814  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x019818  ldr      x8, [x8]                                
    // 0x01981c  stur     x8, [x29, #-0xa0]                       
    // 0x019820  bl       #0x1c530                                ; func_0x1c530
    // 0x019824  mov      x25, x0                                 
    // 0x019828  bl       #0x73500                                ; [x0 自由模式] x2, x3, x4, x5, x6, x7
    // 0x01982c  mov      x21, x0                                 
    // 0x019830  mov      x0, x25                                 
    // 0x019834  bl       #0x728e0                                ; [x0 次数] x2, x3, x4, x5, x6, x7
    // 0x019838  cmp      x0, #1                                  
}

- (void)跑长按:(id)跑长按 {   // 0x19c10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑长按: 即可补全。
    // 0x019c10  stp      d9, d8, [sp, #-0x50]!                   
    // 0x019c14  stp      x24, x23, [sp, #0x10]                   
    // 0x019c18  stp      x22, x21, [sp, #0x20]                   
    // 0x019c1c  stp      x20, x19, [sp, #0x30]                   
    // 0x019c20  stp      x29, x30, [sp, #0x40]                   
    // 0x019c24  add      x29, sp, #0x40                          
    // 0x019c28  mov      x19, x0                                 
    // 0x019c2c  bl       #0x1c530                                ; func_0x1c530
    // 0x019c30  mov      x20, x0                                 
    // 0x019c34  bl       #0x728e0                                ; [x0 次数] x2, x3, x4, x5, x6, x7
    // 0x019c38  cmp      x0, #1                                  
    // 0x019c3c  b.lt     #0x19c48                                
    // 0x019c40  bl       #0x1c7ac                                ; func_0x1c7ac
    // 0x019c44  b        #0x19c4c                                
    // 0x019c48  mov      w0, #1                                  
    // 0x019c4c  bic      x22, x0, x0, asr #63                    
    // 0x019c50  adrp     x23, #0xad000                           
    // 0x019c54  cbz      x22, #0x19cb8                           
    // 0x019c58  ldrb     w8, [x19, #9]                           
    // 0x019c5c  cbnz     w8, #0x19cb8                            
    // 0x019c60  ldr      x0, [x23, #0xf0]                        ; class(CQTouchInjector)
    // 0x019c64  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x019c68  mov      x29, x29                                
    // 0x019c6c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)跑滑动:(id)跑滑动 {   // 0x19cc4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑滑动: 即可补全。
    // 0x019cc4  stp      d15, d14, [sp, #-0x80]!                 
    // 0x019cc8  stp      d13, d12, [sp, #0x10]                   
    // 0x019ccc  stp      d11, d10, [sp, #0x20]                   
    // 0x019cd0  stp      d9, d8, [sp, #0x30]                     
    // 0x019cd4  stp      x24, x23, [sp, #0x40]                   
    // 0x019cd8  stp      x22, x21, [sp, #0x50]                   
    // 0x019cdc  stp      x20, x19, [sp, #0x60]                   
    // 0x019ce0  stp      x29, x30, [sp, #0x70]                   
    // 0x019ce4  add      x29, sp, #0x70                          
    // 0x019ce8  mov      x19, x0                                 
    // 0x019cec  bl       #0x1c530                                ; func_0x1c530
    // 0x019cf0  mov      x20, x0                                 
    // 0x019cf4  bl       #0x728e0                                ; [x0 次数] x2, x3, x4, x5, x6, x7
    // 0x019cf8  cmp      x0, #1                                  
    // 0x019cfc  b.lt     #0x19d0c                                
    // 0x019d00  bl       #0x1c7ac                                ; func_0x1c7ac
    // 0x019d04  mov      x21, x0                                 
    // 0x019d08  b        #0x19d10                                
    // 0x019d0c  mov      w21, #1                                 
    // 0x019d10  mov      x0, x20                                 
    // 0x019d14  bl       #0x73f60                                ; [x0 起始坐标] x2, x3, x4, x5, x6, x7
    // 0x019d18  adrp     x8, #0x8c000                            
    // 0x019d1c  ldr      x8, [x8, #8]                            ; symbol(_CGPointZero)
    // 0x019d20  ldp      d8, d9, [x8]                            
}

- (id)跑识图:(id)跑识图 {   // 0x19f08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑识图: 即可补全。
    // 0x019f08  sub      sp, sp, #0xc0                           
    // 0x019f0c  stp      d13, d12, [sp, #0x30]                   
    // 0x019f10  stp      d11, d10, [sp, #0x40]                   
    // 0x019f14  stp      d9, d8, [sp, #0x50]                     
    // 0x019f18  stp      x28, x27, [sp, #0x60]                   
    // 0x019f1c  stp      x26, x25, [sp, #0x70]                   
    // 0x019f20  stp      x24, x23, [sp, #0x80]                   
    // 0x019f24  stp      x22, x21, [sp, #0x90]                   
    // 0x019f28  stp      x20, x19, [sp, #0xa0]                   
    // 0x019f2c  stp      x29, x30, [sp, #0xb0]                   
    // 0x019f30  add      x29, sp, #0xb0                          
    // 0x019f34  bl       #0x1c524                                ; func_0x1c524
    // 0x019f38  mov      x19, x0                                 
    // 0x019f3c  bl       #0x73820                                ; [x0 识图判断] x2, x3, x4, x5, x6, x7
    // 0x019f40  adrp     x23, #0x7b000                           
    // 0x019f44  cbz      w0, #0x1a07c                            
    // 0x019f48  mov      x21, #0                                 
    // 0x019f4c  mov      x25, #0                                 
    // 0x019f50  ldr      d8, [x23, #0xa40]                       ; ptr_0x7ba40
    // 0x019f54  ldrb     w8, [x20, #9]                           
    // 0x019f58  cbnz     w8, #0x1a070                            
    // 0x019f5c  adrp     x8, #0xad000                            
    // 0x019f60  ldr      x22, [x8, #0x208]                       ; class(CQScreenshot)
    // 0x019f64  bl       #0x1c568                                ; func_0x1c568
}

- (void)跑录制:(id)跑录制 {   // 0x1a698
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑录制: 即可补全。
    // 0x01a698  stp      x22, x21, [sp, #-0x30]!                 
    // 0x01a69c  stp      x20, x19, [sp, #0x10]                   
    // 0x01a6a0  stp      x29, x30, [sp, #0x20]                   
    // 0x01a6a4  add      x29, sp, #0x20                          
    // 0x01a6a8  bl       #0x1c530                                ; func_0x1c530
    // 0x01a6ac  mov      x19, x0                                 
    // 0x01a6b0  adrp     x8, #0xad000                            
    // 0x01a6b4  ldr      x20, [x8, #0x1e0]                       ; class(触摸事件数据)
    // 0x01a6b8  bl       #0x71880                                ; [x0 录制数据] x2, x3, x4, x5, x6, x7
    // 0x01a6bc  mov      x29, x29                                
    // 0x01a6c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01a6c4  mov      x21, x0                                 
    // 0x01a6c8  mov      x0, x20                                 
    // 0x01a6cc  mov      x2, x21                                 
    // 0x01a6d0  bl       #0x736a0                                ; [class(触摸事件数据) 解档数据:] x0, x3, x4, x5, x6, x7
    // 0x01a6d4  mov      x29, x29                                
    // 0x01a6d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01a6dc  mov      x20, x0                                 
    // 0x01a6e0  bl       #0x1c514                                ; func_0x1c514
    // 0x01a6e4  bl       #0x1c750                                ; func_0x1c750
    // 0x01a6e8  cbz      x0, #0x1a738                            
    // 0x01a6ec  mov      x0, x19                                 
    // 0x01a6f0  bl       #0x71960                                ; [x0 循环次数] x0, x3, x4, x5, x6, x7
    // 0x01a6f4  fcmp     d0, #0.0                                
}

- (id)跑识字:(id)跑识字 {   // 0x1a748
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑识字: 即可补全。
    // 0x01a748  sub      sp, sp, #0x70                           
    // 0x01a74c  stp      d11, d10, [sp, #0x20]                   
    // 0x01a750  stp      d9, d8, [sp, #0x30]                     
    // 0x01a754  stp      x22, x21, [sp, #0x40]                   
    // 0x01a758  stp      x20, x19, [sp, #0x50]                   
    // 0x01a75c  stp      x29, x30, [sp, #0x60]                   
    // 0x01a760  add      x29, sp, #0x60                          
    // 0x01a764  bl       #0x1c524                                ; func_0x1c524
    // 0x01a768  mov      x19, x0                                 
    // 0x01a76c  bl       #0x73c00                                ; [x0 识字等待] x2, x3, x4, x5, x6, x7
    // 0x01a770  fcmp     d0, #0.0                                
    // 0x01a774  b.le     #0x1a784                                
    // 0x01a778  mov      x0, x19                                 
    // 0x01a77c  bl       #0x73c00                                ; [x0 识字等待] x2, x3, x4, x5, x6, x7
    // 0x01a780  bl       #0x1c614                                ; func_0x1c614
    // 0x01a784  adrp     x8, #0x8c000                            
    // 0x01a788  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x01a78c  ldp      q0, q1, [x8]                            
    // 0x01a790  stp      q0, q1, [sp]                            
    // 0x01a794  mov      x0, x19                                 
    // 0x01a798  bl       #0x73020                                ; [x0 等待模式] x2, x3, x4, x5, x6, x7
    // 0x01a79c  cbz      w0, #0x1a824                            
    // 0x01a7a0  adrp     x22, #0xad000                           
    // 0x01a7a4  ldr      x0, [x22, #0x138]                       ; class(?0x0)
}

- (BOOL)识字尝试:(id)识字尝试 命中框:(CGRect *)命中框 {   // 0x1a8a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 识字尝试:命中框: 即可补全。
    // 0x01a8a4  stp      d11, d10, [sp, #-0x80]!                 
    // 0x01a8a8  stp      d9, d8, [sp, #0x10]                     
    // 0x01a8ac  stp      x28, x27, [sp, #0x20]                   
    // 0x01a8b0  stp      x26, x25, [sp, #0x30]                   
    // 0x01a8b4  stp      x24, x23, [sp, #0x40]                   
    // 0x01a8b8  stp      x22, x21, [sp, #0x50]                   
    // 0x01a8bc  stp      x20, x19, [sp, #0x60]                   
    // 0x01a8c0  stp      x29, x30, [sp, #0x70]                   
    // 0x01a8c4  add      x29, sp, #0x70                          
    // 0x01a8c8  sub      sp, sp, #0x2b0                          
    // 0x01a8cc  mov      x24, x3                                 
    // 0x01a8d0  mov      x0, x2                                  
    // 0x01a8d4  adrp     x8, #0x8c000                            
    // 0x01a8d8  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x01a8dc  ldr      x8, [x8]                                
    // 0x01a8e0  stur     x8, [x29, #-0x80]                       
    // 0x01a8e4  bl       #0x6904c                                ; _objc_retain
    // 0x01a8e8  mov      x19, x0                                 
    // 0x01a8ec  adrp     x8, #0xad000                            
    // 0x01a8f0  ldr      x20, [x8, #0x208]                       ; class(CQScreenshot)
    // 0x01a8f4  bl       #0x73800                                ; [x2 识别区域] x2, x3, x4, x5, x6, x7
    // 0x01a8f8  mov      x0, x20                                 
    // 0x01a8fc  bl       #0x71bc0                                ; [class(CQScreenshot) 截取区域:] x2, x3, x4, x5, x6, x7
    // 0x01a900  mov      x29, x29                                
}

- (id)识字成功分支:(id)识字成功分支 命中框:(CGRect)命中框 {   // 0x1addc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 识字成功分支:命中框: 即可补全。
    // 0x01addc  stp      d15, d14, [sp, #-0x70]!                 
    // 0x01ade0  stp      d13, d12, [sp, #0x10]                   
    // 0x01ade4  stp      d11, d10, [sp, #0x20]                   
    // 0x01ade8  stp      d9, d8, [sp, #0x30]                     
    // 0x01adec  stp      x22, x21, [sp, #0x40]                   
    // 0x01adf0  stp      x20, x19, [sp, #0x50]                   
    // 0x01adf4  stp      x29, x30, [sp, #0x60]                   
    // 0x01adf8  add      x29, sp, #0x60                          
    // 0x01adfc  fmov     d8, d3                                  
    // 0x01ae00  fmov     d10, d2                                 
    // 0x01ae04  fmov     d9, d1                                  
    // 0x01ae08  fmov     d11, d0                                 
    // 0x01ae0c  bl       #0x1c524                                ; func_0x1c524
    // 0x01ae10  mov      x19, x0                                 
    // 0x01ae14  bl       #0x73800                                ; [x0 识别区域] x2, x3, x4, x5, x6, x7
    // 0x01ae18  fcmp     d2, #0.0                                
    // 0x01ae1c  cset     w8, ls                                  
    // 0x01ae20  fcmp     d3, #0.0                                
    // 0x01ae24  csinc    w8, w8, wzr, hi                         
    // 0x01ae28  cmp      w8, #0                                  
    // 0x01ae2c  fmov     d4, xzr                                 
    // 0x01ae30  fcsel    d12, d4, d1, ne                         
    // 0x01ae34  fcsel    d13, d4, d0, ne                         
    // 0x01ae38  mov      x8, #0x4059000000000000                 
}

- (id)识字失败分支:(id)识字失败分支 {   // 0x1afd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 识字失败分支: 即可补全。
    // 0x01afd4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x01afd8  stp      x20, x19, [sp, #0x10]                   
    // 0x01afdc  stp      x29, x30, [sp, #0x20]                   
    // 0x01afe0  add      x29, sp, #0x20                          
    // 0x01afe4  bl       #0x1c524                                ; func_0x1c524
    // 0x01afe8  mov      x19, x0                                 
    // 0x01afec  strb     wzr, [x20, #0xb]                        
    // 0x01aff0  bl       #0x73aa0                                ; [x0 识字失败行为] x2, x3, x4, x5, x6, x7
    // 0x01aff4  cmp      x0, #1                                  
    // 0x01aff8  b.eq     #0x1b020                                
    // 0x01affc  cmp      x0, #2                                  
    // 0x01b000  b.ne     #0x1b058                                
    // 0x01b004  bl       #0x1c6b4                                ; func_0x1c6b4
    // 0x01b008  adrp     x0, #0x8c000                            
    // 0x01b00c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x01b010  adrp     x1, #0x8c000                            
    // 0x01b014  add      x1, x1, #0xdd0                          
    // 0x01b018  bl       #0x68d70                                ; _dispatch_async
    // 0x01b01c  b        #0x1b058                                
    // 0x01b020  mov      x0, x19                                 
    // 0x01b024  bl       #0x73ac0                                ; [x0 识字失败跳转] x2, x3, x4, x5, x6, x7
    // 0x01b028  mov      x29, x29                                
    // 0x01b02c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01b030  bl       #0x1c5a4                                ; func_0x1c5a4
}

- (id)跑识色:(id)跑识色 {   // 0x1b0a8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑识色: 即可补全。
    // 0x01b0a8  stp      d15, d14, [sp, #-0xa0]!                 
    // 0x01b0ac  stp      d13, d12, [sp, #0x10]                   
    // 0x01b0b0  stp      d11, d10, [sp, #0x20]                   
    // 0x01b0b4  stp      d9, d8, [sp, #0x30]                     
    // 0x01b0b8  stp      x28, x27, [sp, #0x40]                   
    // 0x01b0bc  stp      x26, x25, [sp, #0x50]                   
    // 0x01b0c0  stp      x24, x23, [sp, #0x60]                   
    // 0x01b0c4  stp      x22, x21, [sp, #0x70]                   
    // 0x01b0c8  stp      x20, x19, [sp, #0x80]                   
    // 0x01b0cc  stp      x29, x30, [sp, #0x90]                   
    // 0x01b0d0  add      x29, sp, #0x90                          
    // 0x01b0d4  sub      sp, sp, #0x2d0                          
    // 0x01b0d8  mov      x20, x0                                 
    // 0x01b0dc  adrp     x8, #0x8c000                            
    // 0x01b0e0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x01b0e4  ldr      x8, [x8]                                
    // 0x01b0e8  stur     x8, [x29, #-0xa0]                       
    // 0x01b0ec  bl       #0x1c530                                ; func_0x1c530
    // 0x01b0f0  mov      x19, x0                                 
    // 0x01b0f4  bl       #0x73e20                                ; [x0 识色等待] x2, x3, x4, x5, x6, x7
    // 0x01b0f8  fcmp     d0, #0.0                                
    // 0x01b0fc  b.le     #0x1b10c                                
    // 0x01b100  mov      x0, x19                                 
    // 0x01b104  bl       #0x73e20                                ; [x0 识色等待] x2, x3, x4, x5, x6, x7
}

- (id)识色成功分支:(id)识色成功分支 命中点:(CGPoint)命中点 {   // 0x1b88c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 识色成功分支:命中点: 即可补全。
    // 0x01b88c  stp      d13, d12, [sp, #-0x60]!                 
    // 0x01b890  stp      d11, d10, [sp, #0x10]                   
    // 0x01b894  stp      d9, d8, [sp, #0x20]                     
    // 0x01b898  stp      x22, x21, [sp, #0x30]                   
    // 0x01b89c  stp      x20, x19, [sp, #0x40]                   
    // 0x01b8a0  stp      x29, x30, [sp, #0x50]                   
    // 0x01b8a4  add      x29, sp, #0x50                          
    // 0x01b8a8  fmov     d8, d1                                  
    // 0x01b8ac  fmov     d9, d0                                  
    // 0x01b8b0  bl       #0x1c524                                ; func_0x1c524
    // 0x01b8b4  mov      x19, x0                                 
    // 0x01b8b8  bl       #0x73d40                                ; [x0 识色成功行为] x2, x3, x4, x5, x6, x7
    // 0x01b8bc  sub      x8, x0, #1                              
    // 0x01b8c0  cmp      x8, #3                                  
    // 0x01b8c4  b.hi     #0x1b918                                
    // 0x01b8c8  adrp     x9, #0x7b000                            
    // 0x01b8cc  add      x9, x9, #0xae8                          
    // 0x01b8d0  adr      x10, #0x1b8e0                           
    // 0x01b8d4  ldrb     w11, [x9, x8]                           
    // 0x01b8d8  add      x10, x10, x11, lsl #2                   
    // 0x01b8dc  br       x10                                     
    // 0x01b8e0  mov      x0, x19                                 
    // 0x01b8e4  bl       #0x73e60                                ; [x0 识色跳转] x2, x3, x4, x5, x6, x7
    // 0x01b8e8  mov      x29, x29                                
}

- (id)识色失败分支:(id)识色失败分支 {   // 0x1ba1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 识色失败分支: 即可补全。
    // 0x01ba1c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x01ba20  stp      x20, x19, [sp, #0x10]                   
    // 0x01ba24  stp      x29, x30, [sp, #0x20]                   
    // 0x01ba28  add      x29, sp, #0x20                          
    // 0x01ba2c  bl       #0x1c524                                ; func_0x1c524
    // 0x01ba30  mov      x19, x0                                 
    // 0x01ba34  strb     wzr, [x20, #0xb]                        
    // 0x01ba38  bl       #0x73cc0                                ; [x0 识色失败行为] x2, x3, x4, x5, x6, x7
    // 0x01ba3c  cmp      x0, #1                                  
    // 0x01ba40  b.ne     #0x1ba60                                
    // 0x01ba44  bl       #0x1c6b4                                ; func_0x1c6b4
    // 0x01ba48  adrp     x0, #0x8c000                            
    // 0x01ba4c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x01ba50  adrp     x1, #0x8c000                            
    // 0x01ba54  add      x1, x1, #0xe10                          
    // 0x01ba58  bl       #0x68d70                                ; _dispatch_async
    // 0x01ba5c  b        #0x1ba98                                
    // 0x01ba60  mov      x0, x19                                 
    // 0x01ba64  bl       #0x73ce0                                ; [x0 识色失败跳转] x2, x3, x4, x5, x6, x7
    // 0x01ba68  mov      x29, x29                                
    // 0x01ba6c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01ba70  bl       #0x1c5a4                                ; func_0x1c5a4
    // 0x01ba74  mov      x21, x0                                 
    // 0x01ba78  bl       #0x1c51c                                ; func_0x1c51c
}

- (id)跑取字:(id)跑取字 {   // 0x1bae8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 跑取字: 即可补全。
    // 0x01bae8  sub      sp, sp, #0x190                          
    // 0x01baec  stp      d11, d10, [sp, #0x110]                  
    // 0x01baf0  stp      d9, d8, [sp, #0x120]                    
    // 0x01baf4  stp      x28, x27, [sp, #0x130]                  
    // 0x01baf8  stp      x26, x25, [sp, #0x140]                  
    // 0x01bafc  stp      x24, x23, [sp, #0x150]                  
    // 0x01bb00  stp      x22, x21, [sp, #0x160]                  
    // 0x01bb04  stp      x20, x19, [sp, #0x170]                  
    // 0x01bb08  stp      x29, x30, [sp, #0x180]                  
    // 0x01bb0c  add      x29, sp, #0x180                         
    // 0x01bb10  mov      x24, x0                                 
    // 0x01bb14  adrp     x8, #0x8c000                            
    // 0x01bb18  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x01bb1c  ldr      x8, [x8]                                
    // 0x01bb20  stur     x8, [x29, #-0x80]                       
    // 0x01bb24  bl       #0x1c530                                ; func_0x1c530
    // 0x01bb28  mov      x19, x0                                 
    // 0x01bb2c  bl       #0x70ae0                                ; [x0 取字等待] x2, x3, x4, x5, x6, x7
    // 0x01bb30  fcmp     d0, #0.0                                
    // 0x01bb34  b.le     #0x1bb48                                
    // 0x01bb38  mov      x0, x19                                 
    // 0x01bb3c  bl       #0x70ae0                                ; [x0 取字等待] x2, x3, x4, x5, x6, x7
    // 0x01bb40  mov      x0, x24                                 
    // 0x01bb44  bl       #0x70040                                ; [x0 休眠:] x2, x3, x4, x5, x6, x7
}

- (id)取字成功分支:(id)取字成功分支 {   // 0x1c290
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 取字成功分支: 即可补全。
    // 0x01c290  stp      x22, x21, [sp, #-0x30]!                 
    // 0x01c294  stp      x20, x19, [sp, #0x10]                   
    // 0x01c298  stp      x29, x30, [sp, #0x20]                   
    // 0x01c29c  add      x29, sp, #0x20                          
    // 0x01c2a0  bl       #0x1c524                                ; func_0x1c524
    // 0x01c2a4  mov      x19, x0                                 
    // 0x01c2a8  bl       #0x70a00                                ; [x0 取字成功行为] x2, x3, x4, x5, x6, x7
    // 0x01c2ac  cmp      x0, #1                                  
    // 0x01c2b0  b.eq     #0x1c2d8                                
    // 0x01c2b4  cmp      x0, #2                                  
    // 0x01c2b8  b.ne     #0x1c310                                
    // 0x01c2bc  bl       #0x1c6b4                                ; func_0x1c6b4
    // 0x01c2c0  adrp     x0, #0x8c000                            
    // 0x01c2c4  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x01c2c8  adrp     x1, #0x8c000                            
    // 0x01c2cc  add      x1, x1, #0xe30                          
    // 0x01c2d0  bl       #0x68d70                                ; _dispatch_async
    // 0x01c2d4  b        #0x1c310                                
    // 0x01c2d8  mov      x0, x19                                 
    // 0x01c2dc  bl       #0x70b00                                ; [x0 取字跳转] x2, x3, x4, x5, x6, x7
    // 0x01c2e0  mov      x29, x29                                
    // 0x01c2e4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01c2e8  bl       #0x1c5a4                                ; func_0x1c5a4
    // 0x01c2ec  mov      x21, x0                                 
}

- (id)取字失败分支:(id)取字失败分支 {   // 0x1c360
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine 取字失败分支: 即可补全。
    // 0x01c360  stp      x22, x21, [sp, #-0x30]!                 
    // 0x01c364  stp      x20, x19, [sp, #0x10]                   
    // 0x01c368  stp      x29, x30, [sp, #0x20]                   
    // 0x01c36c  add      x29, sp, #0x20                          
    // 0x01c370  bl       #0x1c524                                ; func_0x1c524
    // 0x01c374  mov      x19, x0                                 
    // 0x01c378  strb     wzr, [x20, #0xb]                        
    // 0x01c37c  bl       #0x70980                                ; [x0 取字失败行为] x2, x3, x4, x5, x6, x7
    // 0x01c380  cmp      x0, #1                                  
    // 0x01c384  b.eq     #0x1c3ac                                
    // 0x01c388  cmp      x0, #2                                  
    // 0x01c38c  b.ne     #0x1c3e4                                
    // 0x01c390  bl       #0x1c6b4                                ; func_0x1c6b4
    // 0x01c394  adrp     x0, #0x8c000                            
    // 0x01c398  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x01c39c  adrp     x1, #0x8c000                            
    // 0x01c3a0  add      x1, x1, #0xe50                          
    // 0x01c3a4  bl       #0x68d70                                ; _dispatch_async
    // 0x01c3a8  b        #0x1c3e4                                
    // 0x01c3ac  mov      x0, x19                                 
    // 0x01c3b0  bl       #0x709a0                                ; [x0 取字失败跳转] x2, x3, x4, x5, x6, x7
    // 0x01c3b4  mov      x29, x29                                
    // 0x01c3b8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01c3bc  bl       #0x1c5a4                                ; func_0x1c5a4
}

- (id)取字暂存 {   // 0x1c434
    return __取字暂存;
}

- (void)set取字暂存:(id)set取字暂存 {   // 0x1c43c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine set取字暂存: 即可补全。
    // 0x01c43c  mov      w3, #0x30                               
    // 0x01c440  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)状态回调 {   // 0x1c444
    return __状态回调;
}

- (void)set状态回调:(id)set状态回调 {   // 0x1c44c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQTaskEngine set状态回调: 即可补全。
    // 0x01c44c  mov      w3, #0x38                               
    // 0x01c450  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

@end