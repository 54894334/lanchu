//
//  悬浮球.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 悬浮球

- (double)半径 {   // 0x34304
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 半径 即可补全。
    // 0x034304  stp      x20, x19, [sp, #-0x20]!                 
    // 0x034308  stp      x29, x30, [sp, #0x10]                   
    // 0x03430c  add      x29, sp, #0x10                          
    // 0x034310  bl       #0x371a0                                ; func_0x371a0
    // 0x034314  fmov     d0, #7.00000000                         
    // 0x034318  tbnz     w0, #0, #0x3433c                        
    // 0x03431c  bl       #0x37044                                ; func_0x37044
    // 0x034320  fmov     d1, d0                                  
    // 0x034324  fmov     d0, #29.00000000                        
    // 0x034328  fcmp     d1, #0.0                                
    // 0x03432c  b.le     #0x3433c                                
    // 0x034330  bl       #0x37044                                ; func_0x37044
    // 0x034334  fmov     d1, #0.50000000                         
    // 0x034338  fmul     d0, d0, d1                              
    // 0x03433c  ldp      x29, x30, [sp, #0x10]                   
    // 0x034340  ldp      x20, x19, [sp], #0x20                   
    // 0x034344  ret                                              
}

- (double)缩放比 {   // 0x34348
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 缩放比 即可补全。
    // 0x034348  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03434c  stp      x29, x30, [sp, #0x10]                   
    // 0x034350  add      x29, sp, #0x10                          
    // 0x034354  mov      x19, x0                                 
    // 0x034358  bl       #0x72ec0                                ; [x0 直径] x2, x3, x4, x5, x6, x7
    // 0x03435c  fcmp     d0, #0.0                                
    // 0x034360  b.le     #0x3436c                                
    // 0x034364  bl       #0x37044                                ; func_0x37044
    // 0x034368  b        #0x34374                                
    // 0x03436c  mov      x8, #0x404d000000000000                 
    // 0x034370  fmov     d0, x8                                  
    // 0x034374  mov      x8, #0x404d000000000000                 
    // 0x034378  fmov     d1, x8                                  
    // 0x03437c  fdiv     d0, d0, d1                              
    // 0x034380  ldp      x29, x30, [sp, #0x10]                   
    // 0x034384  ldp      x20, x19, [sp], #0x20                   
    // 0x034388  ret                                              
}

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x3438c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 initWithFrame: 即可补全。
    // 0x03438c  sub      sp, sp, #0xa0                           
    // 0x034390  stp      d15, d14, [sp, #0x10]                   
    // 0x034394  stp      d13, d12, [sp, #0x20]                   
    // 0x034398  stp      d11, d10, [sp, #0x30]                   
    // 0x03439c  stp      d9, d8, [sp, #0x40]                     
    // 0x0343a0  stp      x26, x25, [sp, #0x50]                   
    // 0x0343a4  stp      x24, x23, [sp, #0x60]                   
    // 0x0343a8  stp      x22, x21, [sp, #0x70]                   
    // 0x0343ac  stp      x20, x19, [sp, #0x80]                   
    // 0x0343b0  stp      x29, x30, [sp, #0x90]                   
    // 0x0343b4  add      x29, sp, #0x90                          
    // 0x0343b8  fmov     d11, d2                                 
    // 0x0343bc  adrp     x8, #0xad000                            
    // 0x0343c0  ldr      x8, [x8, #0x510]                        ; class(悬浮球)
    // 0x0343c4  stp      x0, x8, [sp]                            
    // 0x0343c8  adrp     x8, #0xaa000                            
    // 0x0343cc  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x0343d0  mov      x0, sp                                  
    // 0x0343d4  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x0343d8  mov      x19, x0                                 
    // 0x0343dc  cbz      x0, #0x34b54                            
    // 0x0343e0  adrp     x8, #0xad000                            
    // 0x0343e4  ldrsw    x8, [x8, #0x928]                        
    // 0x0343e8  ldr      d0, [x19, x8]                           
}

- (void)layoutSubviews {   // 0x34b84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 layoutSubviews 即可补全。
    // 0x034b84  sub      sp, sp, #0x60                           
    // 0x034b88  stp      d13, d12, [sp, #0x10]                   
    // 0x034b8c  stp      d11, d10, [sp, #0x20]                   
    // 0x034b90  stp      d9, d8, [sp, #0x30]                     
    // 0x034b94  stp      x20, x19, [sp, #0x40]                   
    // 0x034b98  stp      x29, x30, [sp, #0x50]                   
    // 0x034b9c  add      x29, sp, #0x50                          
    // 0x034ba0  mov      x19, x0                                 
    // 0x034ba4  adrp     x8, #0xad000                            
    // 0x034ba8  ldr      x8, [x8, #0x510]                        ; class(悬浮球)
    // 0x034bac  stp      x0, x8, [sp]                            
    // 0x034bb0  adrp     x8, #0xac000                            
    // 0x034bb4  ldr      x1, [x8, #0xd30]                        ; SEL("layoutSubviews")
    // 0x034bb8  mov      x0, sp                                  
    // 0x034bbc  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x034bc0  bl       #0x36eb4                                ; func_0x36eb4
    // 0x034bc4  fmov     d8, d2                                  
    // 0x034bc8  bl       #0x36eb4                                ; func_0x36eb4
    // 0x034bcc  bl       #0x37070                                ; func_0x37070
    // 0x034bd0  bl       #0x71020                                ; [x0 图标层] x2, x3, x4, x5, x6, x7
    // 0x034bd4  mov      x29, x29                                
    // 0x034bd8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x034bdc  bl       #0x36fc8                                ; func_0x36fc8
    // 0x034be0  bl       #0x36e94                                ; func_0x36e94
}

- (void)应用外观 {   // 0x34cb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 应用外观 即可补全。
    // 0x034cb0  stp      d9, d8, [sp, #-0x40]!                   
    // 0x034cb4  stp      x22, x21, [sp, #0x10]                   
    // 0x034cb8  stp      x20, x19, [sp, #0x20]                   
    // 0x034cbc  stp      x29, x30, [sp, #0x30]                   
    // 0x034cc0  add      x29, sp, #0x30                          
    // 0x034cc4  bl       #0x371a0                                ; func_0x371a0
    // 0x034cc8  tbz      w0, #0, #0x34ce0                        
    // 0x034ccc  ldp      x29, x30, [sp, #0x30]                   
    // 0x034cd0  ldp      x20, x19, [sp, #0x20]                   
    // 0x034cd4  ldp      x22, x21, [sp, #0x10]                   
    // 0x034cd8  ldp      d9, d8, [sp], #0x40                     
    // 0x034cdc  ret                                              
    // 0x034ce0  bl       #0x37044                                ; func_0x37044
    // 0x034ce4  fcmp     d0, #0.0                                
    // 0x034ce8  b.le     #0x34cf8                                
    // 0x034cec  bl       #0x37044                                ; func_0x37044
    // 0x034cf0  fmov     d8, d0                                  
    // 0x034cf4  b        #0x34d00                                
    // 0x034cf8  mov      x8, #0x404d000000000000                 
    // 0x034cfc  fmov     d8, x8                                  
    // 0x034d00  fmov     d0, xzr                                 
    // 0x034d04  fmov     d1, xzr                                 
    // 0x034d08  mov      x0, x19                                 
    // 0x034d0c  fmov     d2, d8                                  
}

