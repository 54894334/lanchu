//
//  CQOverlay.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQOverlay

- (id)init {   // 0xd668
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay init 即可补全。
    // 0x00d668  sub      sp, sp, #0x30                           
    // 0x00d66c  stp      x20, x19, [sp, #0x10]                   
    // 0x00d670  stp      x29, x30, [sp, #0x20]                   
    // 0x00d674  add      x29, sp, #0x20                          
    // 0x00d678  adrp     x8, #0xad000                            
    // 0x00d67c  ldr      x8, [x8, #0x4c0]                        ; class(CQOverlay)
    // 0x00d680  stp      x0, x8, [sp]                            
    // 0x00d684  adrp     x8, #0xaa000                            
    // 0x00d688  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x00d68c  mov      x0, sp                                  
    // 0x00d690  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x00d694  mov      x19, x0                                 
    // 0x00d698  cbz      x0, #0xd6c0                             
    // 0x00d69c  adrp     x8, #0xad000                            
    // 0x00d6a0  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x00d6a4  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x00d6a8  mov      x29, x29                                
    // 0x00d6ac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00d6b0  ldr      x8, [x19, #0x18]                        
    // 0x00d6b4  str      x0, [x19, #0x18]                        
    // 0x00d6b8  mov      x0, x8                                  
    // 0x00d6bc  bl       #0x69040                                ; _objc_release
    // 0x00d6c0  mov      x0, x19                                 
    // 0x00d6c4  ldp      x29, x30, [sp, #0x20]                   
}

- (UIWindow *)窗口 {   // 0xd6d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 窗口 即可补全。
    // 0x00d6d4  b        #0x72a20                                ; [x0 浮窗] x2, x3, x4, x5, x6, x7
}

- (UIView *)根视图 {   // 0xd6d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 根视图 即可补全。
    // 0x00d6d8  stp      x22, x21, [sp, #-0x30]!                 
    // 0x00d6dc  stp      x20, x19, [sp, #0x10]                   
    // 0x00d6e0  stp      x29, x30, [sp, #0x20]                   
    // 0x00d6e4  add      x29, sp, #0x20                          
    // 0x00d6e8  bl       #0x72a20                                ; [x0 浮窗] x2, x3, x4, x5, x6, x7
    // 0x00d6ec  mov      x29, x29                                
    // 0x00d6f0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00d6f4  mov      x19, x0                                 
    // 0x00d6f8  bl       #0x6bb40                                ; [x0 rootViewController] x2, x3, x4, x5, x6, x7
    // 0x00d6fc  mov      x29, x29                                
    // 0x00d700  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00d704  mov      x20, x0                                 
    // 0x00d708  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x00d70c  mov      x29, x29                                
    // 0x00d710  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00d714  mov      x21, x0                                 
    // 0x00d718  bl       #0xf48c                                 ; func_0xf48c
    // 0x00d71c  bl       #0xf4b0                                 ; func_0xf4b0
    // 0x00d720  mov      x0, x21                                 
    // 0x00d724  ldp      x29, x30, [sp, #0x20]                   
    // 0x00d728  ldp      x20, x19, [sp, #0x10]                   
    // 0x00d72c  ldp      x22, x21, [sp], #0x30                   
    // 0x00d730  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)安装 {   // 0xda60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 安装 即可补全。
    // 0x00da60  sub      sp, sp, #0x40                           
    // 0x00da64  stp      x29, x30, [sp, #0x30]                   
    // 0x00da68  add      x29, sp, #0x30                          
    // 0x00da6c  adrp     x8, #0x8c000                            
    // 0x00da70  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00da74  str      x8, [sp, #8]                            
    // 0x00da78  adrp     x8, #0x7b000                            
    // 0x00da7c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00da80  adrp     x8, #0xd000                             
    // 0x00da84  add      x8, x8, #0xaac                          
    // 0x00da88  str      d0, [sp, #0x10]                         
    // 0x00da8c  adrp     x9, #0x8c000                            
    // 0x00da90  add      x9, x9, #0x3c0                          
    // 0x00da94  bl       #0xf558                                 ; func_0xf558
    // 0x00da98  adrp     x0, #0x8c000                            
    // 0x00da9c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00daa0  bl       #0xf518                                 ; func_0xf518
    // 0x00daa4  ldp      x29, x30, [sp, #0x30]                   
    // 0x00daa8  b        #0xf510                                 ; func_0xf510
}

