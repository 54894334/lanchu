//
//  任务编辑视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 任务编辑视图

- (void)构建 {   // 0x25764
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 构建 即可补全。
    // 0x025764  stp      d9, d8, [sp, #-0x50]!                   
    // 0x025768  stp      x24, x23, [sp, #0x10]                   
    // 0x02576c  stp      x22, x21, [sp, #0x20]                   
    // 0x025770  stp      x20, x19, [sp, #0x30]                   
    // 0x025774  stp      x29, x30, [sp, #0x40]                   
    // 0x025778  add      x29, sp, #0x40                          
    // 0x02577c  mov      x19, x0                                 
    // 0x025780  adrp     x8, #0xad000                            
    // 0x025784  ldr      x0, [x8, #0x1d0]                        ; class(?0x0)
    // 0x025788  bl       #0x68f5c                                ; _objc_alloc
    // 0x02578c  mov      x8, #0x404e000000000000                 
    // 0x025790  fmov     d8, x8                                  
    // 0x025794  mov      x8, #0x4069000000000000                 
    // 0x025798  fmov     d2, x8                                  
    // 0x02579c  fmov     d1, #10.00000000                        
    // 0x0257a0  fmov     d3, #26.00000000                        
    // 0x0257a4  fmov     d0, d8                                  
    // 0x0257a8  bl       #0x6af60                                ; [class(?0x0) initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x0257ac  bl       #0x2aaf0                                ; func_0x2aaf0
    // 0x0257b0  bl       #0x6e180                                ; [class(?0x0) set标题:] x2, x3, x4, x5, x6, x7
    // 0x0257b4  bl       #0x2aa3c                                ; func_0x2aa3c
    // 0x0257b8  mov      x0, x19                                 
    // 0x0257bc  bl       #0x727e0                                ; [x0 标题] x2, x3, x4, x5, x6, x7
    // 0x0257c0  mov      x29, x29                                
}

- (void)显示 {   // 0x25e0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 显示 即可补全。
    // 0x025e0c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x025e10  stp      x29, x30, [sp, #0x10]                   
    // 0x025e14  add      x29, sp, #0x10                          
    // 0x025e18  mov      x19, x0                                 
    // 0x025e1c  adrp     x8, #0xad000                            
    // 0x025e20  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x025e24  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x025e28  mov      x29, x29                                
    // 0x025e2c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x025e30  mov      x20, x0                                 
    // 0x025e34  mov      x2, x19                                 
    // 0x025e38  bl       #0x71760                                ; [class(CQOverlay) 弹出面板:] x0, x3, x4, x5, x6, x7
    // 0x025e3c  mov      x0, x20                                 
    // 0x025e40  ldp      x29, x30, [sp, #0x10]                   
    // 0x025e44  b        #0x2aae8                                ; func_0x2aae8
}

- (void)关闭 {   // 0x25e48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 关闭 即可补全。
    // 0x025e48  stp      x20, x19, [sp, #-0x20]!                 
    // 0x025e4c  stp      x29, x30, [sp, #0x10]                   
    // 0x025e50  add      x29, sp, #0x10                          
    // 0x025e54  adrp     x8, #0xad000                            
    // 0x025e58  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x025e5c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x025e60  mov      x29, x29                                
    // 0x025e64  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x025e68  mov      x19, x0                                 
    // 0x025e6c  bl       #0x70200                                ; [class(CQOverlay) 关闭面板] x2, x3, x4, x5, x6, x7
    // 0x025e70  mov      x0, x19                                 
    // 0x025e74  ldp      x29, x30, [sp, #0x10]                   
    // 0x025e78  b        #0x2aae8                                ; func_0x2aae8
}

- (void)layoutSubviews {   // 0x25e7c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 layoutSubviews 即可补全。
    // 0x025e7c  sub      sp, sp, #0x60                           
    // 0x025e80  stp      d13, d12, [sp, #0x10]                   
    // 0x025e84  stp      d11, d10, [sp, #0x20]                   
    // 0x025e88  stp      d9, d8, [sp, #0x30]                     
    // 0x025e8c  stp      x20, x19, [sp, #0x40]                   
    // 0x025e90  stp      x29, x30, [sp, #0x50]                   
    // 0x025e94  add      x29, sp, #0x50                          
    // 0x025e98  mov      x19, x0                                 
    // 0x025e9c  adrp     x8, #0xad000                            
    // 0x025ea0  ldr      x8, [x8, #0x4f0]                        ; class(任务编辑视图)
    // 0x025ea4  stp      x0, x8, [sp]                            
    // 0x025ea8  adrp     x8, #0xac000                            
    // 0x025eac  ldr      x1, [x8, #0xd30]                        ; SEL("layoutSubviews")
    // 0x025eb0  mov      x0, sp                                  
    // 0x025eb4  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x025eb8  mov      x0, x19                                 
    // 0x025ebc  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x025ec0  fmov     d9, d2                                  
    // 0x025ec4  mov      x0, x19                                 
    // 0x025ec8  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x025ecc  fmov     d10, d3                                 
    // 0x025ed0  adrp     x8, #0xad000                            
    // 0x025ed4  ldr      x0, [x8, #0x1c8]                        ; class(CQTechKit)
    // 0x025ed8  mov      x2, x19                                 
}