- (void)布局进度层 {   // 0x34ef8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 布局进度层 即可补全。
    // 0x034ef8  stp      d15, d14, [sp, #-0x70]!                 
    // 0x034efc  stp      d13, d12, [sp, #0x10]                   
    // 0x034f00  stp      d11, d10, [sp, #0x20]                   
    // 0x034f04  stp      d9, d8, [sp, #0x30]                     
    // 0x034f08  stp      x22, x21, [sp, #0x40]                   
    // 0x034f0c  stp      x20, x19, [sp, #0x50]                   
    // 0x034f10  stp      x29, x30, [sp, #0x60]                   
    // 0x034f14  add      x29, sp, #0x60                          
    // 0x034f18  bl       #0x370c8                                ; func_0x370c8
    // 0x034f1c  fmov     d9, d2                                  
    // 0x034f20  fmov     d8, d3                                  
    // 0x034f24  bl       #0x370b8                                ; func_0x370b8
    // 0x034f28  cmp      x0, #1                                  
    // 0x034f2c  b.eq     #0x35048                                
    // 0x034f30  adrp     x8, #0x7b000                            
    // 0x034f34  ldr      d0, [x8, #0xaf8]                        ; ptr_0x7baf8
    // 0x034f38  fmul     d0, d9, d0                              
    // 0x034f3c  fmov     d1, #2.00000000                         
    // 0x034f40  fmaxnm   d10, d0, d1                             
    // 0x034f44  bl       #0x36eb4                                ; func_0x36eb4
    // 0x034f48  bl       #0x36f2c                                ; func_0x36f2c
    // 0x034f4c  bl       #0x743e0                                ; [x0 进度底环] x2, x3, x4, x5, x6, x7
    // 0x034f50  mov      x29, x29                                
    // 0x034f54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)显示进度:(double)显示进度 {   // 0x35098
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 显示进度: 即可补全。
    // 0x035098  stp      d9, d8, [sp, #-0x30]!                   
    // 0x03509c  stp      x20, x19, [sp, #0x10]                   
    // 0x0350a0  stp      x29, x30, [sp, #0x20]                   
    // 0x0350a4  add      x29, sp, #0x20                          
    // 0x0350a8  fmov     d8, d0                                  
    // 0x0350ac  bl       #0x371a0                                ; func_0x371a0
    // 0x0350b0  tbnz     w0, #0, #0x350d4                        
    // 0x0350b4  bl       #0x3703c                                ; func_0x3703c
    // 0x0350b8  tbnz     w0, #0, #0x350d4                        
    // 0x0350bc  mov      x0, x19                                 
    // 0x0350c0  bl       #0x743a0                                ; [x19 运行中] x2, x3, x4, x5, x6, x7
    // 0x0350c4  cbz      w0, #0x350d4                            
    // 0x0350c8  bl       #0x370b8                                ; func_0x370b8
    // 0x0350cc  cmp      x0, #1                                  
    // 0x0350d0  b.ne     #0x35114                                
    // 0x0350d4  mov      x0, x19                                 
    // 0x0350d8  bl       #0x743e0                                ; [x19 进度底环] x2, x3, x4, x5, x6, x7
    // 0x0350dc  mov      x29, x29                                
    // 0x0350e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0350e4  mov      x20, x0                                 
    // 0x0350e8  bl       #0x36eac                                ; func_0x36eac
    // 0x0350ec  bl       #0x36e94                                ; func_0x36e94
    // 0x0350f0  mov      x0, x19                                 
    // 0x0350f4  bl       #0x74400                                ; [x19 进度环] x2, x3, x4, x5, x6, x7
}

- (void)set运行中:(BOOL)set运行中 {   // 0x351b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set运行中: 即可补全。
    // 0x0351b4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0351b8  stp      x29, x30, [sp, #0x10]                   
    // 0x0351bc  add      x29, sp, #0x10                          
    // 0x0351c0  mov      x20, x2                                 
    // 0x0351c4  mov      x19, x0                                 
    // 0x0351c8  adrp     x8, #0xad000                            
    // 0x0351cc  ldrsw    x8, [x8, #0x934]                        
    // 0x0351d0  strb     w2, [x0, x8]                            
    // 0x0351d4  cbz      w2, #0x351f4                            
    // 0x0351d8  adrp     x8, #0xad000                            
    // 0x0351dc  ldrsw    x8, [x8, #0x938]                        
    // 0x0351e0  mov      w9, #1                                  
    // 0x0351e4  strb     w9, [x19, x8]                           
    // 0x0351e8  mov      x0, x19                                 
    // 0x0351ec  bl       #0x71720                                ; [x0 开始计时] x2, x3, x4, x5, x6, x7
    // 0x0351f0  b        #0x351fc                                
    // 0x0351f4  mov      x0, x19                                 
    // 0x0351f8  bl       #0x70180                                ; [x0 停止计时] x2, x3, x4, x5, x6, x7
    // 0x0351fc  bl       #0x3703c                                ; func_0x3703c
    // 0x035200  tbnz     w0, #0, #0x35208                        
    // 0x035204  bl       #0x370b0                                ; func_0x370b0
    // 0x035208  cbz      w20, #0x35220                           
    // 0x03520c  fmov     d0, xzr                                 
    // 0x035210  mov      x0, x19                                 
}

- (void)set已运行过:(BOOL)set已运行过 {   // 0x35228
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set已运行过: 即可补全。
    // 0x035228  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03522c  stp      x29, x30, [sp, #0x10]                   
    // 0x035230  add      x29, sp, #0x10                          
    // 0x035234  mov      x19, x0                                 
    // 0x035238  adrp     x8, #0xad000                            
    // 0x03523c  ldrsw    x8, [x8, #0x938]                        
    // 0x035240  strb     w2, [x0, x8]                            
    // 0x035244  bl       #0x74740                                ; [x0 闪现中] x2, x3, x4, x5, x6, x7
    // 0x035248  tbz      w0, #0, #0x35254                        
    // 0x03524c  ldp      x29, x30, [sp, #0x10]                   
    // 0x035250  b        #0x37004                                ; func_0x37004
    // 0x035254  mov      x0, x19                                 
    // 0x035258  ldp      x29, x30, [sp, #0x10]                   
    // 0x03525c  ldp      x20, x19, [sp], #0x20                   
    // 0x035260  b        #0x70500                                ; [x0 刷新显示] x2, x3, x4, x5, x6, x7
}