- (void)任务运行状态变更:(id)任务运行状态变更 {   // 0xe494
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 任务运行状态变更: 即可补全。
    // 0x00e494  sub      sp, sp, #0x40                           
    // 0x00e498  stp      x29, x30, [sp, #0x30]                   
    // 0x00e49c  add      x29, sp, #0x30                          
    // 0x00e4a0  adrp     x8, #0x8c000                            
    // 0x00e4a4  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00e4a8  str      x8, [sp, #8]                            
    // 0x00e4ac  adrp     x8, #0x7b000                            
    // 0x00e4b0  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00e4b4  adrp     x8, #0xe000                             
    // 0x00e4b8  add      x8, x8, #0x4e0                          
    // 0x00e4bc  str      d0, [sp, #0x10]                         
    // 0x00e4c0  adrp     x9, #0x8c000                            
    // 0x00e4c4  add      x9, x9, #0x3c0                          
    // 0x00e4c8  bl       #0xf558                                 ; func_0xf558
    // 0x00e4cc  adrp     x0, #0x8c000                            
    // 0x00e4d0  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00e4d4  bl       #0xf518                                 ; func_0xf518
    // 0x00e4d8  ldp      x29, x30, [sp, #0x30]                   
    // 0x00e4dc  b        #0xf510                                 ; func_0xf510
}

- (void)任务进度变更:(id)任务进度变更 {   // 0xe598
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 任务进度变更: 即可补全。
    // 0x00e598  sub      sp, sp, #0x70                           
    // 0x00e59c  stp      x24, x23, [sp, #0x30]                   
    // 0x00e5a0  stp      x22, x21, [sp, #0x40]                   
    // 0x00e5a4  stp      x20, x19, [sp, #0x50]                   
    // 0x00e5a8  stp      x29, x30, [sp, #0x60]                   
    // 0x00e5ac  add      x29, sp, #0x60                          
    // 0x00e5b0  mov      x19, x0                                 
    // 0x00e5b4  mov      x0, x2                                  
    // 0x00e5b8  bl       #0x6fc80                                ; [x2 userInfo] x2, x3, x4, x5, x6, x7
    // 0x00e5bc  mov      x29, x29                                
    // 0x00e5c0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00e5c4  mov      x20, x0                                 
    // 0x00e5c8  adrp     x2, #0x8e000                            
    // 0x00e5cc  add      x2, x2, #0xb50                          
    // 0x00e5d0  bl       #0x6b6c0                                ; [x2 objectForKeyedSubscript:] x2, x3, x4, x5, x6, x7
    // 0x00e5d4  mov      x29, x29                                
    // 0x00e5d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x00e5dc  mov      x21, x0                                 
    // 0x00e5e0  bl       #0x6b140                                ; [x2 integerValue] x2, x3, x4, x5, x6, x7
    // 0x00e5e4  mov      x22, x0                                 
    // 0x00e5e8  bl       #0xf494                                 ; func_0xf494
    // 0x00e5ec  adrp     x2, #0x8e000                            
    // 0x00e5f0  add      x2, x2, #0xb70                          
    // 0x00e5f4  mov      x0, x20                                 
}

