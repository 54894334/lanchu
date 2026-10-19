//
//  多点选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 多点选择视图

- (void)构建参数 {   // 0x44eb4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 构建参数 即可补全。
    // 0x044eb4  mov      x2, x30                                 
    // 0x044eb8  bl       #0x61160                                ; func_0x61160
    // 0x044ebc  mov      x30, x2                                 
    // 0x044ec0  stp      x29, x30, [sp, #0x140]                  
    // 0x044ec4  add      x29, sp, #0x140                         
    // 0x044ec8  mov      x20, x0                                 
    // 0x044ecc  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x044ed0  mov      x29, x29                                
    // 0x044ed4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x044ed8  mov      x19, x0                                 
    // 0x044edc  mov      w2, #9                                  
    // 0x044ee0  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x044ee4  bl       #0x601b8                                ; func_0x601b8
    // 0x044ee8  sub      x0, x29, #0x70                          
    // 0x044eec  bl       #0x60dfc                                ; func_0x60dfc
    // 0x044ef0  adrp     x27, #0x8c000                           
    // 0x044ef4  ldr      x27, [x27, #0xd8]                       ; ptr_0x8c0d8
    // 0x044ef8  stur     x27, [x29, #-0x98]                      
    // 0x044efc  adrp     x8, #0x7b000                            
    // 0x044f00  ldr      d9, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x044f04  stur     d9, [x29, #-0x90]                       
    // 0x044f08  adrp     x8, #0x45000                            
    // 0x044f0c  add      x8, x8, #0x224                          
    // 0x044f10  adrp     x28, #0x8d000                           
}

- (BOOL)显示标记 {   // 0x45334
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 显示标记 即可补全。
    // 0x045334  b        #0x609e0                                ; func_0x609e0
}

- (id)新建标记视图 {   // 0x45338
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 新建标记视图 即可补全。
    // 0x045338  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04533c  stp      x29, x30, [sp, #0x10]                   
    // 0x045340  add      x29, sp, #0x10                          
    // 0x045344  adrp     x8, #0xad000                            
    // 0x045348  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x04534c  bl       #0x68f5c                                ; _objc_alloc
    // 0x045350  adrp     x8, #0x8c000                            
    // 0x045354  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x045358  bl       #0x6067c                                ; func_0x6067c
    // 0x04535c  mov      x19, x0                                 
    // 0x045360  bl       #0x60620                                ; func_0x60620
    // 0x045364  mov      x0, x19                                 
    // 0x045368  bl       #0x60424                                ; func_0x60424
    // 0x04536c  mov      x0, x19                                 
    // 0x045370  ldp      x29, x30, [sp, #0x10]                   
    // 0x045374  b        #0x602f8                                ; func_0x602f8
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x45378
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 hitTest:withEvent: 即可补全。
    // 0x045378  sub      sp, sp, #0x140                          
    // 0x04537c  stp      d9, d8, [sp, #0xe0]                     
    // 0x045380  stp      x26, x25, [sp, #0xf0]                   
    // 0x045384  stp      x24, x23, [sp, #0x100]                  
    // 0x045388  stp      x22, x21, [sp, #0x110]                  
    // 0x04538c  stp      x20, x19, [sp, #0x120]                  
    // 0x045390  stp      x29, x30, [sp, #0x130]                  
    // 0x045394  add      x29, sp, #0x130                         
    // 0x045398  bl       #0x610d4                                ; func_0x610d4
    // 0x04539c  adrp     x8, #0x8c000                            
    // 0x0453a0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0453a4  ldr      x8, [x8]                                
    // 0x0453a8  stur     x8, [x29, #-0x58]                       
    // 0x0453ac  bl       #0x60364                                ; func_0x60364
    // 0x0453b0  bl       #0x61b08                                ; func_0x61b08
    // 0x0453b4  bl       #0x72780                                ; [x0 标记们] x2, x3, x4, x5, x6, x7
    // 0x0453b8  mov      x29, x29                                
    // 0x0453bc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0453c0  mov      x21, x0                                 
    // 0x0453c4  add      x2, sp, #0x10                           
    // 0x0453c8  add      x3, sp, #0x58                           
    // 0x0453cc  bl       #0x6020c                                ; func_0x6020c
    // 0x0453d0  cbz      x0, #0x45434                            
    // 0x0453d4  mov      x22, x0                                 
}