- (void)刷新显示 {   // 0x35264
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 刷新显示 即可补全。
    // 0x035264  stp      d11, d10, [sp, #-0x50]!                 
    // 0x035268  stp      d9, d8, [sp, #0x10]                     
    // 0x03526c  stp      x22, x21, [sp, #0x20]                   
    // 0x035270  stp      x20, x19, [sp, #0x30]                   
    // 0x035274  stp      x29, x30, [sp, #0x40]                   
    // 0x035278  add      x29, sp, #0x40                          
    // 0x03527c  mov      x19, x0                                 
    // 0x035280  bl       #0x743a0                                ; [x0 运行中] x2, x3, x4, x5, x6, x7
    // 0x035284  cbz      w0, #0x35298                            
    // 0x035288  bl       #0x3703c                                ; func_0x3703c
    // 0x03528c  tbnz     w0, #0, #0x35298                        
    // 0x035290  bl       #0x370c0                                ; func_0x370c0
    // 0x035294  tbz      w0, #0, #0x35620                        
    // 0x035298  mov      x0, x19                                 
    // 0x03529c  bl       #0x743e0                                ; [x0 进度底环] x2, x3, x4, x5, x6, x7
    // 0x0352a0  mov      x29, x29                                
    // 0x0352a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0352a8  mov      x20, x0                                 
    // 0x0352ac  bl       #0x36eac                                ; func_0x36eac
    // 0x0352b0  bl       #0x36e94                                ; func_0x36e94
    // 0x0352b4  mov      x0, x19                                 
    // 0x0352b8  bl       #0x74400                                ; [x0 进度环] x2, x3, x4, x5, x6, x7
    // 0x0352bc  mov      x29, x29                                
    // 0x0352c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)_绘播放图标 {   // 0x3566c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 _绘播放图标 即可补全。
    // 0x03566c  stp      d13, d12, [sp, #-0x70]!                 
    // 0x035670  stp      d11, d10, [sp, #0x10]                   
    // 0x035674  stp      d9, d8, [sp, #0x20]                     
    // 0x035678  stp      x24, x23, [sp, #0x30]                   
    // 0x03567c  stp      x22, x21, [sp, #0x40]                   
    // 0x035680  stp      x20, x19, [sp, #0x50]                   
    // 0x035684  stp      x29, x30, [sp, #0x60]                   
    // 0x035688  add      x29, sp, #0x60                          
    // 0x03568c  bl       #0x370c8                                ; func_0x370c8
    // 0x035690  fmov     d8, d2                                  
    // 0x035694  fmov     d9, d3                                  
    // 0x035698  bl       #0x3704c                                ; func_0x3704c
    // 0x03569c  fmov     d1, #14.00000000                        
    // 0x0356a0  fmul     d10, d0, d1                             
    // 0x0356a4  fmov     d1, #16.00000000                        
    // 0x0356a8  fmul     d11, d0, d1                             
    // 0x0356ac  adrp     x8, #0xad000                            
    // 0x0356b0  ldr      x0, [x8, #0x2a0]                        ; class(?0x0)
    // 0x0356b4  bl       #0x6a1e0                                ; [class(?0x0) bezierPath] x2, x3, x4, x5, x6, x7
    // 0x0356b8  mov      x29, x29                                
    // 0x0356bc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0356c0  mov      x20, x0                                 
    // 0x0356c4  fmov     d0, #0.50000000                         
    // 0x0356c8  fmul     d12, d8, d0                             
}

- (void)_绘停止图标 {   // 0x357b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 _绘停止图标 即可补全。
    // 0x0357b0  stp      d9, d8, [sp, #-0x40]!                   
    // 0x0357b4  stp      x22, x21, [sp, #0x10]                   
    // 0x0357b8  stp      x20, x19, [sp, #0x20]                   
    // 0x0357bc  stp      x29, x30, [sp, #0x30]                   
    // 0x0357c0  add      x29, sp, #0x30                          
    // 0x0357c4  bl       #0x370c8                                ; func_0x370c8
    // 0x0357c8  fmov     d8, d2                                  
    // 0x0357cc  fmov     d9, d3                                  
    // 0x0357d0  bl       #0x3704c                                ; func_0x3704c
    // 0x0357d4  fmov     d1, #16.00000000                        
    // 0x0357d8  fmul     d2, d0, d1                              
    // 0x0357dc  fmov     d1, #0.50000000                         
    // 0x0357e0  fmul     d0, d9, d1                              
    // 0x0357e4  adrp     x8, #0x7c000                            
    // 0x0357e8  ldr      d3, [x8, #0x728]                        ; ptr_0x7c728
    // 0x0357ec  fmadd    d3, d9, d3, d0                          
    // 0x0357f0  fsub     d0, d8, d2                              
    // 0x0357f4  fmul     d0, d0, d1                              
    // 0x0357f8  fmul     d1, d2, d1                              
    // 0x0357fc  fsub     d1, d3, d1                              
    // 0x035800  adrp     x8, #0xad000                            
    // 0x035804  ldr      x0, [x8, #0x2a0]                        ; class(?0x0)
    // 0x035808  fmov     d3, d2                                  
    // 0x03580c  bl       #0x6a240                                ; [class(?0x0) bezierPathWithRect:] x2, x3, x4, x5, x6, x7
}

- (void)开始计时 {   // 0x358a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 开始计时 即可补全。
    // 0x0358a4  sub      sp, sp, #0x40                           
    // 0x0358a8  stp      x29, x30, [sp, #0x30]                   
    // 0x0358ac  add      x29, sp, #0x30                          
    // 0x0358b0  adrp     x8, #0x8c000                            
    // 0x0358b4  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x0358b8  str      x8, [sp, #8]                            
    // 0x0358bc  adrp     x8, #0x7b000                            
    // 0x0358c0  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x0358c4  adrp     x8, #0x35000                            
    // 0x0358c8  add      x8, x8, #0x8f4                          
    // 0x0358cc  str      d0, [sp, #0x10]                         
    // 0x0358d0  adrp     x9, #0x8c000                            
    // 0x0358d4  add      x9, x9, #0x3c0                          
    // 0x0358d8  stp      x8, x9, [sp, #0x18]                     
    // 0x0358dc  str      x0, [sp, #0x28]                         
    // 0x0358e0  adrp     x0, #0x8c000                            
    // 0x0358e4  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x0358e8  bl       #0x370d0                                ; func_0x370d0
    // 0x0358ec  ldp      x29, x30, [sp, #0x30]                   
    // 0x0358f0  b        #0x37068                                ; func_0x37068
}

- (void)停止计时 {   // 0x35a24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 停止计时 即可补全。
    // 0x035a24  sub      sp, sp, #0x40                           
    // 0x035a28  stp      x29, x30, [sp, #0x30]                   
    // 0x035a2c  add      x29, sp, #0x30                          
    // 0x035a30  adrp     x8, #0x8c000                            
    // 0x035a34  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x035a38  str      x8, [sp, #8]                            
    // 0x035a3c  adrp     x8, #0x7b000                            
    // 0x035a40  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x035a44  adrp     x8, #0x35000                            
    // 0x035a48  add      x8, x8, #0xa74                          
    // 0x035a4c  str      d0, [sp, #0x10]                         
    // 0x035a50  adrp     x9, #0x8c000                            
    // 0x035a54  add      x9, x9, #0x3c0                          
    // 0x035a58  stp      x8, x9, [sp, #0x18]                     
    // 0x035a5c  str      x0, [sp, #0x28]                         
    // 0x035a60  adrp     x0, #0x8c000                            
    // 0x035a64  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x035a68  bl       #0x370d0                                ; func_0x370d0
    // 0x035a6c  ldp      x29, x30, [sp, #0x30]                   
    // 0x035a70  b        #0x37068                                ; func_0x37068
}

- (void)刷新计时文本 {   // 0x35ab0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 刷新计时文本 即可补全。
    // 0x035ab0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x035ab4  stp      x29, x30, [sp, #0x10]                   
    // 0x035ab8  add      x29, sp, #0x10                          
    // 0x035abc  mov      x19, x0                                 
    // 0x035ac0  bl       #0x743a0                                ; [x0 运行中] x2, x3, x4, x5, x6, x7
    // 0x035ac4  cbz      w0, #0x35ad8                            
    // 0x035ac8  bl       #0x370c0                                ; func_0x370c0
    // 0x035acc  tbnz     w0, #0, #0x35ad8                        
    // 0x035ad0  bl       #0x3703c                                ; func_0x3703c
    // 0x035ad4  tbz      w0, #0, #0x35ae0                        
    // 0x035ad8  ldp      x29, x30, [sp, #0x10]                   
    // 0x035adc  b        #0x37004                                ; func_0x37004
    // 0x035ae0  mov      x0, x19                                 
    // 0x035ae4  bl       #0x736e0                                ; [x0 计时文本] x2, x3, x4, x5, x6, x7
    // 0x035ae8  mov      x29, x29                                
    // 0x035aec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035af0  bl       #0x36f10                                ; func_0x36f10
    // 0x035af4  bl       #0x70680                                ; [x0 副标签] x2, x3, x4, x5, x6, x7
    // 0x035af8  mov      x29, x29                                
    // 0x035afc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035b00  mov      x19, x0                                 
    // 0x035b04  mov      x2, x20                                 
    // 0x035b08  bl       #0x6cb00                                ; [x0 setText:] x20, x3, x4, x5, x6, x7
    // 0x035b0c  bl       #0x36f60                                ; func_0x36f60
}