- (void)切换层级:(long long)切换层级 {   // 0x260b4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 切换层级: 即可补全。
    // 0x0260b4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0260b8  stp      x20, x19, [sp, #0x10]                   
    // 0x0260bc  stp      x29, x30, [sp, #0x20]                   
    // 0x0260c0  add      x29, sp, #0x20                          
    // 0x0260c4  mov      x20, x2                                 
    // 0x0260c8  mov      x19, x0                                 
    // 0x0260cc  bl       #0x6d880                                ; [x0 set层级:] x2, x3, x4, x5, x6, x7
    // 0x0260d0  mov      x0, x19                                 
    // 0x0260d4  cbz      x20, #0x261a8                           
    // 0x0260d8  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x0260dc  mov      x29, x29                                
    // 0x0260e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0260e4  mov      x20, x0                                 
    // 0x0260e8  bl       #0x70d00                                ; [x0 名称] x2, x3, x4, x5, x6, x7
    // 0x0260ec  mov      x29, x29                                
    // 0x0260f0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0260f4  mov      x21, x0                                 
    // 0x0260f8  mov      x0, x19                                 
    // 0x0260fc  bl       #0x727e0                                ; [x0 标题] x2, x3, x4, x5, x6, x7
    // 0x026100  mov      x29, x29                                
    // 0x026104  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x026108  bl       #0x2ac90                                ; func_0x2ac90
    // 0x02610c  bl       #0x6cb00                                ; [x0 setText:] x2, x3, x4, x5, x6, x7
    // 0x026110  bl       #0x2aa54                                ; func_0x2aa54
}

- (void)左按钮点按 {   // 0x26250
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 左按钮点按 即可补全。
    // 0x026250  sub      sp, sp, #0x150                          
    // 0x026254  stp      x28, x27, [sp, #0x100]                  
    // 0x026258  stp      x24, x23, [sp, #0x110]                  
    // 0x02625c  stp      x22, x21, [sp, #0x120]                  
    // 0x026260  stp      x20, x19, [sp, #0x130]                  
    // 0x026264  stp      x29, x30, [sp, #0x140]                  
    // 0x026268  add      x29, sp, #0x140                         
    // 0x02626c  mov      x19, x0                                 
    // 0x026270  adrp     x8, #0x8c000                            
    // 0x026274  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x026278  ldr      x8, [x8]                                
    // 0x02627c  stur     x8, [x29, #-0x48]                       
    // 0x026280  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x026284  cbz      x0, #0x262c4                            
    // 0x026288  ldur     x8, [x29, #-0x48]                       
    // 0x02628c  adrp     x9, #0x8c000                            
    // 0x026290  ldr      x9, [x9, #0xf8]                         ; ptr_0x8c0f8
    // 0x026294  ldr      x9, [x9]                                
    // 0x026298  cmp      x9, x8                                  
    // 0x02629c  b.ne     #0x26440                                
    // 0x0262a0  mov      x0, x19                                 
    // 0x0262a4  mov      x2, #0                                  
    // 0x0262a8  ldp      x29, x30, [sp, #0x140]                  
    // 0x0262ac  ldp      x20, x19, [sp, #0x130]                  
}

- (void)点试跑 {   // 0x26574
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 点试跑 即可补全。
    // 0x026574  sub      sp, sp, #0x80                           
    // 0x026578  stp      d9, d8, [sp, #0x30]                     
    // 0x02657c  stp      x24, x23, [sp, #0x40]                   
    // 0x026580  stp      x22, x21, [sp, #0x50]                   
    // 0x026584  stp      x20, x19, [sp, #0x60]                   
    // 0x026588  stp      x29, x30, [sp, #0x70]                   
    // 0x02658c  add      x29, sp, #0x70                          
    // 0x026590  mov      x19, x0                                 
    // 0x026594  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x026598  cmp      x0, #1                                  
    // 0x02659c  b.ne     #0x26800                                
    // 0x0265a0  mov      x0, x19                                 
    // 0x0265a4  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x0265a8  mov      x29, x29                                
    // 0x0265ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0265b0  cbz      x0, #0x26800                            
    // 0x0265b4  bl       #0x2ab8c                                ; func_0x2ab8c
    // 0x0265b8  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x0265bc  mov      x29, x29                                
    // 0x0265c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0265c4  mov      x21, x0                                 
    // 0x0265c8  bl       #0x6fee0                                ; [x0 专属] x2, x3, x4, x5, x6, x7
    // 0x0265cc  mov      x22, x0                                 
    // 0x0265d0  bl       #0x2aa44                                ; func_0x2aa44
}