- (void)拖动点:(id)拖动点 {   // 0x454a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 拖动点: 即可补全。
    // 0x0454a0  stp      x24, x23, [sp, #-0x40]!                 
    // 0x0454a4  stp      x22, x21, [sp, #0x10]                   
    // 0x0454a8  stp      x20, x19, [sp, #0x20]                   
    // 0x0454ac  stp      x29, x30, [sp, #0x30]                   
    // 0x0454b0  add      x29, sp, #0x30                          
    // 0x0454b4  mov      x20, x0                                 
    // 0x0454b8  bl       #0x60364                                ; func_0x60364
    // 0x0454bc  mov      x19, x0                                 
    // 0x0454c0  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x0454c4  mov      x29, x29                                
    // 0x0454c8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0454cc  mov      x22, x0                                 
    // 0x0454d0  bl       #0x6fa60                                ; [x0 tag] x2, x3, x4, x5, x6, x7
    // 0x0454d4  mov      x21, x0                                 
    // 0x0454d8  bl       #0x6019c                                ; func_0x6019c
    // 0x0454dc  mov      x0, x20                                 
    // 0x0454e0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0454e4  mov      x29, x29                                
    // 0x0454e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0454ec  mov      x23, x0                                 
    // 0x0454f0  bl       #0x71180                                ; [x0 多点坐标组] x2, x3, x4, x5, x6, x7
    // 0x0454f4  mov      x29, x29                                
    // 0x0454f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0454fc  bl       #0x61f8c                                ; func_0x61f8c
}

- (id)新建点标记:(long long)新建点标记 {   // 0x45584
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 新建点标记: 即可补全。
    // 0x045584  sub      sp, sp, #0x60                           
    // 0x045588  stp      d9, d8, [sp, #0x10]                     
    // 0x04558c  stp      x24, x23, [sp, #0x20]                   
    // 0x045590  stp      x22, x21, [sp, #0x30]                   
    // 0x045594  stp      x20, x19, [sp, #0x40]                   
    // 0x045598  stp      x29, x30, [sp, #0x50]                   
    // 0x04559c  add      x29, sp, #0x50                          
    // 0x0455a0  mov      x21, x2                                 
    // 0x0455a4  mov      x19, x0                                 
    // 0x0455a8  adrp     x8, #0xad000                            
    // 0x0455ac  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x0455b0  bl       #0x68f5c                                ; _objc_alloc
    // 0x0455b4  mov      x8, #0x4041000000000000                 
    // 0x0455b8  fmov     d8, x8                                  
    // 0x0455bc  bl       #0x606b4                                ; func_0x606b4
    // 0x0455c0  mov      x20, x0                                 
    // 0x0455c4  bl       #0x60ffc                                ; func_0x60ffc
    // 0x0455c8  adrp     x8, #0xad000                            
    // 0x0455cc  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x0455d0  bl       #0x6a280                                ; [class(?0x0) blackColor] x2, x3, x4, x5, x6, x7
    // 0x0455d4  mov      x29, x29                                
    // 0x0455d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0455dc  mov      x22, x0                                 
    // 0x0455e0  adrp     x8, #0x7b000                            
}

- (void)重设数量:(long long)重设数量 {   // 0x4574c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 重设数量: 即可补全。
    // 0x04574c  stp      d11, d10, [sp, #-0x60]!                 
    // 0x045750  stp      d9, d8, [sp, #0x10]                     
    // 0x045754  stp      x24, x23, [sp, #0x20]                   
    // 0x045758  stp      x22, x21, [sp, #0x30]                   
    // 0x04575c  stp      x20, x19, [sp, #0x40]                   
    // 0x045760  stp      x29, x30, [sp, #0x50]                   
    // 0x045764  add      x29, sp, #0x50                          
    // 0x045768  mov      x20, x2                                 
    // 0x04576c  mov      x19, x0                                 
    // 0x045770  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x045774  mov      x29, x29                                
    // 0x045778  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04577c  mov      x22, x0                                 
    // 0x045780  bl       #0x71180                                ; [x0 多点坐标组] x2, x3, x4, x5, x6, x7
    // 0x045784  mov      x29, x29                                
    // 0x045788  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04578c  bl       #0x61990                                ; func_0x61990
    // 0x045790  mov      x24, x0                                 
    // 0x045794  cbz      x0, #0x457a4                            
    // 0x045798  mov      x0, x24                                 
    // 0x04579c  bl       #0x6904c                                ; _objc_retain
    // 0x0457a0  b        #0x457b8                                
    // 0x0457a4  adrp     x8, #0xad000                            
    // 0x0457a8  ldr      x0, [x8, #0x170]                        ; class(?0x0)
}

- (void)同步标记 {   // 0x45878
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 同步标记 即可补全。
    // 0x045878  stp      d9, d8, [sp, #-0x70]!                   
    // 0x04587c  mov      x2, x30                                 
    // 0x045880  bl       #0x61880                                ; func_0x61880
    // 0x045884  mov      x30, x2                                 
    // 0x045888  stp      x29, x30, [sp, #0x60]                   
    // 0x04588c  add      x29, sp, #0x60                          
    // 0x045890  sub      sp, sp, #0x190                          
    // 0x045894  mov      x19, x0                                 
    // 0x045898  adrp     x8, #0x8c000                            
    // 0x04589c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0458a0  ldr      x8, [x8]                                
    // 0x0458a4  stur     x8, [x29, #-0x70]                       
    // 0x0458a8  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x0458ac  mov      x29, x29                                
    // 0x0458b0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0458b4  mov      x21, x0                                 
    // 0x0458b8  bl       #0x71180                                ; [x0 多点坐标组] x30, x3, x4, x5, x6, x7
    // 0x0458bc  mov      x29, x29                                
    // 0x0458c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0458c4  bl       #0x61188                                ; func_0x61188
    // 0x0458c8  mov      x20, x0                                 
    // 0x0458cc  bl       #0x6019c                                ; func_0x6019c
    // 0x0458d0  bl       #0x6018c                                ; func_0x6018c
    // 0x0458d4  mov      x0, x19                                 
}