- (id)计时文本 {   // 0x35b1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 计时文本 即可补全。
    // 0x035b1c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x035b20  stp      x29, x30, [sp, #0x10]                   
    // 0x035b24  add      x29, sp, #0x10                          
    // 0x035b28  adrp     x8, #0xb0000                            
    // 0x035b2c  ldr      x8, [x8, #0x660]                        ; data_0xb0660(=0x0)
    // 0x035b30  cmn      x8, #1                                  
    // 0x035b34  b.ne     #0x35b7c                                
    // 0x035b38  adrp     x8, #0xb0000                            
    // 0x035b3c  ldr      x19, [x8, #0x658]                       ; data_0xb0658(=0x0)
    // 0x035b40  adrp     x8, #0xad000                            
    // 0x035b44  ldr      x0, [x8, #0x138]                        ; class(?0x0)
    // 0x035b48  bl       #0x6a860                                ; [class(?0x0) date] x2, x3, x4, x5, x6, x7
    // 0x035b4c  mov      x29, x29                                
    // 0x035b50  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035b54  bl       #0x36f1c                                ; func_0x36f1c
    // 0x035b58  bl       #0x6f820                                ; [class(?0x0) stringFromDate:] x2, x3, x4, x5, x6, x7
    // 0x035b5c  mov      x29, x29                                
    // 0x035b60  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035b64  mov      x19, x0                                 
    // 0x035b68  bl       #0x36e94                                ; func_0x36e94
    // 0x035b6c  mov      x0, x19                                 
    // 0x035b70  ldp      x29, x30, [sp, #0x10]                   
    // 0x035b74  ldp      x20, x19, [sp], #0x20                   
    // 0x035b78  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)闪现名称:(id)闪现名称 {   // 0x35c08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 闪现名称: 即可补全。
    // 0x035c08  sub      sp, sp, #0xa0                           
    // 0x035c0c  stp      d11, d10, [sp, #0x40]                   
    // 0x035c10  stp      d9, d8, [sp, #0x50]                     
    // 0x035c14  stp      x24, x23, [sp, #0x60]                   
    // 0x035c18  stp      x22, x21, [sp, #0x70]                   
    // 0x035c1c  stp      x20, x19, [sp, #0x80]                   
    // 0x035c20  stp      x29, x30, [sp, #0x90]                   
    // 0x035c24  add      x29, sp, #0x90                          
    // 0x035c28  bl       #0x37134                                ; func_0x37134
    // 0x035c2c  mov      x21, x0                                 
    // 0x035c30  mov      x0, x20                                 
    // 0x035c34  bl       #0x74760                                ; [x20 闪现代号] x2, x3, x4, x5, x6, x7
    // 0x035c38  add      x2, x0, #1                              
    // 0x035c3c  mov      x0, x20                                 
    // 0x035c40  bl       #0x6f3a0                                ; [x20 set闪现代号:] x2, x3, x4, x5, x6, x7
    // 0x035c44  mov      x0, x20                                 
    // 0x035c48  bl       #0x74760                                ; [x20 闪现代号] x2, x3, x4, x5, x6, x7
    // 0x035c4c  mov      x19, x0                                 
    // 0x035c50  mov      x0, x20                                 
    // 0x035c54  mov      w2, #1                                  
    // 0x035c58  bl       #0x6f380                                ; [x20 set闪现中:] x2, x3, x4, x5, x6, x7
    // 0x035c5c  mov      x0, x21                                 
    // 0x035c60  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x035c64  adrp     x8, #0x8e000                            
}

- (void)单击 {   // 0x35e58
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 单击 即可补全。
    // 0x035e58  stp      x20, x19, [sp, #-0x20]!                 
    // 0x035e5c  stp      x29, x30, [sp, #0x10]                   
    // 0x035e60  add      x29, sp, #0x10                          
    // 0x035e64  mov      x19, x0                                 
    // 0x035e68  bl       #0x714c0                                ; [x0 已移动] x2, x3, x4, x5, x6, x7
    // 0x035e6c  cbz      w0, #0x35e84                            
    // 0x035e70  mov      x0, x19                                 
    // 0x035e74  mov      w2, #0                                  
    // 0x035e78  ldp      x29, x30, [sp, #0x10]                   
    // 0x035e7c  ldp      x20, x19, [sp], #0x20                   
    // 0x035e80  b        #0x6d920                                ; [x0 set已移动:] x2, x3, x4, x5, x6, x7
    // 0x035e84  mov      x0, x19                                 
    // 0x035e88  bl       #0x71500                                ; [x0 已贴边] x2, x3, x4, x5, x6, x7
    // 0x035e8c  cbz      w0, #0x35ea0                            
    // 0x035e90  mov      x0, x19                                 
    // 0x035e94  ldp      x29, x30, [sp, #0x10]                   
    // 0x035e98  ldp      x20, x19, [sp], #0x20                   
    // 0x035e9c  b        #0x72d20                                ; [x0 滑回贴边] x2, x3, x4, x5, x6, x7
    // 0x035ea0  mov      x0, x19                                 
    // 0x035ea4  bl       #0x70f20                                ; [x0 唤醒] x2, x3, x4, x5, x6, x7
    // 0x035ea8  mov      x0, x19                                 
    // 0x035eac  bl       #0x72de0                                ; [x0 点击回调] x2, x3, x4, x5, x6, x7
    // 0x035eb0  mov      x29, x29                                
    // 0x035eb4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)长按:(id)长按 {   // 0x35ef4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 长按: 即可补全。
    // 0x035ef4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x035ef8  stp      x20, x19, [sp, #0x10]                   
    // 0x035efc  stp      x29, x30, [sp, #0x20]                   
    // 0x035f00  add      x29, sp, #0x20                          
    // 0x035f04  bl       #0x37134                                ; func_0x37134
    // 0x035f08  mov      x19, x0                                 
    // 0x035f0c  bl       #0x6f6a0                                ; [x0 state] x2, x3, x4, x5, x6, x7
    // 0x035f10  cmp      x0, #1                                  
    // 0x035f14  b.ne     #0x35f30                                
    // 0x035f18  mov      x0, x20                                 
    // 0x035f1c  bl       #0x71500                                ; [x20 已贴边] x2, x3, x4, x5, x6, x7
    // 0x035f20  cbz      w0, #0x35f30                            
    // 0x035f24  mov      x0, x20                                 
    // 0x035f28  bl       #0x72d20                                ; [x20 滑回贴边] x2, x3, x4, x5, x6, x7
    // 0x035f2c  b        #0x35f78                                
    // 0x035f30  bl       #0x37198                                ; func_0x37198
    // 0x035f34  cmp      x0, #1                                  
    // 0x035f38  b.ne     #0x35f78                                
    // 0x035f3c  mov      x0, x20                                 
    // 0x035f40  bl       #0x74700                                ; [x20 长按回调] x2, x3, x4, x5, x6, x7
    // 0x035f44  mov      x29, x29                                
    // 0x035f48  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035f4c  mov      x21, x0                                 
    // 0x035f50  bl       #0x69040                                ; _objc_release
}