- (void)屏幕变化 {   // 0xe6c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 屏幕变化 即可补全。
    // 0x00e6c4  sub      sp, sp, #0x40                           
    // 0x00e6c8  stp      x29, x30, [sp, #0x30]                   
    // 0x00e6cc  add      x29, sp, #0x30                          
    // 0x00e6d0  adrp     x8, #0x8c000                            
    // 0x00e6d4  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00e6d8  str      x8, [sp, #8]                            
    // 0x00e6dc  adrp     x8, #0x7b000                            
    // 0x00e6e0  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00e6e4  adrp     x8, #0xe000                             
    // 0x00e6e8  add      x8, x8, #0x710                          
    // 0x00e6ec  str      d0, [sp, #0x10]                         
    // 0x00e6f0  adrp     x9, #0x8c000                            
    // 0x00e6f4  add      x9, x9, #0x3c0                          
    // 0x00e6f8  bl       #0xf558                                 ; func_0xf558
    // 0x00e6fc  adrp     x0, #0x8c000                            
    // 0x00e700  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00e704  bl       #0xf518                                 ; func_0xf518
    // 0x00e708  ldp      x29, x30, [sp, #0x30]                   
    // 0x00e70c  b        #0xf510                                 ; func_0xf510
}

- (void)弹出面板:(id)弹出面板 {   // 0xe888
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 弹出面板: 即可补全。
    // 0x00e888  sub      sp, sp, #0x50                           
    // 0x00e88c  stp      x20, x19, [sp, #0x30]                   
    // 0x00e890  stp      x29, x30, [sp, #0x40]                   
    // 0x00e894  add      x29, sp, #0x40                          
    // 0x00e898  bl       #0xf5a0                                 ; func_0xf5a0
    // 0x00e89c  adrp     x8, #0x8c000                            
    // 0x00e8a0  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00e8a4  str      x8, [sp]                                
    // 0x00e8a8  adrp     x8, #0x7b000                            
    // 0x00e8ac  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00e8b0  str      d0, [sp, #8]                            
    // 0x00e8b4  adrp     x8, #0xe000                             
    // 0x00e8b8  add      x8, x8, #0x8e8                          
    // 0x00e8bc  adrp     x9, #0x8c000                            
    // 0x00e8c0  add      x9, x9, #0x650                          
    // 0x00e8c4  bl       #0xf5ac                                 ; func_0xf5ac
    // 0x00e8c8  mov      x19, x0                                 
    // 0x00e8cc  adrp     x0, #0x8c000                            
    // 0x00e8d0  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00e8d4  bl       #0xf590                                 ; func_0xf590
    // 0x00e8d8  bl       #0xf550                                 ; func_0xf550
    // 0x00e8dc  bl       #0xf4b0                                 ; func_0xf4b0
    // 0x00e8e0  ldp      x29, x30, [sp, #0x40]                   
    // 0x00e8e4  b        #0xf4c8                                 ; func_0xf4c8
}

- (void)关闭面板 {   // 0xec20
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 关闭面板 即可补全。
    // 0x00ec20  sub      sp, sp, #0x40                           
    // 0x00ec24  stp      x29, x30, [sp, #0x30]                   
    // 0x00ec28  add      x29, sp, #0x30                          
    // 0x00ec2c  adrp     x8, #0x8c000                            
    // 0x00ec30  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00ec34  str      x8, [sp, #8]                            
    // 0x00ec38  adrp     x8, #0x7b000                            
    // 0x00ec3c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00ec40  adrp     x8, #0xe000                             
    // 0x00ec44  add      x8, x8, #0xc6c                          
    // 0x00ec48  str      d0, [sp, #0x10]                         
    // 0x00ec4c  adrp     x9, #0x8c000                            
    // 0x00ec50  add      x9, x9, #0x3c0                          
    // 0x00ec54  bl       #0xf558                                 ; func_0xf558
    // 0x00ec58  adrp     x0, #0x8c000                            
    // 0x00ec5c  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00ec60  bl       #0xf518                                 ; func_0xf518
    // 0x00ec64  ldp      x29, x30, [sp, #0x30]                   
    // 0x00ec68  b        #0xf510                                 ; func_0xf510
}