- (void)点标题重命名 {   // 0x26868
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 点标题重命名 即可补全。
    // 0x026868  sub      sp, sp, #0x60                           
    // 0x02686c  stp      x22, x21, [sp, #0x30]                   
    // 0x026870  stp      x20, x19, [sp, #0x40]                   
    // 0x026874  stp      x29, x30, [sp, #0x50]                   
    // 0x026878  add      x29, sp, #0x50                          
    // 0x02687c  mov      x19, x0                                 
    // 0x026880  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x026884  cmp      x0, #1                                  
    // 0x026888  b.ne     #0x26998                                
    // 0x02688c  mov      x0, x19                                 
    // 0x026890  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x026894  mov      x29, x29                                
    // 0x026898  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02689c  mov      x20, x0                                 
    // 0x0268a0  bl       #0x69040                                ; _objc_release
    // 0x0268a4  cbz      x20, #0x26998                           
    // 0x0268a8  mov      x0, x19                                 
    // 0x0268ac  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x0268b0  mov      x29, x29                                
    // 0x0268b4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0268b8  bl       #0x2ad00                                ; func_0x2ad00
    // 0x0268bc  mov      x21, x0                                 
    // 0x0268c0  bl       #0x2aa3c                                ; func_0x2aa3c
    // 0x0268c4  cbz      w21, #0x26900                           
}

- (id)显示组列表 {   // 0x26a40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 显示组列表 即可补全。
    // 0x026a40  sub      sp, sp, #0x130                          
    // 0x026a44  stp      x28, x27, [sp, #0xd0]                   
    // 0x026a48  stp      x26, x25, [sp, #0xe0]                   
    // 0x026a4c  stp      x24, x23, [sp, #0xf0]                   
    // 0x026a50  stp      x22, x21, [sp, #0x100]                  
    // 0x026a54  stp      x20, x19, [sp, #0x110]                  
    // 0x026a58  stp      x29, x30, [sp, #0x120]                  
    // 0x026a5c  add      x29, sp, #0x120                         
    // 0x026a60  adrp     x8, #0x8c000                            
    // 0x026a64  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x026a68  ldr      x8, [x8]                                
    // 0x026a6c  stur     x8, [x29, #-0x60]                       
    // 0x026a70  adrp     x8, #0xad000                            
    // 0x026a74  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x026a78  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x026a7c  mov      x29, x29                                
    // 0x026a80  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x026a84  mov      x19, x0                                 
    // 0x026a88  movi     v0.16b, #0                              
    // 0x026a8c  stp      q0, q0, [sp]                            
    // 0x026a90  stp      q0, q0, [sp, #0x20]                     
    // 0x026a94  adrp     x8, #0xad000                            
    // 0x026a98  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x026a9c  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
}

- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection {   // 0x26bdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 tableView:numberOfRowsInSection: 即可补全。
    // 0x026bdc  stp      x24, x23, [sp, #-0x40]!                 
    // 0x026be0  stp      x22, x21, [sp, #0x10]                   
    // 0x026be4  stp      x20, x19, [sp, #0x20]                   
    // 0x026be8  stp      x29, x30, [sp, #0x30]                   
    // 0x026bec  add      x29, sp, #0x30                          
    // 0x026bf0  mov      x20, x0                                 
    // 0x026bf4  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x026bf8  cbz      x0, #0x26c64                            
    // 0x026bfc  adrp     x8, #0xad000                            
    // 0x026c00  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x026c04  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x026c08  mov      x29, x29                                
    // 0x026c0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x026c10  mov      x19, x0                                 
    // 0x026c14  mov      x0, x20                                 
    // 0x026c18  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x026c1c  mov      x29, x29                                
    // 0x026c20  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x026c24  mov      x21, x0                                 
    // 0x026c28  bl       #0x727c0                                ; [x0 标识] x2, x3, x4, x5, x6, x7
    // 0x026c2c  mov      x29, x29                                
    // 0x026c30  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x026c34  mov      x22, x0                                 
    // 0x026c38  mov      x0, x19                                 
}

- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath {   // 0x26c9c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 tableView:cellForRowAtIndexPath: 即可补全。
    // 0x026c9c  sub      sp, sp, #0x190                          
    // 0x026ca0  stp      d9, d8, [sp, #0x120]                    
    // 0x026ca4  stp      x28, x27, [sp, #0x130]                  
    // 0x026ca8  stp      x26, x25, [sp, #0x140]                  
    // 0x026cac  stp      x24, x23, [sp, #0x150]                  
    // 0x026cb0  stp      x22, x21, [sp, #0x160]                  
    // 0x026cb4  stp      x20, x19, [sp, #0x170]                  
    // 0x026cb8  stp      x29, x30, [sp, #0x180]                  
    // 0x026cbc  add      x29, sp, #0x180                         
    // 0x026cc0  mov      x20, x3                                 
    // 0x026cc4  mov      x21, x0                                 
    // 0x026cc8  adrp     x8, #0x8c000                            
    // 0x026ccc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x026cd0  ldr      x8, [x8]                                
    // 0x026cd4  stur     x8, [x29, #-0x70]                       
    // 0x026cd8  bl       #0x2ab10                                ; func_0x2ab10
    // 0x026cdc  mov      x28, x0                                 
    // 0x026ce0  bl       #0x2ab08                                ; func_0x2ab08
    // 0x026ce4  mov      x22, x0                                 
    // 0x026ce8  adrp     x2, #0x90000                            
    // 0x026cec  add      x2, x2, #0x370                          
    // 0x026cf0  mov      x0, x28                                 
    // 0x026cf4  mov      x3, x22                                 
    // 0x026cf8  bl       #0x6aa20                                ; [x0 dequeueReusableCellWithIdentifier:forIndexPath:] x2, x0, x4, x5, x6, x7
}

- (id)成功行为名:(long long)成功行为名 {   // 0x28350
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 成功行为名: 即可补全。
    // 0x028350  sub      x8, x2, #1                              
    // 0x028354  cmp      x8, #3                                  
    // 0x028358  b.hi     #0x2836c                                
    // 0x02835c  adrp     x9, #0x8d000                            
    // 0x028360  add      x9, x9, #0x2f8                          
    // 0x028364  ldr      x0, [x9, x8, lsl #3]                    
    // 0x028368  ret                                              
    // 0x02836c  adrp     x0, #0x8f000                            
    // 0x028370  add      x0, x0, #0x310                          
    // 0x028374  ret                                              
}

- (id)组行控件:(id)组行控件 {   // 0x28378
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 组行控件: 即可补全。
    // 0x028378  sub      sp, sp, #0xa0                           
    // 0x02837c  stp      x24, x23, [sp, #0x60]                   
    // 0x028380  stp      x22, x21, [sp, #0x70]                   
    // 0x028384  stp      x20, x19, [sp, #0x80]                   
    // 0x028388  stp      x29, x30, [sp, #0x90]                   
    // 0x02838c  add      x29, sp, #0x90                          
    // 0x028390  mov      x19, x0                                 
    // 0x028394  adrp     x8, #0xad000                            
    // 0x028398  ldr      x21, [x8, #0x1b0]                       ; class(?0x0)
    // 0x02839c  bl       #0x2ab10                                ; func_0x2ab10
    // 0x0283a0  mov      x20, x0                                 
    // 0x0283a4  mov      x0, x21                                 
    // 0x0283a8  bl       #0x68f5c                                ; _objc_alloc
    // 0x0283ac  bl       #0x2abe0                                ; func_0x2abe0
    // 0x0283b0  mov      x21, x0                                 
    // 0x0283b4  adrp     x8, #0xad000                            
    // 0x0283b8  ldr      x0, [x8, #0x310]                        ; class(?0x0)
    // 0x0283bc  bl       #0x68f5c                                ; _objc_alloc
    // 0x0283c0  mov      x8, #0x4047000000000000                 
    // 0x0283c4  fmov     d0, x8                                  
    // 0x0283c8  adrp     x8, #0x7c000                            
    // 0x0283cc  ldr      d2, [x8, #0x580]                        ; ptr_0x7c580
    // 0x0283d0  bl       #0x2ad68                                ; func_0x2ad68
    // 0x0283d4  bl       #0x2ac1c                                ; func_0x2ac1c
}

- (id)动作行控件:(id)动作行控件 录制组:(BOOL)录制组 {   // 0x28494
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 动作行控件:录制组: 即可补全。
    // 0x028494  sub      sp, sp, #0xa0                           
    // 0x028498  stp      x24, x23, [sp, #0x60]                   
    // 0x02849c  stp      x22, x21, [sp, #0x70]                   
    // 0x0284a0  stp      x20, x19, [sp, #0x80]                   
    // 0x0284a4  stp      x29, x30, [sp, #0x90]                   
    // 0x0284a8  add      x29, sp, #0x90                          
    // 0x0284ac  mov      x20, x3                                 
    // 0x0284b0  mov      x21, x0                                 
    // 0x0284b4  adrp     x8, #0xad000                            
    // 0x0284b8  ldr      x22, [x8, #0x1b0]                       ; class(?0x0)
    // 0x0284bc  bl       #0x2ab10                                ; func_0x2ab10
    // 0x0284c0  mov      x19, x0                                 
    // 0x0284c4  mov      x0, x22                                 
    // 0x0284c8  bl       #0x68f5c                                ; _objc_alloc
    // 0x0284cc  tbz      w20, #0, #0x285a4                       
    // 0x0284d0  bl       #0x2abe0                                ; func_0x2abe0
    // 0x0284d4  mov      x20, x0                                 
    // 0x0284d8  adrp     x8, #0xad000                            
    // 0x0284dc  ldr      x0, [x8, #0x310]                        ; class(?0x0)
    // 0x0284e0  bl       #0x68f5c                                ; _objc_alloc
    // 0x0284e4  mov      x8, #0x4047000000000000                 
    // 0x0284e8  fmov     d0, x8                                  
    // 0x0284ec  adrp     x8, #0x7c000                            
    // 0x0284f0  ldr      d2, [x8, #0x580]                        ; ptr_0x7c580
}