- (void)拖动:(id)拖动 {   // 0x35f84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 拖动: 即可补全。
    // 0x035f84  stp      d13, d12, [sp, #-0x60]!                 
    // 0x035f88  stp      d11, d10, [sp, #0x10]                   
    // 0x035f8c  stp      d9, d8, [sp, #0x20]                     
    // 0x035f90  stp      x22, x21, [sp, #0x30]                   
    // 0x035f94  stp      x20, x19, [sp, #0x40]                   
    // 0x035f98  stp      x29, x30, [sp, #0x50]                   
    // 0x035f9c  add      x29, sp, #0x50                          
    // 0x035fa0  mov      x21, x0                                 
    // 0x035fa4  mov      x0, x2                                  
    // 0x035fa8  bl       #0x6904c                                ; _objc_retain
    // 0x035fac  mov      x19, x0                                 
    // 0x035fb0  mov      x0, x21                                 
    // 0x035fb4  bl       #0x6f9e0                                ; [x0 superview] x2, x3, x4, x5, x6, x7
    // 0x035fb8  mov      x29, x29                                
    // 0x035fbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x035fc0  mov      x20, x0                                 
    // 0x035fc4  cbz      x0, #0x36108                            
    // 0x035fc8  mov      x0, x19                                 
    // 0x035fcc  mov      x2, x20                                 
    // 0x035fd0  bl       #0x6fbc0                                ; [x2 translationInView:] x0, x3, x4, x5, x6, x7
    // 0x035fd4  fmov     d8, d0                                  
    // 0x035fd8  fmov     d9, d1                                  
    // 0x035fdc  bl       #0x37198                                ; func_0x37198
    // 0x035fe0  cmp      x0, #1                                  
}

- (void)吸附 {   // 0x3612c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 吸附 即可补全。
    // 0x03612c  sub      sp, sp, #0x110                          
    // 0x036130  stp      d11, d10, [sp, #0xa0]                   
    // 0x036134  stp      d9, d8, [sp, #0xb0]                     
    // 0x036138  stp      x28, x27, [sp, #0xc0]                   
    // 0x03613c  stp      x24, x23, [sp, #0xd0]                   
    // 0x036140  stp      x22, x21, [sp, #0xe0]                   
    // 0x036144  stp      x20, x19, [sp, #0xf0]                   
    // 0x036148  stp      x29, x30, [sp, #0x100]                  
    // 0x03614c  add      x29, sp, #0x100                         
    // 0x036150  mov      x20, x0                                 
    // 0x036154  bl       #0x6f9e0                                ; [x0 superview] x2, x3, x4, x5, x6, x7
    // 0x036158  mov      x29, x29                                
    // 0x03615c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036160  mov      x19, x0                                 
    // 0x036164  cbz      x0, #0x3635c                            
    // 0x036168  mov      x0, x20                                 
    // 0x03616c  bl       #0x707e0                                ; [x0 半径] x2, x3, x4, x5, x6, x7
    // 0x036170  fmov     d1, #6.00000000                         
    // 0x036174  fadd     d9, d0, d1                              
    // 0x036178  bl       #0x3700c                                ; func_0x3700c
    // 0x03617c  fmov     d8, d0                                  
    // 0x036180  bl       #0x36eb4                                ; func_0x36eb4
    // 0x036184  fmov     d0, #0.50000000                         
    // 0x036188  fmul     d11, d2, d0                             
}

- (void)变形为拉手:(BOOL)变形为拉手 {   // 0x363dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 变形为拉手: 即可补全。
    // 0x0363dc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0363e0  stp      x20, x19, [sp, #0x10]                   
    // 0x0363e4  stp      x29, x30, [sp, #0x20]                   
    // 0x0363e8  add      x29, sp, #0x20                          
    // 0x0363ec  mov      x20, x2                                 
    // 0x0363f0  mov      x19, x0                                 
    // 0x0363f4  mov      w2, #1                                  
    // 0x0363f8  bl       #0x6dce0                                ; [x0 set拉手态:] x2, x3, x4, x5, x6, x7
    // 0x0363fc  adrp     x8, #0x8c000                            
    // 0x036400  ldr      x8, [x8, #0x128]                        ; symbol(_kCACornerCurveContinuous)
    // 0x036404  ldr      x21, [x8]                               
    // 0x036408  mov      x0, x19                                 
    // 0x03640c  bl       #0x6b2c0                                ; [x0 layer] x2, x3, x4, x5, x6, x7
    // 0x036410  mov      x29, x29                                
    // 0x036414  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036418  bl       #0x370e4                                ; func_0x370e4
    // 0x03641c  bl       #0x6c0e0                                ; [x0 setCornerCurve:] x2, x3, x4, x5, x6, x7
    // 0x036420  bl       #0x36ed0                                ; func_0x36ed0
    // 0x036424  mov      x0, x19                                 
    // 0x036428  bl       #0x6b2c0                                ; [x0 layer] x2, x3, x4, x5, x6, x7
    // 0x03642c  mov      x29, x29                                
    // 0x036430  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036434  mov      x21, x0                                 
    // 0x036438  fmov     d0, #7.00000000                         
}

- (void)恢复圆形 {   // 0x36540
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 恢复圆形 即可补全。
    // 0x036540  stp      x20, x19, [sp, #-0x20]!                 
    // 0x036544  stp      x29, x30, [sp, #0x10]                   
    // 0x036548  add      x29, sp, #0x10                          
    // 0x03654c  mov      x19, x0                                 
    // 0x036550  mov      w2, #0                                  
    // 0x036554  bl       #0x6dce0                                ; [x0 set拉手态:] x2, x3, x4, x5, x6, x7
    // 0x036558  mov      x0, x19                                 
    // 0x03655c  bl       #0x6b2c0                                ; [x0 layer] x2, x3, x4, x5, x6, x7
    // 0x036560  mov      x29, x29                                
    // 0x036564  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036568  mov      x20, x0                                 
    // 0x03656c  adrp     x8, #0x7c000                            
    // 0x036570  ldr      s0, [x8, #0x730]                        ; ptr_0x7c730
    // 0x036574  bl       #0x6c9c0                                ; [x0 setShadowOpacity:] x2, x3, x4, x5, x6, x7
    // 0x036578  bl       #0x36e94                                ; func_0x36e94
    // 0x03657c  mov      x0, x19                                 
    // 0x036580  bl       #0x73100                                ; [x0 箭头层] x2, x3, x4, x5, x6, x7
    // 0x036584  mov      x29, x29                                
    // 0x036588  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03658c  mov      x20, x0                                 
    // 0x036590  bl       #0x36eac                                ; func_0x36eac
    // 0x036594  bl       #0x36e94                                ; func_0x36e94
    // 0x036598  bl       #0x37184                                ; func_0x37184
    // 0x03659c  mov      x0, x19                                 
}

- (void)_绘拉手箭头:(BOOL)_绘拉手箭头 {   // 0x365ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 _绘拉手箭头: 即可补全。
    // 0x0365ac  stp      d11, d10, [sp, #-0x60]!                 
    // 0x0365b0  stp      d9, d8, [sp, #0x10]                     
    // 0x0365b4  stp      x24, x23, [sp, #0x20]                   
    // 0x0365b8  stp      x22, x21, [sp, #0x30]                   
    // 0x0365bc  stp      x20, x19, [sp, #0x40]                   
    // 0x0365c0  stp      x29, x30, [sp, #0x50]                   
    // 0x0365c4  add      x29, sp, #0x50                          
    // 0x0365c8  mov      x20, x2                                 
    // 0x0365cc  bl       #0x370c8                                ; func_0x370c8
    // 0x0365d0  fmov     d8, d2                                  
    // 0x0365d4  fmov     d9, d3                                  
    // 0x0365d8  adrp     x8, #0xad000                            
    // 0x0365dc  ldr      x0, [x8, #0x2a0]                        ; class(?0x0)
    // 0x0365e0  bl       #0x6a1e0                                ; [class(?0x0) bezierPath] x2, x3, x4, x5, x6, x7
    // 0x0365e4  mov      x29, x29                                
    // 0x0365e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0365ec  mov      x21, x0                                 
    // 0x0365f0  fmov     d0, #0.50000000                         
    // 0x0365f4  fmul     d10, d8, d0                             
    // 0x0365f8  fmul     d1, d9, d0                              
    // 0x0365fc  fmov     d0, #-6.00000000                        
    // 0x036600  fadd     d8, d1, d0                              
    // 0x036604  fmov     d0, #6.00000000                         
    // 0x036608  fadd     d9, d1, d0                              
}

