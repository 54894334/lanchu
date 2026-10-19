//
//  统计视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 统计视图

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x38368
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 initWithFrame: 即可补全。
    // 0x038368  sub      sp, sp, #0x50                           
    // 0x03836c  stp      d9, d8, [sp, #0x10]                     
    // 0x038370  stp      x22, x21, [sp, #0x20]                   
    // 0x038374  stp      x20, x19, [sp, #0x30]                   
    // 0x038378  stp      x29, x30, [sp, #0x40]                   
    // 0x03837c  add      x29, sp, #0x40                          
    // 0x038380  adrp     x8, #0xad000                            
    // 0x038384  ldr      x8, [x8, #0x530]                        ; class(统计视图)
    // 0x038388  stp      x0, x8, [sp]                            
    // 0x03838c  adrp     x8, #0xaa000                            
    // 0x038390  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x038394  mov      x0, sp                                  
    // 0x038398  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x03839c  mov      x19, x0                                 
    // 0x0383a0  cbz      x0, #0x38468                            
    // 0x0383a4  bl       #0x200c4                                ; _CQThemeBgPanel
    // 0x0383a8  mov      x29, x29                                
    // 0x0383ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0383b0  mov      x20, x0                                 
    // 0x0383b4  mov      x0, x19                                 
    // 0x0383b8  mov      x2, x20                                 
    // 0x0383bc  bl       #0x6bea0                                ; [x0 setBackgroundColor:] x2, x3, x4, x5, x6, x7
    // 0x0383c0  bl       #0x39d24                                ; func_0x39d24
    // 0x0383c4  bl       #0x202ec                                ; _CQThemeRadiusPanel
}

- (void)构建 {   // 0x38484
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 构建 即可补全。
    // 0x038484  sub      sp, sp, #0x90                           
    // 0x038488  stp      d11, d10, [sp, #0x10]                   
    // 0x03848c  stp      d9, d8, [sp, #0x20]                     
    // 0x038490  stp      x28, x27, [sp, #0x30]                   
    // 0x038494  stp      x26, x25, [sp, #0x40]                   
    // 0x038498  stp      x24, x23, [sp, #0x50]                   
    // 0x03849c  stp      x22, x21, [sp, #0x60]                   
    // 0x0384a0  stp      x20, x19, [sp, #0x70]                   
    // 0x0384a4  stp      x29, x30, [sp, #0x80]                   
    // 0x0384a8  add      x29, sp, #0x80                          
    // 0x0384ac  mov      x20, x0                                 
    // 0x0384b0  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x0384b4  fmov     d8, d2                                  
    // 0x0384b8  adrp     x27, #0xad000                           
    // 0x0384bc  bl       #0x39d8c                                ; func_0x39d8c
    // 0x0384c0  adrp     x8, #0x7c000                            
    // 0x0384c4  ldr      d0, [x8, #0x750]                        ; ptr_0x7c750
    // 0x0384c8  fadd     d2, d8, d0                              
    // 0x0384cc  fmov     d0, #16.00000000                        
    // 0x0384d0  fmov     d1, #10.00000000                        
    // 0x0384d4  fmov     d3, #24.00000000                        
    // 0x0384d8  bl       #0x6af60                                ; [x0 initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x0384dc  adrp     x2, #0x90000                            
    // 0x0384e0  add      x2, x2, #0xd90                          
}