- (id)排序按钮:(id)排序按钮 上:(BOOL)上 {   // 0x2861c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 排序按钮:上: 即可补全。
    // 0x02861c  stp      x24, x23, [sp, #-0x40]!                 
    // 0x028620  stp      x22, x21, [sp, #0x10]                   
    // 0x028624  stp      x20, x19, [sp, #0x20]                   
    // 0x028628  stp      x29, x30, [sp, #0x30]                   
    // 0x02862c  add      x29, sp, #0x30                          
    // 0x028630  mov      x21, x3                                 
    // 0x028634  mov      x19, x0                                 
    // 0x028638  adrp     x8, #0xad000                            
    // 0x02863c  ldr      x20, [x8, #0x2e8]                       ; class(?0x0)
    // 0x028640  bl       #0x2ab10                                ; func_0x2ab10
    // 0x028644  bl       #0x2ac1c                                ; func_0x2ac1c
    // 0x028648  mov      w2, #1                                  
    // 0x02864c  bl       #0x6a380                                ; [x0 buttonWithType:] x2, x3, x4, x5, x6, x7
    // 0x028650  mov      x29, x29                                
    // 0x028654  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x028658  mov      x20, x0                                 
    // 0x02865c  adrp     x8, #0x90000                            
    // 0x028660  add      x8, x8, #0xb10                          
    // 0x028664  adrp     x9, #0x90000                            
    // 0x028668  add      x9, x9, #0xaf0                          
    // 0x02866c  cmp      w21, #0                                 
    // 0x028670  csel     x23, x9, x8, ne                         
    // 0x028674  fmov     d0, #27.00000000                        
    // 0x028678  fmov     d1, #1.00000000                         
}

- (void)组开关:(id)组开关 {   // 0x28760
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 组开关: 即可补全。
    // 0x028760  stp      x22, x21, [sp, #-0x30]!                 
    // 0x028764  stp      x20, x19, [sp, #0x10]                   
    // 0x028768  stp      x29, x30, [sp, #0x20]                   
    // 0x02876c  add      x29, sp, #0x20                          
    // 0x028770  mov      x21, x0                                 
    // 0x028774  bl       #0x2ab10                                ; func_0x2ab10
    // 0x028778  mov      x19, x0                                 
    // 0x02877c  adrp     x1, #0x75000                            
    // 0x028780  add      x1, x1, #0xbb8                          
    // 0x028784  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x028788  mov      x29, x29                                
    // 0x02878c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x028790  mov      x20, x0                                 
    // 0x028794  cbz      x0, #0x287e0                            
    // 0x028798  adrp     x8, #0xad000                            
    // 0x02879c  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x0287a0  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x0287a4  mov      x29, x29                                
    // 0x0287a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0287ac  bl       #0x2ad18                                ; func_0x2ad18
    // 0x0287b0  mov      x3, x0                                  
    // 0x0287b4  mov      x0, x22                                 
    // 0x0287b8  mov      x2, x20                                 
    // 0x0287bc  bl       #0x737c0                                ; [x22 设置组开关:开:] x0, class(CQStore), x4, x5, x6, x7
}

- (void)录制动作开关:(id)录制动作开关 {   // 0x287f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 录制动作开关: 即可补全。
    // 0x0287f0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0287f4  stp      x20, x19, [sp, #0x10]                   
    // 0x0287f8  stp      x29, x30, [sp, #0x20]                   
    // 0x0287fc  add      x29, sp, #0x20                          
    // 0x028800  mov      x21, x0                                 
    // 0x028804  bl       #0x2ab10                                ; func_0x2ab10
    // 0x028808  mov      x19, x0                                 
    // 0x02880c  adrp     x1, #0x75000                            
    // 0x028810  add      x1, x1, #0xbc8                          
    // 0x028814  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x028818  mov      x29, x29                                
    // 0x02881c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x028820  mov      x20, x0                                 
    // 0x028824  cbz      x0, #0x28870                            
    // 0x028828  adrp     x8, #0xad000                            
    // 0x02882c  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x028830  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x028834  mov      x29, x29                                
    // 0x028838  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02883c  bl       #0x2ad18                                ; func_0x2ad18
    // 0x028840  mov      x3, x0                                  
    // 0x028844  mov      x0, x22                                 
    // 0x028848  mov      x2, x20                                 
    // 0x02884c  bl       #0x73760                                ; [x22 设置动作开关:开:] x0, class(CQStore), x4, x5, x6, x7
}

