//
//  配置导入视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 配置导入视图

- (void)构建 {   // 0x625e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 构建 即可补全。
    // 0x0625e0  stp      x24, x23, [sp, #-0x40]!                 
    // 0x0625e4  stp      x22, x21, [sp, #0x10]                   
    // 0x0625e8  stp      x20, x19, [sp, #0x20]                   
    // 0x0625ec  stp      x29, x30, [sp, #0x30]                   
    // 0x0625f0  add      x29, sp, #0x30                          
    // 0x0625f4  mov      x19, x0                                 
    // 0x0625f8  adrp     x8, #0xad000                            
    // 0x0625fc  ldr      x0, [x8, #0x1d0]                        ; class(?0x0)
    // 0x062600  bl       #0x68f5c                                ; _objc_alloc
    // 0x062604  mov      x8, #0x4074000000000000                 
    // 0x062608  fmov     d2, x8                                  
    // 0x06260c  fmov     d0, xzr                                 
    // 0x062610  fmov     d1, #10.00000000                        
    // 0x062614  fmov     d3, #26.00000000                        
    // 0x062618  bl       #0x6af60                                ; [class(?0x0) initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x06261c  mov      x20, x0                                 
    // 0x062620  adrp     x2, #0x94000                            
    // 0x062624  add      x2, x2, #0x610                          
    // 0x062628  bl       #0x6cb00                                ; [class(?0x0) setText:] x2, x3, x4, x5, x6, x7
    // 0x06262c  adrp     x24, #0xad000                           
    // 0x062630  ldr      x0, [x24, #0x1b8]                       ; class(?0x0)
    // 0x062634  bl       #0x6fd60                                ; [class(?0x0) whiteColor] x2, x3, x4, x5, x6, x7
    // 0x062638  mov      x29, x29                                
    // 0x06263c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)显示 {   // 0x628b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 显示 即可补全。
    // 0x0628b4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0628b8  stp      x29, x30, [sp, #0x10]                   
    // 0x0628bc  add      x29, sp, #0x10                          
    // 0x0628c0  mov      x19, x0                                 
    // 0x0628c4  adrp     x8, #0xad000                            
    // 0x0628c8  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x0628cc  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x0628d0  mov      x29, x29                                
    // 0x0628d4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0628d8  mov      x20, x0                                 
    // 0x0628dc  mov      x2, x19                                 
    // 0x0628e0  bl       #0x71760                                ; [class(CQOverlay) 弹出面板:] x0, x3, x4, x5, x6, x7
    // 0x0628e4  mov      x0, x20                                 
    // 0x0628e8  ldp      x29, x30, [sp, #0x10]                   
    // 0x0628ec  b        #0x63148                                ; func_0x63148
}

- (void)关闭 {   // 0x628f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 关闭 即可补全。
    // 0x0628f0  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0628f4  stp      x29, x30, [sp, #0x10]                   
    // 0x0628f8  add      x29, sp, #0x10                          
    // 0x0628fc  adrp     x8, #0xad000                            
    // 0x062900  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x062904  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x062908  mov      x29, x29                                
    // 0x06290c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x062910  mov      x19, x0                                 
    // 0x062914  bl       #0x70200                                ; [class(CQOverlay) 关闭面板] x2, x3, x4, x5, x6, x7
    // 0x062918  mov      x0, x19                                 
    // 0x06291c  ldp      x29, x30, [sp, #0x10]                   
    // 0x062920  b        #0x63148                                ; func_0x63148
}