- (void)滑回贴边 {   // 0x366f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 滑回贴边 即可补全。
    // 0x0366f0  sub      sp, sp, #0x90                           
    // 0x0366f4  stp      d9, d8, [sp, #0x60]                     
    // 0x0366f8  stp      x20, x19, [sp, #0x70]                   
    // 0x0366fc  stp      x29, x30, [sp, #0x80]                   
    // 0x036700  add      x29, sp, #0x80                          
    // 0x036704  mov      x20, x0                                 
    // 0x036708  bl       #0x6f9e0                                ; [x0 superview] x2, x3, x4, x5, x6, x7
    // 0x03670c  mov      x29, x29                                
    // 0x036710  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036714  mov      x19, x0                                 
    // 0x036718  cbz      x0, #0x367e0                            
    // 0x03671c  bl       #0x37014                                ; func_0x37014
    // 0x036720  mov      x0, x20                                 
    // 0x036724  bl       #0x707e0                                ; [x0 半径] x2, x3, x4, x5, x6, x7
    // 0x036728  fmov     d1, #6.00000000                         
    // 0x03672c  fadd     d9, d0, d1                              
    // 0x036730  bl       #0x3700c                                ; func_0x3700c
    // 0x036734  fmov     d8, d0                                  
    // 0x036738  bl       #0x36eb4                                ; func_0x36eb4
    // 0x03673c  fmov     d0, #0.50000000                         
    // 0x036740  fmul     d0, d2, d0                              
    // 0x036744  fcmp     d8, d0                                  
    // 0x036748  b.mi     #0x36754                                
    // 0x03674c  bl       #0x36eb4                                ; func_0x36eb4
}

- (void)重新吸附 {   // 0x3684c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 重新吸附 即可补全。
    // 0x03684c  sub      sp, sp, #0x40                           
    // 0x036850  stp      x29, x30, [sp, #0x30]                   
    // 0x036854  add      x29, sp, #0x30                          
    // 0x036858  adrp     x8, #0x8c000                            
    // 0x03685c  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x036860  str      x8, [sp, #8]                            
    // 0x036864  adrp     x8, #0x7b000                            
    // 0x036868  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x03686c  adrp     x8, #0x36000                            
    // 0x036870  add      x8, x8, #0x89c                          
    // 0x036874  str      d0, [sp, #0x10]                         
    // 0x036878  adrp     x9, #0x8c000                            
    // 0x03687c  add      x9, x9, #0x3c0                          
    // 0x036880  stp      x8, x9, [sp, #0x18]                     
    // 0x036884  str      x0, [sp, #0x28]                         
    // 0x036888  adrp     x0, #0x8c000                            
    // 0x03688c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x036890  bl       #0x370d0                                ; func_0x370d0
    // 0x036894  ldp      x29, x30, [sp, #0x30]                   
    // 0x036898  b        #0x37068                                ; func_0x37068
}

- (void)排隐藏 {   // 0x368a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 排隐藏 即可补全。
    // 0x0368a4  sub      sp, sp, #0x60                           
    // 0x0368a8  stp      x22, x21, [sp, #0x30]                   
    // 0x0368ac  stp      x20, x19, [sp, #0x40]                   
    // 0x0368b0  stp      x29, x30, [sp, #0x50]                   
    // 0x0368b4  add      x29, sp, #0x50                          
    // 0x0368b8  mov      x19, x0                                 
    // 0x0368bc  bl       #0x74800                                ; [x0 隐藏计时器] x2, x3, x4, x5, x6, x7
    // 0x0368c0  mov      x29, x29                                
    // 0x0368c4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0368c8  bl       #0x37164                                ; func_0x37164
    // 0x0368cc  bl       #0x36e94                                ; func_0x36e94
    // 0x0368d0  mov      x0, x19                                 
    // 0x0368d4  mov      x2, #0                                  
    // 0x0368d8  bl       #0x6f420                                ; [x0 set隐藏计时器:] #0, x3, x4, x5, x6, x7
    // 0x0368dc  mov      x0, x19                                 
    // 0x0368e0  bl       #0x734c0                                ; [x0 自动隐藏] #0, x3, x4, x5, x6, x7
    // 0x0368e4  cbz      w0, #0x368f0                            
    // 0x0368e8  bl       #0x370c0                                ; func_0x370c0
    // 0x0368ec  cbz      w0, #0x3690c                            
    // 0x0368f0  fmov     d0, #1.00000000                         
    // 0x0368f4  mov      x0, x19                                 
    // 0x0368f8  ldp      x29, x30, [sp, #0x50]                   
    // 0x0368fc  ldp      x20, x19, [sp, #0x40]                   
    // 0x036900  ldp      x22, x21, [sp, #0x30]                   
}

- (void)唤醒 {   // 0x36a80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 唤醒 即可补全。
    // 0x036a80  stp      x20, x19, [sp, #-0x20]!                 
    // 0x036a84  stp      x29, x30, [sp, #0x10]                   
    // 0x036a88  add      x29, sp, #0x10                          
    // 0x036a8c  mov      x19, x0                                 
    // 0x036a90  fmov     d0, #1.00000000                         
    // 0x036a94  bl       #0x6bd60                                ; [x0 setAlpha:] x2, x3, x4, x5, x6, x7
    // 0x036a98  mov      x0, x19                                 
    // 0x036a9c  ldp      x29, x30, [sp, #0x10]                   
    // 0x036aa0  ldp      x20, x19, [sp], #0x20                   
    // 0x036aa4  b        #0x71d60                                ; [x0 排隐藏] x2, x3, x4, x5, x6, x7
}

- (void)didMoveToSuperview {   // 0x36aa8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 didMoveToSuperview 即可补全。
    // 0x036aa8  sub      sp, sp, #0x40                           
    // 0x036aac  stp      d9, d8, [sp, #0x10]                     
    // 0x036ab0  stp      x20, x19, [sp, #0x20]                   
    // 0x036ab4  stp      x29, x30, [sp, #0x30]                   
    // 0x036ab8  add      x29, sp, #0x30                          
    // 0x036abc  mov      x19, x0                                 
    // 0x036ac0  adrp     x8, #0xad000                            
    // 0x036ac4  ldr      x8, [x8, #0x510]                        ; class(悬浮球)
    // 0x036ac8  stp      x0, x8, [sp]                            
    // 0x036acc  adrp     x8, #0xac000                            
    // 0x036ad0  ldr      x1, [x8, #0xdc8]                        ; SEL("didMoveToSuperview")
    // 0x036ad4  mov      x0, sp                                  
    // 0x036ad8  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x036adc  mov      x0, x19                                 
    // 0x036ae0  bl       #0x6f9e0                                ; [x0 superview] x2, x3, x4, x5, x6, x7
    // 0x036ae4  mov      x29, x29                                
    // 0x036ae8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x036aec  mov      x20, x0                                 
    // 0x036af0  bl       #0x69040                                ; _objc_release
    // 0x036af4  cbz      x20, #0x36b4c                           
    // 0x036af8  mov      x0, x19                                 
    // 0x036afc  bl       #0x6f9e0                                ; [x0 superview] x2, x3, x4, x5, x6, x7
    // 0x036b00  mov      x29, x29                                
    // 0x036b04  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)点击回调 {   // 0x36b5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 点击回调 即可补全。
    // 0x036b5c  adrp     x8, #0xad000                            
    // 0x036b60  ldrsw    x8, [x8, #0x940]                        
    // 0x036b64  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set点击回调:(id)set点击回调 {   // 0x36b68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set点击回调: 即可补全。
    // 0x036b68  adrp     x8, #0xad000                            
    // 0x036b6c  ldrsw    x3, [x8, #0x940]                        
    // 0x036b70  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)长按回调 {   // 0x36b74
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 长按回调 即可补全。
    // 0x036b74  adrp     x8, #0xad000                            
    // 0x036b78  ldrsw    x8, [x8, #0x944]                        
    // 0x036b7c  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set长按回调:(id)set长按回调 {   // 0x36b80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set长按回调: 即可补全。
    // 0x036b80  adrp     x8, #0xad000                            
    // 0x036b84  ldrsw    x3, [x8, #0x944]                        
    // 0x036b88  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)自动隐藏 {   // 0x36b8c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 自动隐藏 即可补全。
    // 0x036b8c  adrp     x8, #0xad000                            
    // 0x036b90  ldrsw    x8, [x8, #0x92c]                        
    // 0x036b94  b        #0x36f68                                ; func_0x36f68
}