- (void)排序:(id)排序 {   // 0x28880
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 排序: 即可补全。
    // 0x028880  sub      sp, sp, #0x80                           
    // 0x028884  stp      x28, x27, [sp, #0x20]                   
    // 0x028888  stp      x26, x25, [sp, #0x30]                   
    // 0x02888c  stp      x24, x23, [sp, #0x40]                   
    // 0x028890  stp      x22, x21, [sp, #0x50]                   
    // 0x028894  stp      x20, x19, [sp, #0x60]                   
    // 0x028898  stp      x29, x30, [sp, #0x70]                   
    // 0x02889c  add      x29, sp, #0x70                          
    // 0x0288a0  mov      x19, x0                                 
    // 0x0288a4  bl       #0x2ab10                                ; func_0x2ab10
    // 0x0288a8  mov      x27, x0                                 
    // 0x0288ac  adrp     x1, #0x75000                            
    // 0x0288b0  add      x1, x1, #0xbd9                          
    // 0x0288b4  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x0288b8  mov      x29, x29                                
    // 0x0288bc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0288c0  mov      x20, x0                                 
    // 0x0288c4  adrp     x1, #0x75000                            
    // 0x0288c8  add      x1, x1, #0xbe7                          
    // 0x0288cc  mov      x0, x27                                 
    // 0x0288d0  bl       #0x68fe0                                ; _objc_getAssociatedObject
    // 0x0288d4  mov      x29, x29                                
    // 0x0288d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0288dc  mov      x21, x0                                 
}

- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath {   // 0x28e84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 tableView:didSelectRowAtIndexPath: 即可补全。
    // 0x028e84  sub      sp, sp, #0x80                           
    // 0x028e88  stp      x26, x25, [sp, #0x30]                   
    // 0x028e8c  stp      x24, x23, [sp, #0x40]                   
    // 0x028e90  stp      x22, x21, [sp, #0x50]                   
    // 0x028e94  stp      x20, x19, [sp, #0x60]                   
    // 0x028e98  stp      x29, x30, [sp, #0x70]                   
    // 0x028e9c  add      x29, sp, #0x70                          
    // 0x028ea0  mov      x20, x3                                 
    // 0x028ea4  mov      x21, x0                                 
    // 0x028ea8  bl       #0x2ab10                                ; func_0x2ab10
    // 0x028eac  mov      x19, x0                                 
    // 0x028eb0  bl       #0x2ab08                                ; func_0x2ab08
    // 0x028eb4  mov      x20, x0                                 
    // 0x028eb8  mov      x0, x21                                 
    // 0x028ebc  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x028ec0  cbz      x0, #0x28f70                            
    // 0x028ec4  adrp     x8, #0xad000                            
    // 0x028ec8  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x028ecc  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x028ed0  mov      x29, x29                                
    // 0x028ed4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x028ed8  mov      x23, x0                                 
    // 0x028edc  mov      x0, x21                                 
    // 0x028ee0  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
}

- (BOOL)tableView:(id)tableView canEditRowAtIndexPath:(id)canEditRowAtIndexPath {   // 0x290f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 tableView:canEditRowAtIndexPath: 即可补全。
    // 0x0290f0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0290f4  stp      x20, x19, [sp, #0x10]                   
    // 0x0290f8  stp      x29, x30, [sp, #0x20]                   
    // 0x0290fc  add      x29, sp, #0x20                          
    // 0x029100  mov      x20, x0                                 
    // 0x029104  mov      x0, x3                                  
    // 0x029108  bl       #0x6904c                                ; _objc_retain
    // 0x02910c  mov      x19, x0                                 
    // 0x029110  mov      x0, x20                                 
    // 0x029114  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x029118  cbz      x0, #0x29124                            
    // 0x02911c  mov      w21, #1                                 
    // 0x029120  b        #0x29184                                
    // 0x029124  mov      x0, x20                                 
    // 0x029128  bl       #0x724e0                                ; [x0 显示组列表] x2, x3, x4, x5, x6, x7
    // 0x02912c  mov      x29, x29                                
    // 0x029130  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x029134  mov      x20, x0                                 
    // 0x029138  bl       #0x2ac14                                ; func_0x2ac14
    // 0x02913c  mov      x21, x0                                 
    // 0x029140  mov      x0, x20                                 
    // 0x029144  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x029148  cmp      x21, x0                                 
    // 0x02914c  b.ge     #0x2917c                                
}