- (NSMutableArray *)文件列表 {   // 0x62924
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 文件列表 即可补全。
    // 0x062924  stp      x22, x21, [sp, #-0x30]!                 
    // 0x062928  stp      x20, x19, [sp, #0x10]                   
    // 0x06292c  stp      x29, x30, [sp, #0x20]                   
    // 0x062930  add      x29, sp, #0x20                          
    // 0x062934  mov      x19, x0                                 
    // 0x062938  adrp     x8, #0xad000                            
    // 0x06293c  ldrsw    x21, [x8, #0xce0]                       
    // 0x062940  ldr      x0, [x0, x21]                           
    // 0x062944  cbnz     x0, #0x6297c                            
    // 0x062948  adrp     x8, #0xad000                            
    // 0x06294c  ldr      x0, [x8, #0x430]                        ; class(配置导入视图)
    // 0x062950  bl       #0x71c40                                ; [class(配置导入视图) 扫描目录] x2, x3, x4, x5, x6, x7
    // 0x062954  mov      x29, x29                                
    // 0x062958  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x06295c  mov      x20, x0                                 
    // 0x062960  bl       #0x6b540                                ; [class(配置导入视图) mutableCopy] x2, x3, x4, x5, x6, x7
    // 0x062964  ldr      x8, [x19, x21]                          
    // 0x062968  str      x0, [x19, x21]                          
    // 0x06296c  mov      x0, x8                                  
    // 0x062970  bl       #0x69040                                ; _objc_release
    // 0x062974  bl       #0x63158                                ; func_0x63158
    // 0x062978  ldr      x0, [x19, x21]                          
    // 0x06297c  ldp      x29, x30, [sp, #0x20]                   
    // 0x062980  ldp      x20, x19, [sp, #0x10]                   
}

- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection {   // 0x6298c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 tableView:numberOfRowsInSection: 即可补全。
    // 0x06298c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x062990  stp      x29, x30, [sp, #0x10]                   
    // 0x062994  add      x29, sp, #0x10                          
    // 0x062998  bl       #0x720a0                                ; [x0 文件列表] x2, x3, x4, x5, x6, x7
    // 0x06299c  mov      x29, x29                                
    // 0x0629a0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0629a4  mov      x19, x0                                 
    // 0x0629a8  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x0629ac  mov      x20, x0                                 
    // 0x0629b0  bl       #0x631ac                                ; func_0x631ac
    // 0x0629b4  mov      x0, x20                                 
    // 0x0629b8  ldp      x29, x30, [sp, #0x10]                   
    // 0x0629bc  ldp      x20, x19, [sp], #0x20                   
    // 0x0629c0  ret                                              
}

- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath {   // 0x629c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 tableView:cellForRowAtIndexPath: 即可补全。
    // 0x0629c4  sub      sp, sp, #0x90                           
    // 0x0629c8  stp      x28, x27, [sp, #0x30]                   
    // 0x0629cc  stp      x26, x25, [sp, #0x40]                   
    // 0x0629d0  stp      x24, x23, [sp, #0x50]                   
    // 0x0629d4  stp      x22, x21, [sp, #0x60]                   
    // 0x0629d8  stp      x20, x19, [sp, #0x70]                   
    // 0x0629dc  stp      x29, x30, [sp, #0x80]                   
    // 0x0629e0  add      x29, sp, #0x80                          
    // 0x0629e4  mov      x19, x2                                 
    // 0x0629e8  bl       #0x631c4                                ; func_0x631c4
    // 0x0629ec  mov      x21, x0                                 
    // 0x0629f0  adrp     x2, #0x90000                            
    // 0x0629f4  add      x2, x2, #0x370                          
    // 0x0629f8  mov      x0, x19                                 
    // 0x0629fc  mov      x3, x21                                 
    // 0x062a00  bl       #0x6aa20                                ; [x2 dequeueReusableCellWithIdentifier:forIndexPath:] x2, x0, x4, x5, x6, x7
    // 0x062a04  mov      x29, x29                                
    // 0x062a08  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x062a0c  mov      x19, x0                                 
    // 0x062a10  adrp     x23, #0xad000                           
    // 0x062a14  ldr      x0, [x23, #0x1b8]                       ; class(?0x0)
    // 0x062a18  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x0, x4, x5, x6, x7
    // 0x062a1c  mov      x29, x29                                
    // 0x062a20  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath {   // 0x62d64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 tableView:didSelectRowAtIndexPath: 即可补全。
    // 0x062d64  stp      x24, x23, [sp, #-0x40]!                 
    // 0x062d68  stp      x22, x21, [sp, #0x10]                   
    // 0x062d6c  stp      x20, x19, [sp, #0x20]                   
    // 0x062d70  stp      x29, x30, [sp, #0x30]                   
    // 0x062d74  add      x29, sp, #0x30                          
    // 0x062d78  bl       #0x631c4                                ; func_0x631c4
    // 0x062d7c  mov      x19, x0                                 
    // 0x062d80  mov      x0, x20                                 
    // 0x062d84  bl       #0x720a0                                ; [x20 文件列表] x2, x3, x4, x5, x6, x7
    // 0x062d88  mov      x29, x29                                
    // 0x062d8c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x062d90  bl       #0x63188                                ; func_0x63188
    // 0x062d94  bl       #0x6bb60                                ; [x20 row] x2, x3, x4, x5, x6, x7
    // 0x062d98  mov      x22, x0                                 
    // 0x062d9c  bl       #0x631ac                                ; func_0x631ac
    // 0x062da0  mov      x0, x21                                 
    // 0x062da4  mov      x2, x22                                 
    // 0x062da8  bl       #0x6b680                                ; [x21 objectAtIndexedSubscript:] x20, x3, x4, x5, x6, x7
    // 0x062dac  mov      x29, x29                                
    // 0x062db0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x062db4  mov      x19, x0                                 
    // 0x062db8  bl       #0x63140                                ; func_0x63140
    // 0x062dbc  adrp     x23, #0xad000                           
    // 0x062dc0  ldr      x0, [x23, #0xe8]                        ; class(CQStore)
}