- (void)set自动隐藏:(BOOL)set自动隐藏 {   // 0x36b98
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set自动隐藏: 即可补全。
    // 0x036b98  adrp     x8, #0xad000                            
    // 0x036b9c  ldrsw    x8, [x8, #0x92c]                        
    // 0x036ba0  b        #0x36fa0                                ; func_0x36fa0
}

- (double)隐藏透明度 {   // 0x36ba4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 隐藏透明度 即可补全。
    // 0x036ba4  adrp     x8, #0xad000                            
    // 0x036ba8  ldrsw    x8, [x8, #0x930]                        
    // 0x036bac  ldr      d0, [x0, x8]                            
    // 0x036bb0  ret                                              
}

- (void)set隐藏透明度:(double)set隐藏透明度 {   // 0x36bb4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set隐藏透明度: 即可补全。
    // 0x036bb4  adrp     x8, #0xad000                            
    // 0x036bb8  ldrsw    x8, [x8, #0x930]                        
    // 0x036bbc  str      d0, [x0, x8]                            
    // 0x036bc0  ret                                              
}

- (BOOL)贴边隐藏 {   // 0x36bc4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 贴边隐藏 即可补全。
    // 0x036bc4  adrp     x8, #0xad000                            
    // 0x036bc8  ldrsw    x8, [x8, #0x948]                        
    // 0x036bcc  b        #0x36f68                                ; func_0x36f68
}

- (void)set贴边隐藏:(BOOL)set贴边隐藏 {   // 0x36bd0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set贴边隐藏: 即可补全。
    // 0x036bd0  adrp     x8, #0xad000                            
    // 0x036bd4  ldrsw    x8, [x8, #0x948]                        
    // 0x036bd8  b        #0x36fa0                                ; func_0x36fa0
}

- (BOOL)已贴边 {   // 0x36bdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 已贴边 即可补全。
    // 0x036bdc  adrp     x8, #0xad000                            
    // 0x036be0  ldrsw    x8, [x8, #0x94c]                        
    // 0x036be4  b        #0x36f68                                ; func_0x36f68
}

- (void)set已贴边:(BOOL)set已贴边 {   // 0x36be8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set已贴边: 即可补全。
    // 0x036be8  adrp     x8, #0xad000                            
    // 0x036bec  ldrsw    x8, [x8, #0x94c]                        
    // 0x036bf0  b        #0x36fa0                                ; func_0x36fa0
}

- (BOOL)拉手态 {   // 0x36bf4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 拉手态 即可补全。
    // 0x036bf4  adrp     x8, #0xad000                            
    // 0x036bf8  ldrsw    x8, [x8, #0x950]                        
    // 0x036bfc  b        #0x36f68                                ; func_0x36f68
}

- (void)set拉手态:(BOOL)set拉手态 {   // 0x36c00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set拉手态: 即可补全。
    // 0x036c00  adrp     x8, #0xad000                            
    // 0x036c04  ldrsw    x8, [x8, #0x950]                        
    // 0x036c08  b        #0x36fa0                                ; func_0x36fa0
}

- (double)直径 {   // 0x36c0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 直径 即可补全。
    // 0x036c0c  adrp     x8, #0xad000                            
    // 0x036c10  ldrsw    x8, [x8, #0x928]                        
    // 0x036c14  ldr      d0, [x0, x8]                            
    // 0x036c18  ret                                              
}

- (void)set直径:(double)set直径 {   // 0x36c1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set直径: 即可补全。
    // 0x036c1c  adrp     x8, #0xad000                            
    // 0x036c20  ldrsw    x8, [x8, #0x928]                        
    // 0x036c24  str      d0, [x0, x8]                            
    // 0x036c28  ret                                              
}

- (long long)形态 {   // 0x36c2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 形态 即可补全。
    // 0x036c2c  adrp     x8, #0xad000                            
    // 0x036c30  ldrsw    x8, [x8, #0x954]                        
    // 0x036c34  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set形态:(long long)set形态 {   // 0x36c38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set形态: 即可补全。
    // 0x036c38  adrp     x8, #0xad000                            
    // 0x036c3c  ldrsw    x8, [x8, #0x954]                        
    // 0x036c40  str      x2, [x0, x8]                            
    // 0x036c44  ret                                              
}

- (BOOL)运行中 {   // 0x36c48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 运行中 即可补全。
    // 0x036c48  adrp     x8, #0xad000                            
    // 0x036c4c  ldrsw    x8, [x8, #0x934]                        
    // 0x036c50  b        #0x36f68                                ; func_0x36f68
}

- (BOOL)已运行过 {   // 0x36c54
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 已运行过 即可补全。
    // 0x036c54  adrp     x8, #0xad000                            
    // 0x036c58  ldrsw    x8, [x8, #0x938]                        
    // 0x036c5c  b        #0x36f68                                ; func_0x36f68
}

- (UIPanGestureRecognizer *)拖动手势 {   // 0x36c60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 拖动手势 即可补全。
    // 0x036c60  adrp     x8, #0xad000                            
    // 0x036c64  ldrsw    x8, [x8, #0x93c]                        
    // 0x036c68  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set拖动手势:(UIPanGestureRecognizer *)set拖动手势 {   // 0x36c6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set拖动手势: 即可补全。
    // 0x036c6c  mov      x1, x2                                  
    // 0x036c70  adrp     x8, #0xad000                            
    // 0x036c74  ldrsw    x8, [x8, #0x93c]                        
    // 0x036c78  b        #0x36ea4                                ; func_0x36ea4
}

- (NSTimer *)隐藏计时器 {   // 0x36c7c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 隐藏计时器 即可补全。
    // 0x036c7c  adrp     x8, #0xad000                            
    // 0x036c80  ldrsw    x8, [x8, #0x958]                        
    // 0x036c84  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set隐藏计时器:(NSTimer *)set隐藏计时器 {   // 0x36c88
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set隐藏计时器: 即可补全。
    // 0x036c88  mov      x1, x2                                  
    // 0x036c8c  adrp     x8, #0xad000                            
    // 0x036c90  ldrsw    x8, [x8, #0x958]                        
    // 0x036c94  b        #0x36ea4                                ; func_0x36ea4
}

- (CGPoint)拖动起点 {   // 0x36c98
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 拖动起点 即可补全。
    // 0x036c98  adrp     x8, #0xad000                            
    // 0x036c9c  ldrsw    x8, [x8, #0x95c]                        
    // 0x036ca0  add      x8, x0, x8                              
    // 0x036ca4  ldp      d0, d1, [x8]                            
    // 0x036ca8  ret                                              
}