- (void)tableView:(id)tableView commitEditingStyle:(long long)commitEditingStyle forRowAtIndexPath:(id)forRowAtIndexPath {   // 0x2919c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 tableView:commitEditingStyle:forRowAtIndexPath: 即可补全。
    // 0x02919c  sub      sp, sp, #0x1c0                          
    // 0x0291a0  stp      x28, x27, [sp, #0x160]                  
    // 0x0291a4  stp      x26, x25, [sp, #0x170]                  
    // 0x0291a8  stp      x24, x23, [sp, #0x180]                  
    // 0x0291ac  stp      x22, x21, [sp, #0x190]                  
    // 0x0291b0  stp      x20, x19, [sp, #0x1a0]                  
    // 0x0291b4  stp      x29, x30, [sp, #0x1b0]                  
    // 0x0291b8  add      x29, sp, #0x1b0                         
    // 0x0291bc  mov      x20, x4                                 
    // 0x0291c0  mov      x21, x3                                 
    // 0x0291c4  mov      x26, x0                                 
    // 0x0291c8  adrp     x8, #0x8c000                            
    // 0x0291cc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0291d0  ldr      x8, [x8]                                
    // 0x0291d4  stur     x8, [x29, #-0x60]                       
    // 0x0291d8  bl       #0x2ab10                                ; func_0x2ab10
    // 0x0291dc  mov      x22, x0                                 
    // 0x0291e0  bl       #0x2ab08                                ; func_0x2ab08
    // 0x0291e4  mov      x19, x0                                 
    // 0x0291e8  cmp      x21, #1                                 
    // 0x0291ec  b.ne     #0x299d4                                
    // 0x0291f0  mov      x0, x26                                 
    // 0x0291f4  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x0291f8  adrp     x21, #0xad000                           
}

- (void)删除组:(id)删除组 {   // 0x29a30
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 删除组: 即可补全。
    // 0x029a30  stp      x28, x27, [sp, #-0x60]!                 
    // 0x029a34  stp      x26, x25, [sp, #0x10]                   
    // 0x029a38  stp      x24, x23, [sp, #0x20]                   
    // 0x029a3c  stp      x22, x21, [sp, #0x30]                   
    // 0x029a40  stp      x20, x19, [sp, #0x40]                   
    // 0x029a44  stp      x29, x30, [sp, #0x50]                   
    // 0x029a48  add      x29, sp, #0x50                          
    // 0x029a4c  sub      sp, sp, #0x1e0                          
    // 0x029a50  str      x0, [sp, #0x10]                         
    // 0x029a54  adrp     x8, #0x8c000                            
    // 0x029a58  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x029a5c  ldr      x8, [x8]                                
    // 0x029a60  stur     x8, [x29, #-0x60]                       
    // 0x029a64  bl       #0x2ab10                                ; func_0x2ab10
    // 0x029a68  mov      x19, x0                                 
    // 0x029a6c  adrp     x21, #0xad000                           
    // 0x029a70  ldr      x0, [x21, #0xe8]                        ; class(CQStore)
    // 0x029a74  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x029a78  mov      x29, x29                                
    // 0x029a7c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x029a80  mov      x20, x0                                 
    // 0x029a84  str      x19, [sp, #0x18]                        
    // 0x029a88  mov      x0, x19                                 
    // 0x029a8c  bl       #0x727c0                                ; [x0 标识] x2, x3, x4, x5, x6, x7
}

- (void)新增动作 {   // 0x2a07c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 新增动作 即可补全。
    // 0x02a07c  sub      sp, sp, #0x1e0                          
    // 0x02a080  stp      x28, x27, [sp, #0x180]                  
    // 0x02a084  stp      x26, x25, [sp, #0x190]                  
    // 0x02a088  stp      x24, x23, [sp, #0x1a0]                  
    // 0x02a08c  stp      x22, x21, [sp, #0x1b0]                  
    // 0x02a090  stp      x20, x19, [sp, #0x1c0]                  
    // 0x02a094  stp      x29, x30, [sp, #0x1d0]                  
    // 0x02a098  add      x29, sp, #0x1d0                         
    // 0x02a09c  mov      x20, x0                                 
    // 0x02a0a0  adrp     x8, #0x8c000                            
    // 0x02a0a4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x02a0a8  ldr      x8, [x8]                                
    // 0x02a0ac  stur     x8, [x29, #-0x60]                       
    // 0x02a0b0  bl       #0x713e0                                ; [x0 层级] x2, x3, x4, x5, x6, x7
    // 0x02a0b4  cmp      x0, #1                                  
    // 0x02a0b8  b.ne     #0x2a450                                
    // 0x02a0bc  mov      x0, x20                                 
    // 0x02a0c0  bl       #0x71800                                ; [x0 当前组] x2, x3, x4, x5, x6, x7
    // 0x02a0c4  mov      x29, x29                                
    // 0x02a0c8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x02a0cc  mov      x19, x0                                 
    // 0x02a0d0  bl       #0x69040                                ; _objc_release
    // 0x02a0d4  cbz      x19, #0x2a450                           
    // 0x02a0d8  mov      x0, x20                                 
}