- (void)刷新 {   // 0x38e5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 刷新 即可补全。
    // 0x038e5c  sub      sp, sp, #0x160                          
    // 0x038e60  stp      d11, d10, [sp, #0xe0]                   
    // 0x038e64  stp      d9, d8, [sp, #0xf0]                     
    // 0x038e68  stp      x28, x27, [sp, #0x100]                  
    // 0x038e6c  stp      x26, x25, [sp, #0x110]                  
    // 0x038e70  stp      x24, x23, [sp, #0x120]                  
    // 0x038e74  stp      x22, x21, [sp, #0x130]                  
    // 0x038e78  stp      x20, x19, [sp, #0x140]                  
    // 0x038e7c  stp      x29, x30, [sp, #0x150]                  
    // 0x038e80  add      x29, sp, #0x150                         
    // 0x038e84  mov      x20, x0                                 
    // 0x038e88  adrp     x8, #0x8c000                            
    // 0x038e8c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x038e90  ldr      x8, [x8]                                
    // 0x038e94  stur     x8, [x29, #-0x78]                       
    // 0x038e98  adrp     x25, #0xad000                           
    // 0x038e9c  ldr      x0, [x25, #0x220]                       ; class(CQStats)
    // 0x038ea0  bl       #0x6f560                                ; [class(CQStats) shared] x2, x3, x4, x5, x6, x7
    // 0x038ea4  mov      x29, x29                                
    // 0x038ea8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x038eac  mov      x21, x0                                 
    // 0x038eb0  bl       #0x72940                                ; [class(CQStats) 汇总] x2, x3, x4, x5, x6, x7
    // 0x038eb4  mov      x29, x29                                
    // 0x038eb8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)建行:(long long)建行 宽:(double)宽 y:(double)y 高:(double)高 {   // 0x39234
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 建行:宽:y:高: 即可补全。
    // 0x039234  sub      sp, sp, #0xa0                           
    // 0x039238  stp      d11, d10, [sp, #0x20]                   
    // 0x03923c  stp      d9, d8, [sp, #0x30]                     
    // 0x039240  stp      x28, x27, [sp, #0x40]                   
    // 0x039244  stp      x26, x25, [sp, #0x50]                   
    // 0x039248  stp      x24, x23, [sp, #0x60]                   
    // 0x03924c  stp      x22, x21, [sp, #0x70]                   
    // 0x039250  stp      x20, x19, [sp, #0x80]                   
    // 0x039254  stp      x29, x30, [sp, #0x90]                   
    // 0x039258  add      x29, sp, #0x90                          
    // 0x03925c  fmov     d8, d2                                  
    // 0x039260  fmov     d10, d1                                 
    // 0x039264  fmov     d9, d0                                  
    // 0x039268  mov      x22, x2                                 
    // 0x03926c  mov      x20, x0                                 
    // 0x039270  bl       #0x72020                                ; [x0 数据] x2, x3, x4, x5, x6, x7
    // 0x039274  mov      x29, x29                                
    // 0x039278  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03927c  mov      x21, x0                                 
    // 0x039280  mov      x2, x22                                 
    // 0x039284  bl       #0x6b680                                ; [x0 objectAtIndexedSubscript:] x2, x3, x4, x5, x6, x7
    // 0x039288  mov      x29, x29                                
    // 0x03928c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x039290  mov      x19, x0                                 
}

- (void)点行:(id)点行 {   // 0x396b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 点行: 即可补全。
    // 0x0396b0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0396b4  stp      x20, x19, [sp, #0x10]                   
    // 0x0396b8  stp      x29, x30, [sp, #0x20]                   
    // 0x0396bc  add      x29, sp, #0x20                          
    // 0x0396c0  mov      x19, x0                                 
    // 0x0396c4  mov      x0, x2                                  
    // 0x0396c8  bl       #0x6fd20                                ; [x2 view] x2, x3, x4, x5, x6, x7
    // 0x0396cc  mov      x29, x29                                
    // 0x0396d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0396d4  mov      x20, x0                                 
    // 0x0396d8  bl       #0x6fa60                                ; [x2 tag] x2, x3, x4, x5, x6, x7
    // 0x0396dc  sub      x21, x0, #0x3e8                         
    // 0x0396e0  bl       #0x39d24                                ; func_0x39d24
    // 0x0396e4  bl       #0x39e5c                                ; func_0x39e5c
    // 0x0396e8  cmp      x0, x21                                 
    // 0x0396ec  csinv    x2, x21, xzr, ne                        
    // 0x0396f0  mov      x0, x19                                 
    // 0x0396f4  bl       #0x6f2a0                                ; [x0 set选中行:] x2, x3, x4, x5, x6, x7
    // 0x0396f8  mov      x0, x19                                 
    // 0x0396fc  ldp      x29, x30, [sp, #0x20]                   
    // 0x039700  ldp      x20, x19, [sp, #0x10]                   
    // 0x039704  ldp      x22, x21, [sp], #0x30                   
    // 0x039708  b        #0x70420                                ; [x0 刷新] x2, x3, x4, x5, x6, x7
}