- (BOOL)tableView:(id)tableView canEditRowAtIndexPath:(id)canEditRowAtIndexPath {   // 0x62e64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 tableView:canEditRowAtIndexPath: 即可补全。
    // 0x062e64  mov      w0, #1                                  
    // 0x062e68  ret                                              
}

- (void)tableView:(id)tableView commitEditingStyle:(long long)commitEditingStyle forRowAtIndexPath:(id)forRowAtIndexPath {   // 0x62e6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 tableView:commitEditingStyle:forRowAtIndexPath: 即可补全。
    // 0x062e6c  sub      sp, sp, #0x70                           
    // 0x062e70  stp      x26, x25, [sp, #0x20]                   
    // 0x062e74  stp      x24, x23, [sp, #0x30]                   
    // 0x062e78  stp      x22, x21, [sp, #0x40]                   
    // 0x062e7c  stp      x20, x19, [sp, #0x50]                   
    // 0x062e80  stp      x29, x30, [sp, #0x60]                   
    // 0x062e84  add      x29, sp, #0x60                          
    // 0x062e88  mov      x20, x4                                 
    // 0x062e8c  mov      x21, x3                                 
    // 0x062e90  mov      x22, x0                                 
    // 0x062e94  adrp     x8, #0x8c000                            
    // 0x062e98  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x062e9c  ldr      x8, [x8]                                
    // 0x062ea0  str      x8, [sp, #0x18]                         
    // 0x062ea4  mov      x0, x2                                  
    // 0x062ea8  bl       #0x6904c                                ; _objc_retain
    // 0x062eac  mov      x19, x0                                 
    // 0x062eb0  mov      x0, x20                                 
    // 0x062eb4  bl       #0x6904c                                ; _objc_retain
    // 0x062eb8  mov      x20, x0                                 
    // 0x062ebc  cmp      x21, #1                                 
    // 0x062ec0  b.ne     #0x63088                                
    // 0x062ec4  mov      x0, x22                                 
    // 0x062ec8  bl       #0x720a0                                ; [x0 文件列表] x2, x3, x4, x5, x6, x7
}

- (UITableView *)表 {   // 0x630c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 表 即可补全。
    // 0x0630c8  adrp     x8, #0xad000                            
    // 0x0630cc  ldrsw    x8, [x8, #0xce4]                        
    // 0x0630d0  ldr      x0, [x0, x8]                            
    // 0x0630d4  ret                                              
}

- (void)set表:(UITableView *)set表 {   // 0x630d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 set表: 即可补全。
    // 0x0630d8  mov      x1, x2                                  
    // 0x0630dc  adrp     x8, #0xad000                            
    // 0x0630e0  ldrsw    x8, [x8, #0xce4]                        
    // 0x0630e4  b        #0x63180                                ; func_0x63180
}

- (void)set文件列表:(NSMutableArray *)set文件列表 {   // 0x630e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 配置导入视图 set文件列表: 即可补全。
    // 0x0630e8  mov      x1, x2                                  
    // 0x0630ec  adrp     x8, #0xad000                            
    // 0x0630f0  ldrsw    x8, [x8, #0xce0]                        
    // 0x0630f4  b        #0x63180                                ; func_0x63180
}

@end