- (UITableView *)表 {   // 0x2a8e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 表 即可补全。
    // 0x02a8e0  adrp     x8, #0xad000                            
    // 0x02a8e4  ldrsw    x8, [x8, #0x70c]                        
    // 0x02a8e8  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set表:(UITableView *)set表 {   // 0x2a8ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set表: 即可补全。
    // 0x02a8ec  mov      x1, x2                                  
    // 0x02a8f0  adrp     x8, #0xad000                            
    // 0x02a8f4  ldrsw    x8, [x8, #0x70c]                        
    // 0x02a8f8  b        #0x2aa74                                ; func_0x2aa74
}

- (UILabel *)标题 {   // 0x2a8fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 标题 即可补全。
    // 0x02a8fc  adrp     x8, #0xad000                            
    // 0x02a900  ldrsw    x8, [x8, #0x710]                        
    // 0x02a904  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set标题:(UILabel *)set标题 {   // 0x2a908
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set标题: 即可补全。
    // 0x02a908  mov      x1, x2                                  
    // 0x02a90c  adrp     x8, #0xad000                            
    // 0x02a910  ldrsw    x8, [x8, #0x710]                        
    // 0x02a914  b        #0x2aa74                                ; func_0x2aa74
}

- (UIButton *)左按钮 {   // 0x2a918
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 左按钮 即可补全。
    // 0x02a918  adrp     x8, #0xad000                            
    // 0x02a91c  ldrsw    x8, [x8, #0x714]                        
    // 0x02a920  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set左按钮:(UIButton *)set左按钮 {   // 0x2a924
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set左按钮: 即可补全。
    // 0x02a924  mov      x1, x2                                  
    // 0x02a928  adrp     x8, #0xad000                            
    // 0x02a92c  ldrsw    x8, [x8, #0x714]                        
    // 0x02a930  b        #0x2aa74                                ; func_0x2aa74
}

- (UIButton *)右按钮 {   // 0x2a934
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 右按钮 即可补全。
    // 0x02a934  adrp     x8, #0xad000                            
    // 0x02a938  ldrsw    x8, [x8, #0x718]                        
    // 0x02a93c  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set右按钮:(UIButton *)set右按钮 {   // 0x2a940
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set右按钮: 即可补全。
    // 0x02a940  mov      x1, x2                                  
    // 0x02a944  adrp     x8, #0xad000                            
    // 0x02a948  ldrsw    x8, [x8, #0x718]                        
    // 0x02a94c  b        #0x2aa74                                ; func_0x2aa74
}

- (UIButton *)新增动作按钮 {   // 0x2a950
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 新增动作按钮 即可补全。
    // 0x02a950  adrp     x8, #0xad000                            
    // 0x02a954  ldrsw    x8, [x8, #0x71c]                        
    // 0x02a958  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set新增动作按钮:(UIButton *)set新增动作按钮 {   // 0x2a95c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set新增动作按钮: 即可补全。
    // 0x02a95c  mov      x1, x2                                  
    // 0x02a960  adrp     x8, #0xad000                            
    // 0x02a964  ldrsw    x8, [x8, #0x71c]                        
    // 0x02a968  b        #0x2aa74                                ; func_0x2aa74
}

- (UIButton *)试跑按钮 {   // 0x2a96c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 试跑按钮 即可补全。
    // 0x02a96c  adrp     x8, #0xad000                            
    // 0x02a970  ldrsw    x8, [x8, #0x720]                        
    // 0x02a974  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set试跑按钮:(UIButton *)set试跑按钮 {   // 0x2a978
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set试跑按钮: 即可补全。
    // 0x02a978  mov      x1, x2                                  
    // 0x02a97c  adrp     x8, #0xad000                            
    // 0x02a980  ldrsw    x8, [x8, #0x720]                        
    // 0x02a984  b        #0x2aa74                                ; func_0x2aa74
}

- (long long)层级 {   // 0x2a988
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 层级 即可补全。
    // 0x02a988  adrp     x8, #0xad000                            
    // 0x02a98c  ldrsw    x8, [x8, #0x724]                        
    // 0x02a990  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set层级:(long long)set层级 {   // 0x2a994
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set层级: 即可补全。
    // 0x02a994  adrp     x8, #0xad000                            
    // 0x02a998  ldrsw    x8, [x8, #0x724]                        
    // 0x02a99c  str      x2, [x0, x8]                            
    // 0x02a9a0  ret                                              
}

- (动作组模型 *)当前组 {   // 0x2a9a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 当前组 即可补全。
    // 0x02a9a4  adrp     x8, #0xad000                            
    // 0x02a9a8  ldrsw    x8, [x8, #0x728]                        
    // 0x02a9ac  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set当前组:(动作组模型 *)set当前组 {   // 0x2a9b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 任务编辑视图 set当前组: 即可补全。
    // 0x02a9b0  mov      x1, x2                                  
    // 0x02a9b4  adrp     x8, #0xad000                            
    // 0x02a9b8  ldrsw    x8, [x8, #0x728]                        
    // 0x02a9bc  b        #0x2aa74                                ; func_0x2aa74
}

@end