- (void)查看明细 {   // 0x3970c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 查看明细 即可补全。
    // 0x03970c  sub      sp, sp, #0xa0                           
    // 0x039710  stp      d9, d8, [sp, #0x50]                     
    // 0x039714  stp      x24, x23, [sp, #0x60]                   
    // 0x039718  stp      x22, x21, [sp, #0x70]                   
    // 0x03971c  stp      x20, x19, [sp, #0x80]                   
    // 0x039720  stp      x29, x30, [sp, #0x90]                   
    // 0x039724  add      x29, sp, #0x90                          
    // 0x039728  mov      x19, x0                                 
    // 0x03972c  adrp     x8, #0x8c000                            
    // 0x039730  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x039734  ldr      x8, [x8]                                
    // 0x039738  str      x8, [sp, #0x48]                         
    // 0x03973c  bl       #0x74500                                ; [x0 选中行] x2, x3, x4, x5, x6, x7
    // 0x039740  tbnz     x0, #0x3f, #0x39890                     
    // 0x039744  bl       #0x39e5c                                ; func_0x39e5c
    // 0x039748  mov      x20, x0                                 
    // 0x03974c  mov      x0, x19                                 
    // 0x039750  bl       #0x72020                                ; [x0 数据] x2, x3, x4, x5, x6, x7
    // 0x039754  mov      x29, x29                                
    // 0x039758  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03975c  bl       #0x39e38                                ; func_0x39e38
    // 0x039760  mov      x22, x0                                 
    // 0x039764  bl       #0x39d14                                ; func_0x39d14
    // 0x039768  cmp      x20, x22                                
}

- (void)清零 {   // 0x399c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 清零 即可补全。
    // 0x0399c4  sub      sp, sp, #0x70                           
    // 0x0399c8  stp      x22, x21, [sp, #0x40]                   
    // 0x0399cc  stp      x20, x19, [sp, #0x50]                   
    // 0x0399d0  stp      x29, x30, [sp, #0x60]                   
    // 0x0399d4  add      x29, sp, #0x60                          
    // 0x0399d8  mov      x19, x0                                 
    // 0x0399dc  adrp     x8, #0x8c000                            
    // 0x0399e0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0399e4  ldr      x8, [x8]                                
    // 0x0399e8  stur     x8, [x29, #-0x28]                       
    // 0x0399ec  adrp     x8, #0xad000                            
    // 0x0399f0  ldr      x20, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x0399f4  adrp     x8, #0x90000                            
    // 0x0399f8  add      x8, x8, #0xbd0                          
    // 0x0399fc  adrp     x9, #0x92000                            
    // 0x039a00  add      x9, x9, #0xb0                           
    // 0x039a04  stp      x8, x9, [sp, #0x28]                     
    // 0x039a08  adrp     x8, #0xad000                            
    // 0x039a0c  ldr      x0, [x8, #0x110]                        ; class(NSArray)
    // 0x039a10  add      x2, sp, #0x28                           
    // 0x039a14  mov      w3, #2                                  
    // 0x039a18  bl       #0x6a120                                ; [class(NSArray) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x039a1c  mov      x29, x29                                
    // 0x039a20  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)关闭自己 {   // 0x39b60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 关闭自己 即可补全。
    // 0x039b60  stp      x20, x19, [sp, #-0x20]!                 
    // 0x039b64  stp      x29, x30, [sp, #0x10]                   
    // 0x039b68  add      x29, sp, #0x10                          
    // 0x039b6c  adrp     x8, #0xad000                            
    // 0x039b70  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x039b74  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x039b78  mov      x29, x29                                
    // 0x039b7c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x039b80  mov      x19, x0                                 
    // 0x039b84  bl       #0x70200                                ; [class(CQOverlay) 关闭面板] x2, x3, x4, x5, x6, x7
    // 0x039b88  mov      x0, x19                                 
    // 0x039b8c  ldp      x29, x30, [sp, #0x10]                   
    // 0x039b90  ldp      x20, x19, [sp], #0x20                   
    // 0x039b94  b        #0x69040                                ; _objc_release
}

- (id)今日值 {   // 0x39b98
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 今日值 即可补全。
    // 0x039b98  adrp     x8, #0xad000                            
    // 0x039b9c  ldrsw    x8, [x8, #0x9a0]                        
    // 0x039ba0  b        #0x39d68                                ; func_0x39d68
}

- (void)set今日值:(id)set今日值 {   // 0x39ba4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set今日值: 即可补全。
    // 0x039ba4  mov      x1, x2                                  
    // 0x039ba8  adrp     x8, #0xad000                            
    // 0x039bac  ldrsw    x8, [x8, #0x9a0]                        
    // 0x039bb0  b        #0x39cfc                                ; func_0x39cfc
}

- (id)累计值 {   // 0x39bb4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 累计值 即可补全。
    // 0x039bb4  adrp     x8, #0xad000                            
    // 0x039bb8  ldrsw    x8, [x8, #0x9a4]                        
    // 0x039bbc  b        #0x39d68                                ; func_0x39d68
}