- (void)摆放点标记:(long long)摆放点标记 {   // 0x45bac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 摆放点标记: 即可补全。
    // 0x045bac  sub      sp, sp, #0x80                           
    // 0x045bb0  stp      d11, d10, [sp, #0x20]                   
    // 0x045bb4  stp      d9, d8, [sp, #0x30]                     
    // 0x045bb8  stp      x24, x23, [sp, #0x40]                   
    // 0x045bbc  stp      x22, x21, [sp, #0x50]                   
    // 0x045bc0  stp      x20, x19, [sp, #0x60]                   
    // 0x045bc4  stp      x29, x30, [sp, #0x70]                   
    // 0x045bc8  add      x29, sp, #0x70                          
    // 0x045bcc  tbnz     x2, #0x3f, #0x45d40                     
    // 0x045bd0  mov      x19, x2                                 
    // 0x045bd4  mov      x20, x0                                 
    // 0x045bd8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x045bdc  mov      x29, x29                                
    // 0x045be0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x045be4  mov      x21, x0                                 
    // 0x045be8  bl       #0x71180                                ; [x0 多点坐标组] x2, x3, x4, x5, x6, x7
    // 0x045bec  mov      x29, x29                                
    // 0x045bf0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x045bf4  bl       #0x61188                                ; func_0x61188
    // 0x045bf8  cmp      x0, x19                                 
    // 0x045bfc  b.le     #0x45d5c                                
    // 0x045c00  mov      x0, x20                                 
    // 0x045c04  bl       #0x72780                                ; [x0 标记们] x2, x3, x4, x5, x6, x7
    // 0x045c08  mov      x29, x29                                
}

- (void)刷新准星 {   // 0x45d80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 刷新准星 即可补全。
    // 0x045d80  sub      sp, sp, #0x30                           
    // 0x045d84  stp      x20, x19, [sp, #0x10]                   
    // 0x045d88  stp      x29, x30, [sp, #0x20]                   
    // 0x045d8c  add      x29, sp, #0x20                          
    // 0x045d90  mov      x19, x0                                 
    // 0x045d94  adrp     x8, #0xad000                            
    // 0x045d98  ldr      x8, [x8, #0x558]                        ; class(多点选择视图)
    // 0x045d9c  stp      x0, x8, [sp]                            
    // 0x045da0  adrp     x8, #0xab000                            
    // 0x045da4  ldr      x1, [x8, #0xb80]                        ; SEL("刷新准星")
    // 0x045da8  bl       #0x60a00                                ; func_0x60a00
    // 0x045dac  bl       #0x60e90                                ; func_0x60e90
    // 0x045db0  ldp      x29, x30, [sp, #0x20]                   
    // 0x045db4  b        #0x60ccc                                ; func_0x60ccc
}

- (NSMutableArray *)标记们 {   // 0x45db8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 标记们 即可补全。
    // 0x045db8  adrp     x8, #0xad000                            
    // 0x045dbc  ldrsw    x8, [x8, #0xadc]                        
    // 0x045dc0  b        #0x601f8                                ; func_0x601f8
}

- (void)set标记们:(NSMutableArray *)set标记们 {   // 0x45dc4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 set标记们: 即可补全。
    // 0x045dc4  mov      x1, x2                                  
    // 0x045dc8  adrp     x8, #0xad000                            
    // 0x045dcc  ldrsw    x8, [x8, #0xadc]                        
    // 0x045dd0  b        #0x60194                                ; func_0x60194
}

- (NSMutableArray *)标签们 {   // 0x45dd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 标签们 即可补全。
    // 0x045dd4  adrp     x8, #0xad000                            
    // 0x045dd8  ldrsw    x8, [x8, #0xae0]                        
    // 0x045ddc  b        #0x601f8                                ; func_0x601f8
}

- (void)set标签们:(NSMutableArray *)set标签们 {   // 0x45de0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 多点选择视图 set标签们: 即可补全。
    // 0x045de0  mov      x1, x2                                  
    // 0x045de4  adrp     x8, #0xad000                            
    // 0x045de8  ldrsw    x8, [x8, #0xae0]                        
    // 0x045dec  b        #0x60194                                ; func_0x60194
}

@end