- (void)set拖动起点:(CGPoint)set拖动起点 {   // 0x36cac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set拖动起点: 即可补全。
    // 0x036cac  adrp     x8, #0xad000                            
    // 0x036cb0  ldrsw    x8, [x8, #0x95c]                        
    // 0x036cb4  add      x8, x0, x8                              
    // 0x036cb8  stp      d0, d1, [x8]                            
    // 0x036cbc  ret                                              
}

- (BOOL)已移动 {   // 0x36cc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 已移动 即可补全。
    // 0x036cc0  adrp     x8, #0xad000                            
    // 0x036cc4  ldrsw    x8, [x8, #0x960]                        
    // 0x036cc8  b        #0x36f68                                ; func_0x36f68
}

- (void)set已移动:(BOOL)set已移动 {   // 0x36ccc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set已移动: 即可补全。
    // 0x036ccc  adrp     x8, #0xad000                            
    // 0x036cd0  ldrsw    x8, [x8, #0x960]                        
    // 0x036cd4  b        #0x36fa0                                ; func_0x36fa0
}

- (UILabel *)名称标签 {   // 0x36cd8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 名称标签 即可补全。
    // 0x036cd8  adrp     x8, #0xad000                            
    // 0x036cdc  ldrsw    x8, [x8, #0x964]                        
    // 0x036ce0  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set名称标签:(UILabel *)set名称标签 {   // 0x36ce4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set名称标签: 即可补全。
    // 0x036ce4  mov      x1, x2                                  
    // 0x036ce8  adrp     x8, #0xad000                            
    // 0x036cec  ldrsw    x8, [x8, #0x964]                        
    // 0x036cf0  b        #0x36ea4                                ; func_0x36ea4
}

- (UILabel *)副标签 {   // 0x36cf4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 副标签 即可补全。
    // 0x036cf4  adrp     x8, #0xad000                            
    // 0x036cf8  ldrsw    x8, [x8, #0x968]                        
    // 0x036cfc  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set副标签:(UILabel *)set副标签 {   // 0x36d00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set副标签: 即可补全。
    // 0x036d00  mov      x1, x2                                  
    // 0x036d04  adrp     x8, #0xad000                            
    // 0x036d08  ldrsw    x8, [x8, #0x968]                        
    // 0x036d0c  b        #0x36ea4                                ; func_0x36ea4
}

- (CAShapeLayer *)图标层 {   // 0x36d10
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 图标层 即可补全。
    // 0x036d10  adrp     x8, #0xad000                            
    // 0x036d14  ldrsw    x8, [x8, #0x96c]                        
    // 0x036d18  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set图标层:(CAShapeLayer *)set图标层 {   // 0x36d1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set图标层: 即可补全。
    // 0x036d1c  mov      x1, x2                                  
    // 0x036d20  adrp     x8, #0xad000                            
    // 0x036d24  ldrsw    x8, [x8, #0x96c]                        
    // 0x036d28  b        #0x36ea4                                ; func_0x36ea4
}

- (long long)闪现代号 {   // 0x36d2c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 闪现代号 即可补全。
    // 0x036d2c  adrp     x8, #0xad000                            
    // 0x036d30  ldrsw    x8, [x8, #0x970]                        
    // 0x036d34  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set闪现代号:(long long)set闪现代号 {   // 0x36d38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set闪现代号: 即可补全。
    // 0x036d38  adrp     x8, #0xad000                            
    // 0x036d3c  ldrsw    x8, [x8, #0x970]                        
    // 0x036d40  str      x2, [x0, x8]                            
    // 0x036d44  ret                                              
}

- (BOOL)闪现中 {   // 0x36d48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 闪现中 即可补全。
    // 0x036d48  adrp     x8, #0xad000                            
    // 0x036d4c  ldrsw    x8, [x8, #0x974]                        
    // 0x036d50  b        #0x36f68                                ; func_0x36f68
}

- (void)set闪现中:(BOOL)set闪现中 {   // 0x36d54
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set闪现中: 即可补全。
    // 0x036d54  adrp     x8, #0xad000                            
    // 0x036d58  ldrsw    x8, [x8, #0x974]                        
    // 0x036d5c  b        #0x36fa0                                ; func_0x36fa0
}

- (CAShapeLayer *)箭头层 {   // 0x36d60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 箭头层 即可补全。
    // 0x036d60  adrp     x8, #0xad000                            
    // 0x036d64  ldrsw    x8, [x8, #0x978]                        
    // 0x036d68  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set箭头层:(CAShapeLayer *)set箭头层 {   // 0x36d6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set箭头层: 即可补全。
    // 0x036d6c  mov      x1, x2                                  
    // 0x036d70  adrp     x8, #0xad000                            
    // 0x036d74  ldrsw    x8, [x8, #0x978]                        
    // 0x036d78  b        #0x36ea4                                ; func_0x36ea4
}

- (BOOL)本次由拉手拖出 {   // 0x36d7c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 本次由拉手拖出 即可补全。
    // 0x036d7c  adrp     x8, #0xad000                            
    // 0x036d80  ldrsw    x8, [x8, #0x97c]                        
    // 0x036d84  b        #0x36f68                                ; func_0x36f68
}

- (void)set本次由拉手拖出:(BOOL)set本次由拉手拖出 {   // 0x36d88
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set本次由拉手拖出: 即可补全。
    // 0x036d88  adrp     x8, #0xad000                            
    // 0x036d8c  ldrsw    x8, [x8, #0x97c]                        
    // 0x036d90  b        #0x36fa0                                ; func_0x36fa0
}

- (CAShapeLayer *)进度底环 {   // 0x36d94
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 进度底环 即可补全。
    // 0x036d94  adrp     x8, #0xad000                            
    // 0x036d98  ldrsw    x8, [x8, #0x980]                        
    // 0x036d9c  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set进度底环:(CAShapeLayer *)set进度底环 {   // 0x36da0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set进度底环: 即可补全。
    // 0x036da0  mov      x1, x2                                  
    // 0x036da4  adrp     x8, #0xad000                            
    // 0x036da8  ldrsw    x8, [x8, #0x980]                        
    // 0x036dac  b        #0x36ea4                                ; func_0x36ea4
}

- (CAShapeLayer *)进度环 {   // 0x36db0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 进度环 即可补全。
    // 0x036db0  adrp     x8, #0xad000                            
    // 0x036db4  ldrsw    x8, [x8, #0x984]                        
    // 0x036db8  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set进度环:(CAShapeLayer *)set进度环 {   // 0x36dbc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set进度环: 即可补全。
    // 0x036dbc  mov      x1, x2                                  
    // 0x036dc0  adrp     x8, #0xad000                            
    // 0x036dc4  ldrsw    x8, [x8, #0x984]                        
    // 0x036dc8  b        #0x36ea4                                ; func_0x36ea4
}

- (NSTimer *)计时器 {   // 0x36dcc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 计时器 即可补全。
    // 0x036dcc  adrp     x8, #0xad000                            
    // 0x036dd0  ldrsw    x8, [x8, #0x988]                        
    // 0x036dd4  b        #0x36ef0                                ; func_0x36ef0
}

- (void)set计时器:(NSTimer *)set计时器 {   // 0x36dd8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 悬浮球 set计时器: 即可补全。
    // 0x036dd8  mov      x1, x2                                  
    // 0x036ddc  adrp     x8, #0xad000                            
    // 0x036de0  ldrsw    x8, [x8, #0x988]                        
    // 0x036de4  b        #0x36ea4                                ; func_0x36ea4
}

@end