- (void)set累计值:(id)set累计值 {   // 0x39bc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set累计值: 即可补全。
    // 0x039bc0  mov      x1, x2                                  
    // 0x039bc4  adrp     x8, #0xad000                            
    // 0x039bc8  ldrsw    x8, [x8, #0x9a4]                        
    // 0x039bcc  b        #0x39cfc                                ; func_0x39cfc
}

- (id)列表 {   // 0x39bd0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 列表 即可补全。
    // 0x039bd0  adrp     x8, #0xad000                            
    // 0x039bd4  ldrsw    x8, [x8, #0x9a8]                        
    // 0x039bd8  b        #0x39d68                                ; func_0x39d68
}

- (void)set列表:(id)set列表 {   // 0x39bdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set列表: 即可补全。
    // 0x039bdc  mov      x1, x2                                  
    // 0x039be0  adrp     x8, #0xad000                            
    // 0x039be4  ldrsw    x8, [x8, #0x9a8]                        
    // 0x039be8  b        #0x39cfc                                ; func_0x39cfc
}

- (id)空态 {   // 0x39bec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 空态 即可补全。
    // 0x039bec  adrp     x8, #0xad000                            
    // 0x039bf0  ldrsw    x8, [x8, #0x9ac]                        
    // 0x039bf4  b        #0x39d68                                ; func_0x39d68
}

- (void)set空态:(id)set空态 {   // 0x39bf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set空态: 即可补全。
    // 0x039bf8  mov      x1, x2                                  
    // 0x039bfc  adrp     x8, #0xad000                            
    // 0x039c00  ldrsw    x8, [x8, #0x9ac]                        
    // 0x039c04  b        #0x39cfc                                ; func_0x39cfc
}

- (id)明细按钮 {   // 0x39c08
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 明细按钮 即可补全。
    // 0x039c08  adrp     x8, #0xad000                            
    // 0x039c0c  ldrsw    x8, [x8, #0x9b0]                        
    // 0x039c10  b        #0x39d68                                ; func_0x39d68
}

- (void)set明细按钮:(id)set明细按钮 {   // 0x39c14
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set明细按钮: 即可补全。
    // 0x039c14  mov      x1, x2                                  
    // 0x039c18  adrp     x8, #0xad000                            
    // 0x039c1c  ldrsw    x8, [x8, #0x9b0]                        
    // 0x039c20  b        #0x39cfc                                ; func_0x39cfc
}

- (id)清零按钮 {   // 0x39c24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 清零按钮 即可补全。
    // 0x039c24  adrp     x8, #0xad000                            
    // 0x039c28  ldrsw    x8, [x8, #0x9b4]                        
    // 0x039c2c  b        #0x39d68                                ; func_0x39d68
}

- (void)set清零按钮:(id)set清零按钮 {   // 0x39c30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set清零按钮: 即可补全。
    // 0x039c30  mov      x1, x2                                  
    // 0x039c34  adrp     x8, #0xad000                            
    // 0x039c38  ldrsw    x8, [x8, #0x9b4]                        
    // 0x039c3c  b        #0x39cfc                                ; func_0x39cfc
}

- (id)数据 {   // 0x39c40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 数据 即可补全。
    // 0x039c40  adrp     x8, #0xad000                            
    // 0x039c44  ldrsw    x8, [x8, #0x9b8]                        
    // 0x039c48  b        #0x39d68                                ; func_0x39d68
}

- (void)set数据:(id)set数据 {   // 0x39c4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set数据: 即可补全。
    // 0x039c4c  mov      x1, x2                                  
    // 0x039c50  adrp     x8, #0xad000                            
    // 0x039c54  ldrsw    x8, [x8, #0x9b8]                        
    // 0x039c58  b        #0x39cfc                                ; func_0x39cfc
}

- (long long)选中行 {   // 0x39c5c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 选中行 即可补全。
    // 0x039c5c  adrp     x8, #0xad000                            
    // 0x039c60  ldrsw    x8, [x8, #0x9bc]                        
    // 0x039c64  b        #0x39d68                                ; func_0x39d68
}

- (void)set选中行:(long long)set选中行 {   // 0x39c68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 统计视图 set选中行: 即可补全。
    // 0x039c68  adrp     x8, #0xad000                            
    // 0x039c6c  ldrsw    x8, [x8, #0x9bc]                        
    // 0x039c70  str      x2, [x0, x8]                            
    // 0x039c74  ret                                              
}

@end