- (void)关闭全部面板 {   // 0xed28
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 关闭全部面板 即可补全。
    // 0x00ed28  sub      sp, sp, #0x40                           
    // 0x00ed2c  stp      x29, x30, [sp, #0x30]                   
    // 0x00ed30  add      x29, sp, #0x30                          
    // 0x00ed34  adrp     x8, #0x8c000                            
    // 0x00ed38  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00ed3c  str      x8, [sp, #8]                            
    // 0x00ed40  adrp     x8, #0x7b000                            
    // 0x00ed44  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00ed48  adrp     x8, #0xe000                             
    // 0x00ed4c  add      x8, x8, #0xd74                          
    // 0x00ed50  str      d0, [sp, #0x10]                         
    // 0x00ed54  adrp     x9, #0x8c000                            
    // 0x00ed58  add      x9, x9, #0x3c0                          
    // 0x00ed5c  bl       #0xf558                                 ; func_0xf558
    // 0x00ed60  adrp     x0, #0x8c000                            
    // 0x00ed64  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00ed68  bl       #0xf518                                 ; func_0xf518
    // 0x00ed6c  ldp      x29, x30, [sp, #0x30]                   
    // 0x00ed70  b        #0xf510                                 ; func_0xf510
}

- (void)提示:(id)提示 {   // 0xee78
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay 提示: 即可补全。
    // 0x00ee78  sub      sp, sp, #0x50                           
    // 0x00ee7c  stp      x20, x19, [sp, #0x30]                   
    // 0x00ee80  stp      x29, x30, [sp, #0x40]                   
    // 0x00ee84  add      x29, sp, #0x40                          
    // 0x00ee88  bl       #0xf5a0                                 ; func_0xf5a0
    // 0x00ee8c  adrp     x8, #0x8c000                            
    // 0x00ee90  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x00ee94  str      x8, [sp]                                
    // 0x00ee98  adrp     x8, #0x7b000                            
    // 0x00ee9c  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x00eea0  str      d0, [sp, #8]                            
    // 0x00eea4  adrp     x8, #0xe000                             
    // 0x00eea8  add      x8, x8, #0xed8                          
    // 0x00eeac  adrp     x9, #0x8c000                            
    // 0x00eeb0  add      x9, x9, #0x650                          
    // 0x00eeb4  bl       #0xf5ac                                 ; func_0xf5ac
    // 0x00eeb8  mov      x19, x0                                 
    // 0x00eebc  adrp     x0, #0x8c000                            
    // 0x00eec0  ldr      x0, [x0, #0x108]                        ; ptr_0x8c108
    // 0x00eec4  bl       #0xf590                                 ; func_0xf590
    // 0x00eec8  bl       #0xf550                                 ; func_0xf550
    // 0x00eecc  bl       #0xf4b0                                 ; func_0xf4b0
    // 0x00eed0  ldp      x29, x30, [sp, #0x40]                   
    // 0x00eed4  b        #0xf4c8                                 ; func_0xf4c8
}

- (悬浮球 *)球 {   // 0xf414
    return _球;
}

- (void)set球:(悬浮球 *)set球 {   // 0xf41c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay set球: 即可补全。
    // 0x00f41c  mov      x1, x2                                  
    // 0x00f420  add      x0, x0, #8                              
    // 0x00f424  b        #0x690a0                                ; _objc_storeStrong
}

- (穿透窗口 *)浮窗 {   // 0xf428
    return _浮窗;
}

- (void)set浮窗:(穿透窗口 *)set浮窗 {   // 0xf430
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay set浮窗: 即可补全。
    // 0x00f430  mov      x1, x2                                  
    // 0x00f434  add      x0, x0, #0x10                           
    // 0x00f438  b        #0x690a0                                ; _objc_storeStrong
}

- (NSMutableArray *)面板栈 {   // 0xf43c
    return _面板栈;
}

- (void)set面板栈:(NSMutableArray *)set面板栈 {   // 0xf444
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQOverlay set面板栈: 即可补全。
    // 0x00f444  mov      x1, x2                                  
    // 0x00f448  add      x0, x0, #0x18                           
    // 0x00f44c  b        #0x690a0                                ; _objc_storeStrong
}

@end