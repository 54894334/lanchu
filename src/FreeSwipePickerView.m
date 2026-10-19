//
//  自由滑动选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 自由滑动选择视图

- (void)构建参数 {   // 0x45e24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 构建参数 即可补全。
    // 0x045e24  stp      d9, d8, [sp, #-0x70]!                   
    // 0x045e28  mov      x2, x30                                 
    // 0x045e2c  bl       #0x61880                                ; func_0x61880
    // 0x045e30  mov      x30, x2                                 
    // 0x045e34  stp      x29, x30, [sp, #0x60]                   
    // 0x045e38  add      x29, sp, #0x60                          
    // 0x045e3c  sub      sp, sp, #0x1b0                          
    // 0x045e40  mov      x19, x0                                 
    // 0x045e44  adrp     x8, #0x8c000                            
    // 0x045e48  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x045e4c  ldr      x8, [x8]                                
    // 0x045e50  stur     x8, [x29, #-0x70]                       
    // 0x045e54  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x045e58  mov      x29, x29                                
    // 0x045e5c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x045e60  mov      x20, x0                                 
    // 0x045e64  mov      w2, #0xf                                
    // 0x045e68  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x045e6c  bl       #0x60184                                ; func_0x60184
    // 0x045e70  mov      x0, x19                                 
    // 0x045e74  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x045e78  mov      x29, x29                                
    // 0x045e7c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x045e80  mov      x20, x0                                 
}

- (void)模式变化:(id)模式变化 {   // 0x46b4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 模式变化: 即可补全。
    // 0x046b4c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x046b50  stp      x20, x19, [sp, #0x10]                   
    // 0x046b54  stp      x29, x30, [sp, #0x20]                   
    // 0x046b58  add      x29, sp, #0x20                          
    // 0x046b5c  bl       #0x6029c                                ; func_0x6029c
    // 0x046b60  bl       #0x60290                                ; func_0x60290
    // 0x046b64  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046b68  mov      x29, x29                                
    // 0x046b6c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046b70  bl       #0x60498                                ; func_0x60498
    // 0x046b74  bl       #0x6e880                                ; [x0 set自由模式:] x2, x3, x4, x5, x6, x7
    // 0x046b78  bl       #0x6018c                                ; func_0x6018c
    // 0x046b7c  bl       #0x622bc                                ; func_0x622bc
    // 0x046b80  mov      x0, x19                                 
    // 0x046b84  bl       #0x72580                                ; [x19 更新模式相关UI] x2, x3, x4, x5, x6, x7
    // 0x046b88  bl       #0x60e88                                ; func_0x60e88
    // 0x046b8c  bl       #0x60e90                                ; func_0x60e90
    // 0x046b90  mov      x0, x19                                 
    // 0x046b94  ldp      x29, x30, [sp, #0x20]                   
    // 0x046b98  ldp      x20, x19, [sp, #0x10]                   
    // 0x046b9c  ldp      x22, x21, [sp], #0x30                   
    // 0x046ba0  b        #0x74600                                ; [x19 重建组列表] x2, x3, x4, x5, x6, x7
}

- (void)更新模式相关UI {   // 0x46ba4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 更新模式相关UI 即可补全。
    // 0x046ba4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x046ba8  stp      x20, x19, [sp, #0x10]                   
    // 0x046bac  stp      x29, x30, [sp, #0x20]                   
    // 0x046bb0  add      x29, sp, #0x20                          
    // 0x046bb4  mov      x19, x0                                 
    // 0x046bb8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046bbc  mov      x29, x29                                
    // 0x046bc0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046bc4  bl       #0x60d30                                ; func_0x60d30
    // 0x046bc8  mov      x21, x0                                 
    // 0x046bcc  bl       #0x60184                                ; func_0x60184
    // 0x046bd0  mov      x0, x19                                 
    // 0x046bd4  bl       #0x72b80                                ; [x0 添加组按钮] x2, x3, x4, x5, x6, x7
    // 0x046bd8  mov      x29, x29                                
    // 0x046bdc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046be0  mov      x20, x0                                 
    // 0x046be4  adrp     x8, #0x92000                            
    // 0x046be8  add      x8, x8, #0xf50                          
    // 0x046bec  adrp     x9, #0x92000                            
    // 0x046bf0  add      x9, x9, #0xf30                          
    // 0x046bf4  cmp      x21, #0                                 
    // 0x046bf8  csel     x2, x9, x8, eq                          
    // 0x046bfc  bl       #0x6031c                                ; func_0x6031c
    // 0x046c00  bl       #0x60184                                ; func_0x60184
}

- (void)添加一项 {   // 0x46c44
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 添加一项 即可补全。
    // 0x046c44  sub      sp, sp, #0x80                           
    // 0x046c48  stp      d9, d8, [sp, #0x30]                     
    // 0x046c4c  stp      x24, x23, [sp, #0x40]                   
    // 0x046c50  stp      x22, x21, [sp, #0x50]                   
    // 0x046c54  stp      x20, x19, [sp, #0x60]                   
    // 0x046c58  stp      x29, x30, [sp, #0x70]                   
    // 0x046c5c  add      x29, sp, #0x70                          
    // 0x046c60  mov      x19, x0                                 
    // 0x046c64  adrp     x8, #0x8c000                            
    // 0x046c68  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x046c6c  ldr      x8, [x8]                                
    // 0x046c70  str      x8, [sp, #0x28]                         
    // 0x046c74  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046c78  mov      x29, x29                                
    // 0x046c7c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046c80  bl       #0x60d30                                ; func_0x60d30
    // 0x046c84  mov      x21, x0                                 
    // 0x046c88  bl       #0x60184                                ; func_0x60184
    // 0x046c8c  cbz      x21, #0x46cc4                           
    // 0x046c90  mov      x0, x19                                 
    // 0x046c94  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046c98  mov      x29, x29                                
    // 0x046c9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046ca0  mov      x21, x0                                 
}

- (void)添加路径点 {   // 0x46e34
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 添加路径点 即可补全。
    // 0x046e34  stp      x24, x23, [sp, #-0x40]!                 
    // 0x046e38  stp      x22, x21, [sp, #0x10]                   
    // 0x046e3c  stp      x20, x19, [sp, #0x20]                   
    // 0x046e40  stp      x29, x30, [sp, #0x30]                   
    // 0x046e44  add      x29, sp, #0x30                          
    // 0x046e48  mov      x19, x0                                 
    // 0x046e4c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046e50  mov      x29, x29                                
    // 0x046e54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046e58  mov      x21, x0                                 
    // 0x046e5c  bl       #0x73580                                ; [x0 自由路径点] x2, x3, x4, x5, x6, x7
    // 0x046e60  mov      x29, x29                                
    // 0x046e64  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046e68  bl       #0x620a8                                ; func_0x620a8
    // 0x046e6c  mov      x23, x0                                 
    // 0x046e70  cbz      x0, #0x46e7c                            
    // 0x046e74  bl       #0x61128                                ; func_0x61128
    // 0x046e78  b        #0x46e90                                
    // 0x046e7c  adrp     x8, #0xad000                            
    // 0x046e80  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x046e84  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x046e88  mov      x29, x29                                
    // 0x046e8c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046e90  mov      x20, x0                                 
}

- (void)删除一组:(id)删除一组 {   // 0x46f6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 删除一组: 即可补全。
    // 0x046f6c  stp      x24, x23, [sp, #-0x40]!                 
    // 0x046f70  stp      x22, x21, [sp, #0x10]                   
    // 0x046f74  stp      x20, x19, [sp, #0x20]                   
    // 0x046f78  stp      x29, x30, [sp, #0x30]                   
    // 0x046f7c  add      x29, sp, #0x30                          
    // 0x046f80  bl       #0x62214                                ; func_0x62214
    // 0x046f84  bl       #0x609a0                                ; func_0x609a0
    // 0x046f88  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x046f8c  mov      x29, x29                                
    // 0x046f90  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046f94  bl       #0x60d30                                ; func_0x60d30
    // 0x046f98  mov      x23, x0                                 
    // 0x046f9c  bl       #0x60184                                ; func_0x60184
    // 0x046fa0  mov      x0, x19                                 
    // 0x046fa4  bl       #0x706c0                                ; [x19 动作] x2, x3, x4, x5, x6, x7
    // 0x046fa8  mov      x29, x29                                
    // 0x046fac  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046fb0  mov      x22, x0                                 
    // 0x046fb4  cbz      x23, #0x47010                           
    // 0x046fb8  bl       #0x734e0                                ; [x19 自由坐标组] x2, x3, x4, x5, x6, x7
    // 0x046fbc  mov      x29, x29                                
    // 0x046fc0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x046fc4  bl       #0x61990                                ; func_0x61990
    // 0x046fc8  mov      x20, x0                                 
}

- (void)选中组:(id)选中组 {   // 0x470a8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 选中组: 即可补全。
    // 0x0470a8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x0470ac  stp      x29, x30, [sp, #0x10]                   
    // 0x0470b0  add      x29, sp, #0x10                          
    // 0x0470b4  bl       #0x62214                                ; func_0x62214
    // 0x0470b8  mov      x2, x0                                  
    // 0x0470bc  mov      x0, x19                                 
    // 0x0470c0  bl       #0x6da00                                ; [x19 set当前组:] x0, x3, x4, x5, x6, x7
    // 0x0470c4  bl       #0x60e90                                ; func_0x60e90
    // 0x0470c8  mov      x0, x19                                 
    // 0x0470cc  ldp      x29, x30, [sp, #0x10]                   
    // 0x0470d0  ldp      x20, x19, [sp], #0x20                   
    // 0x0470d4  b        #0x74600                                ; [x19 重建组列表] x0, x3, x4, x5, x6, x7
}

- (BOOL)显示标记 {   // 0x470d8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 显示标记 即可补全。
    // 0x0470d8  b        #0x609e0                                ; func_0x609e0
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x470dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 hitTest:withEvent: 即可补全。
    // 0x0470dc  sub      sp, sp, #0x140                          
    // 0x0470e0  stp      d9, d8, [sp, #0xe0]                     
    // 0x0470e4  stp      x26, x25, [sp, #0xf0]                   
    // 0x0470e8  stp      x24, x23, [sp, #0x100]                  
    // 0x0470ec  stp      x22, x21, [sp, #0x110]                  
    // 0x0470f0  stp      x20, x19, [sp, #0x120]                  
    // 0x0470f4  stp      x29, x30, [sp, #0x130]                  
    // 0x0470f8  add      x29, sp, #0x130                         
    // 0x0470fc  bl       #0x610d4                                ; func_0x610d4
    // 0x047100  adrp     x8, #0x8c000                            
    // 0x047104  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x047108  ldr      x8, [x8]                                
    // 0x04710c  stur     x8, [x29, #-0x58]                       
    // 0x047110  bl       #0x60364                                ; func_0x60364
    // 0x047114  bl       #0x61b08                                ; func_0x61b08
    // 0x047118  bl       #0x72d40                                ; [x0 点们] x2, x3, x4, x5, x6, x7
    // 0x04711c  mov      x29, x29                                
    // 0x047120  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047124  mov      x21, x0                                 
    // 0x047128  add      x2, sp, #0x10                           
    // 0x04712c  add      x3, sp, #0x58                           
    // 0x047130  bl       #0x6020c                                ; func_0x6020c
    // 0x047134  cbz      x0, #0x47198                            
    // 0x047138  mov      x22, x0                                 
}

- (void)拖动点:(id)拖动点 {   // 0x47204
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 拖动点: 即可补全。
    // 0x047204  stp      d9, d8, [sp, #-0x60]!                   
    // 0x047208  stp      x26, x25, [sp, #0x10]                   
    // 0x04720c  stp      x24, x23, [sp, #0x20]                   
    // 0x047210  stp      x22, x21, [sp, #0x30]                   
    // 0x047214  stp      x20, x19, [sp, #0x40]                   
    // 0x047218  stp      x29, x30, [sp, #0x50]                   
    // 0x04721c  add      x29, sp, #0x50                          
    // 0x047220  mov      x20, x0                                 
    // 0x047224  bl       #0x60364                                ; func_0x60364
    // 0x047228  mov      x19, x0                                 
    // 0x04722c  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x047230  mov      x29, x29                                
    // 0x047234  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047238  mov      x21, x0                                 
    // 0x04723c  bl       #0x6fa60                                ; [x0 tag] x2, x3, x4, x5, x6, x7
    // 0x047240  mov      x22, x0                                 
    // 0x047244  bl       #0x6018c                                ; func_0x6018c
    // 0x047248  mov      x0, x19                                 
    // 0x04724c  bl       #0x61a78                                ; func_0x61a78
    // 0x047250  bl       #0x41344                                ; func_0x41344
    // 0x047254  bl       #0x61854                                ; func_0x61854
    // 0x047258  mov      x0, x20                                 
    // 0x04725c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x047260  mov      x29, x29                                
}

- (id)新建点标记:(long long)新建点标记 {   // 0x47460
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 新建点标记: 即可补全。
    // 0x047460  stp      d9, d8, [sp, #-0x50]!                   
    // 0x047464  stp      x24, x23, [sp, #0x10]                   
    // 0x047468  stp      x22, x21, [sp, #0x20]                   
    // 0x04746c  stp      x20, x19, [sp, #0x30]                   
    // 0x047470  stp      x29, x30, [sp, #0x40]                   
    // 0x047474  add      x29, sp, #0x40                          
    // 0x047478  mov      x21, x2                                 
    // 0x04747c  mov      x19, x0                                 
    // 0x047480  adrp     x8, #0xad000                            
    // 0x047484  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x047488  bl       #0x68f5c                                ; _objc_alloc
    // 0x04748c  mov      x8, #0x4042000000000000                 
    // 0x047490  fmov     d8, x8                                  
    // 0x047494  bl       #0x606b4                                ; func_0x606b4
    // 0x047498  mov      x20, x0                                 
    // 0x04749c  bl       #0x60ffc                                ; func_0x60ffc
    // 0x0474a0  bl       #0x20138                                ; _CQThemeNeon
    // 0x0474a4  mov      x29, x29                                
    // 0x0474a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0474ac  bl       #0x69058                                ; _objc_retainAutorelease
    // 0x0474b0  mov      x21, x0                                 
    // 0x0474b4  bl       #0x699c0                                ; [class(?0x0) CGColor] x2, x3, x4, x5, x6, x7
    // 0x0474b8  mov      x22, x0                                 
    // 0x0474bc  mov      x0, x20                                 
}

- (long long)点总数 {   // 0x475c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 点总数 即可补全。
    // 0x0475c4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0475c8  stp      x20, x19, [sp, #0x10]                   
    // 0x0475cc  stp      x29, x30, [sp, #0x20]                   
    // 0x0475d0  add      x29, sp, #0x20                          
    // 0x0475d4  mov      x19, x0                                 
    // 0x0475d8  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0475dc  mov      x29, x29                                
    // 0x0475e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0475e4  bl       #0x60d30                                ; func_0x60d30
    // 0x0475e8  mov      x21, x0                                 
    // 0x0475ec  bl       #0x60184                                ; func_0x60184
    // 0x0475f0  mov      x0, x19                                 
    // 0x0475f4  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x0475f8  mov      x29, x29                                
    // 0x0475fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047600  mov      x19, x0                                 
    // 0x047604  cbz      x21, #0x4762c                           
    // 0x047608  bl       #0x734e0                                ; [x0 自由坐标组] x2, x3, x4, x5, x6, x7
    // 0x04760c  mov      x29, x29                                
    // 0x047610  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047614  bl       #0x60abc                                ; func_0x60abc
    // 0x047618  lsl      x21, x0, #1                             
    // 0x04761c  bl       #0x60184                                ; func_0x60184
    // 0x047620  bl       #0x601b8                                ; func_0x601b8
}

- (long long)连线总数 {   // 0x4765c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 连线总数 即可补全。
    // 0x04765c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x047660  stp      x20, x19, [sp, #0x10]                   
    // 0x047664  stp      x29, x30, [sp, #0x20]                   
    // 0x047668  add      x29, sp, #0x20                          
    // 0x04766c  mov      x19, x0                                 
    // 0x047670  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x047674  mov      x29, x29                                
    // 0x047678  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04767c  bl       #0x60d30                                ; func_0x60d30
    // 0x047680  mov      x21, x0                                 
    // 0x047684  bl       #0x60184                                ; func_0x60184
    // 0x047688  mov      x0, x19                                 
    // 0x04768c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x047690  mov      x29, x29                                
    // 0x047694  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047698  mov      x19, x0                                 
    // 0x04769c  cbz      x21, #0x476c4                           
    // 0x0476a0  bl       #0x734e0                                ; [x0 自由坐标组] x2, x3, x4, x5, x6, x7
    // 0x0476a4  mov      x29, x29                                
    // 0x0476a8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0476ac  bl       #0x60abc                                ; func_0x60abc
    // 0x0476b0  mov      x21, x0                                 
    // 0x0476b4  bl       #0x60184                                ; func_0x60184
    // 0x0476b8  bl       #0x601b8                                ; func_0x601b8
}

- (void)同步标记 {   // 0x476f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 同步标记 即可补全。
    // 0x0476f4  stp      d13, d12, [sp, #-0x90]!                 
    // 0x0476f8  mov      x1, x30                                 
    // 0x0476fc  bl       #0x603cc                                ; func_0x603cc
    // 0x047700  mov      x30, x1                                 
    // 0x047704  stp      x29, x30, [sp, #0x80]                   
    // 0x047708  add      x29, sp, #0x80                          
    // 0x04770c  sub      sp, sp, #0x250                          
    // 0x047710  mov      x19, x0                                 
    // 0x047714  adrp     x8, #0x8c000                            
    // 0x047718  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04771c  ldr      x8, [x8]                                
    // 0x047720  stur     x8, [x29, #-0x90]                       
    // 0x047724  bl       #0x72e20                                ; [x0 点总数] x2, x3, x4, x5, x6, x7
    // 0x047728  bl       #0x60290                                ; func_0x60290
    // 0x04772c  bl       #0x72d40                                ; [x0 点们] x2, x3, x4, x5, x6, x7
    // 0x047730  mov      x29, x29                                
    // 0x047734  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047738  bl       #0x60a94                                ; func_0x60a94
    // 0x04773c  mov      x22, x0                                 
    // 0x047740  bl       #0x6018c                                ; func_0x6018c
    // 0x047744  cmp      x22, x20                                
    // 0x047748  b.ne     #0x47794                                
    // 0x04774c  bic      x25, x20, x20, asr #63                  
    // 0x047750  mov      x20, #0                                 
}

- (void)摆放点标记:(long long)摆放点标记 {   // 0x47b4c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 摆放点标记: 即可补全。
    // 0x047b4c  sub      sp, sp, #0xb0                           
    // 0x047b50  stp      d11, d10, [sp, #0x30]                   
    // 0x047b54  stp      d9, d8, [sp, #0x40]                     
    // 0x047b58  stp      x28, x27, [sp, #0x50]                   
    // 0x047b5c  stp      x26, x25, [sp, #0x60]                   
    // 0x047b60  stp      x24, x23, [sp, #0x70]                   
    // 0x047b64  stp      x22, x21, [sp, #0x80]                   
    // 0x047b68  stp      x20, x19, [sp, #0x90]                   
    // 0x047b6c  stp      x29, x30, [sp, #0xa0]                   
    // 0x047b70  add      x29, sp, #0xa0                          
    // 0x047b74  tbnz     x2, #0x3f, #0x47cd8                     
    // 0x047b78  mov      x23, x2                                 
    // 0x047b7c  mov      x24, x0                                 
    // 0x047b80  bl       #0x72d40                                ; [x0 点们] x2, x3, x4, x5, x6, x7
    // 0x047b84  mov      x29, x29                                
    // 0x047b88  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x047b8c  bl       #0x62204                                ; func_0x62204
    // 0x047b90  mov      x20, x0                                 
    // 0x047b94  bl       #0x601b8                                ; func_0x601b8
    // 0x047b98  cmp      x20, x23                                
    // 0x047b9c  b.le     #0x47cd8                                
    // 0x047ba0  mov      x0, x24                                 
    // 0x047ba4  bl       #0x72d40                                ; [x0 点们] x2, x3, x4, x5, x6, x7
    // 0x047ba8  mov      x29, x29                                
}

- (void)摆放连线 {   // 0x47fd4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 摆放连线 即可补全。
    // 0x047fd4  stp      d11, d10, [sp, #-0x80]!                 
    // 0x047fd8  stp      d9, d8, [sp, #0x10]                     
    // 0x047fdc  stp      x28, x27, [sp, #0x20]                   
    // 0x047fe0  stp      x26, x25, [sp, #0x30]                   
    // 0x047fe4  stp      x24, x23, [sp, #0x40]                   
    // 0x047fe8  stp      x22, x21, [sp, #0x50]                   
    // 0x047fec  stp      x20, x19, [sp, #0x60]                   
    // 0x047ff0  stp      x29, x30, [sp, #0x70]                   
    // 0x047ff4  add      x29, sp, #0x70                          
    // 0x047ff8  mov      x19, x0                                 
    // 0x047ffc  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x048000  mov      x29, x29                                
    // 0x048004  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048008  bl       #0x60d30                                ; func_0x60d30
    // 0x04800c  mov      x21, x0                                 
    // 0x048010  bl       #0x60184                                ; func_0x60184
    // 0x048014  mov      x0, x19                                 
    // 0x048018  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04801c  mov      x29, x29                                
    // 0x048020  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048024  mov      x22, x0                                 
    // 0x048028  cbz      x21, #0x48184                           
    // 0x04802c  bl       #0x734e0                                ; [x0 自由坐标组] x2, x3, x4, x5, x6, x7
    // 0x048030  mov      x29, x29                                
}

- (void)摆放线:(id)摆放线 a:(CGPoint)a b:(CGPoint)b 显示:(BOOL)显示 {   // 0x48284
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 摆放线:a:b:显示: 即可补全。
    // 0x048284  sub      sp, sp, #0xc0                           
    // 0x048288  stp      d15, d14, [sp, #0x60]                   
    // 0x04828c  stp      d13, d12, [sp, #0x70]                   
    // 0x048290  stp      d11, d10, [sp, #0x80]                   
    // 0x048294  stp      d9, d8, [sp, #0x90]                     
    // 0x048298  stp      x20, x19, [sp, #0xa0]                   
    // 0x04829c  stp      x29, x30, [sp, #0xb0]                   
    // 0x0482a0  add      x29, sp, #0xb0                          
    // 0x0482a4  bl       #0x61c7c                                ; func_0x61c7c
    // 0x0482a8  fsub     d12, d2, d0                             
    // 0x0482ac  fsub     d13, d3, d1                             
    // 0x0482b0  fmul     d0, d13, d13                            
    // 0x0482b4  fmadd    d0, d12, d12, d0                        
    // 0x0482b8  fsqrt    d14, d0                                 
    // 0x0482bc  eor      w19, w3, #1                             
    // 0x0482c0  bl       #0x6904c                                ; _objc_retain
    // 0x0482c4  mov      x20, x0                                 
    // 0x0482c8  mov      x2, x19                                 
    // 0x0482cc  bl       #0x6c340                                ; [x0 setHidden:] x19, x3, x4, x5, x6, x7
    // 0x0482d0  bl       #0x61464                                ; func_0x61464
    // 0x0482d4  mov      x0, x20                                 
    // 0x0482d8  bl       #0x6bf60                                ; [x0 setBounds:] x19, x3, x4, x5, x6, x7
    // 0x0482dc  fadd     d0, d11, d9                             
    // 0x0482e0  bl       #0x61da4                                ; func_0x61da4
}

- (id)点字母:(long long)点字母 {   // 0x48330
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 点字母: 即可补全。
    // 0x048330  sub      sp, sp, #0x20                           
    // 0x048334  stp      x29, x30, [sp, #0x10]                   
    // 0x048338  add      x29, sp, #0x10                          
    // 0x04833c  adrp     x8, #0xad000                            
    // 0x048340  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x048344  cmp      x2, #0x1a                               
    // 0x048348  b.lo     #0x4835c                                
    // 0x04834c  str      x2, [sp]                                
    // 0x048350  adrp     x2, #0x8f000                            
    // 0x048354  add      x2, x2, #0x830                          
    // 0x048358  b        #0x4836c                                
    // 0x04835c  add      w8, w2, #0x41                           
    // 0x048360  str      x8, [sp]                                
    // 0x048364  adrp     x2, #0x93000                            
    // 0x048368  add      x2, x2, #0x10                           
    // 0x04836c  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x048370  mov      x29, x29                                
    // 0x048374  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048378  ldp      x29, x30, [sp, #0x10]                   
    // 0x04837c  b        #0x6130c                                ; func_0x6130c
}

- (void)刷新准星 {   // 0x48380
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 刷新准星 即可补全。
    // 0x048380  sub      sp, sp, #0x30                           
    // 0x048384  stp      x20, x19, [sp, #0x10]                   
    // 0x048388  stp      x29, x30, [sp, #0x20]                   
    // 0x04838c  add      x29, sp, #0x20                          
    // 0x048390  mov      x19, x0                                 
    // 0x048394  adrp     x8, #0xad000                            
    // 0x048398  ldr      x8, [x8, #0x560]                        ; class(自由滑动选择视图)
    // 0x04839c  stp      x0, x8, [sp]                            
    // 0x0483a0  adrp     x8, #0xab000                            
    // 0x0483a4  ldr      x1, [x8, #0xb80]                        ; SEL("刷新准星")
    // 0x0483a8  bl       #0x60a00                                ; func_0x60a00
    // 0x0483ac  bl       #0x60e90                                ; func_0x60e90
    // 0x0483b0  bl       #0x6160c                                ; func_0x6160c
    // 0x0483b4  ldp      x29, x30, [sp, #0x20]                   
    // 0x0483b8  b        #0x60ccc                                ; func_0x60ccc
}

- (void)重建组列表 {   // 0x483bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 重建组列表 即可补全。
    // 0x0483bc  sub      sp, sp, #0x1e0                          
    // 0x0483c0  stp      d15, d14, [sp, #0x140]                  
    // 0x0483c4  stp      d13, d12, [sp, #0x150]                  
    // 0x0483c8  stp      d11, d10, [sp, #0x160]                  
    // 0x0483cc  stp      d9, d8, [sp, #0x170]                    
    // 0x0483d0  stp      x28, x27, [sp, #0x180]                  
    // 0x0483d4  stp      x26, x25, [sp, #0x190]                  
    // 0x0483d8  stp      x24, x23, [sp, #0x1a0]                  
    // 0x0483dc  stp      x22, x21, [sp, #0x1b0]                  
    // 0x0483e0  stp      x20, x19, [sp, #0x1c0]                  
    // 0x0483e4  stp      x29, x30, [sp, #0x1d0]                  
    // 0x0483e8  add      x29, sp, #0x1d0                         
    // 0x0483ec  mov      x19, x0                                 
    // 0x0483f0  adrp     x8, #0x8c000                            
    // 0x0483f4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0483f8  ldr      x8, [x8]                                
    // 0x0483fc  stur     x8, [x29, #-0xa0]                       
    // 0x048400  bl       #0x73260                                ; [x0 组列表容器] x2, x3, x4, x5, x6, x7
    // 0x048404  mov      x29, x29                                
    // 0x048408  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04840c  bl       #0x61bfc                                ; func_0x61bfc
    // 0x048410  cbz      x20, #0x48db4                           
    // 0x048414  movi     v0.16b, #0                              
    // 0x048418  stp      q0, q0, [sp, #0x90]                     
}

- (id)圈码:(unsigned long long)圈码 {   // 0x48e00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 圈码: 即可补全。
    // 0x048e00  sub      sp, sp, #0xd0                           
    // 0x048e04  stp      x20, x19, [sp, #0xb0]                   
    // 0x048e08  stp      x29, x30, [sp, #0xc0]                   
    // 0x048e0c  add      x29, sp, #0xc0                          
    // 0x048e10  mov      x19, x2                                 
    // 0x048e14  adrp     x8, #0x8c000                            
    // 0x048e18  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x048e1c  ldr      x8, [x8]                                
    // 0x048e20  stur     x8, [x29, #-0x18]                       
    // 0x048e24  adrp     x8, #0x93000                            
    // 0x048e28  add      x8, x8, #0xb0                           
    // 0x048e2c  adrp     x9, #0x93000                            
    // 0x048e30  add      x9, x9, #0xd0                           
    // 0x048e34  stp      x8, x9, [sp, #8]                        
    // 0x048e38  adrp     x8, #0x93000                            
    // 0x048e3c  add      x8, x8, #0xf0                           
    // 0x048e40  adrp     x9, #0x93000                            
    // 0x048e44  add      x9, x9, #0x110                          
    // 0x048e48  stp      x8, x9, [sp, #0x18]                     
    // 0x048e4c  adrp     x8, #0x93000                            
    // 0x048e50  add      x8, x8, #0x130                          
    // 0x048e54  adrp     x9, #0x93000                            
    // 0x048e58  add      x9, x9, #0x150                          
    // 0x048e5c  stp      x8, x9, [sp, #0x28]                     
}

- (long long)列表行数 {   // 0x48f80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 列表行数 即可补全。
    // 0x048f80  stp      x22, x21, [sp, #-0x30]!                 
    // 0x048f84  stp      x20, x19, [sp, #0x10]                   
    // 0x048f88  stp      x29, x30, [sp, #0x20]                   
    // 0x048f8c  add      x29, sp, #0x20                          
    // 0x048f90  mov      x19, x0                                 
    // 0x048f94  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x048f98  mov      x29, x29                                
    // 0x048f9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048fa0  bl       #0x60d30                                ; func_0x60d30
    // 0x048fa4  mov      x21, x0                                 
    // 0x048fa8  bl       #0x60184                                ; func_0x60184
    // 0x048fac  mov      x0, x19                                 
    // 0x048fb0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x048fb4  mov      x29, x29                                
    // 0x048fb8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048fbc  mov      x19, x0                                 
    // 0x048fc0  cbz      x21, #0x48fec                           
    // 0x048fc4  bl       #0x734e0                                ; [x0 自由坐标组] x2, x3, x4, x5, x6, x7
    // 0x048fc8  mov      x29, x29                                
    // 0x048fcc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x048fd0  bl       #0x60abc                                ; func_0x60abc
    // 0x048fd4  mov      x21, x0                                 
    // 0x048fd8  bl       #0x60184                                ; func_0x60184
    // 0x048fdc  bl       #0x601b8                                ; func_0x601b8
}

- (double)面板附加高度 {   // 0x4901c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 面板附加高度 即可补全。
    // 0x04901c  stp      x29, x30, [sp, #-0x10]!                 
    // 0x049020  mov      x29, sp                                 
    // 0x049024  bl       #0x703a0                                ; [x0 列表行数] x2, x3, x4, x5, x6, x7
    // 0x049028  mov      w8, #0x1e                               
    // 0x04902c  mov      x9, #0x59                               
    // 0x049030  madd     x8, x0, x8, x9                          
    // 0x049034  scvtf    d0, x8                                  
    // 0x049038  ldp      x29, x30, [sp], #0x10                   
    // 0x04903c  ret                                              
}

- (void)布局参数区 {   // 0x49040
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 布局参数区 即可补全。
    // 0x049040  sub      sp, sp, #0x60                           
    // 0x049044  stp      d11, d10, [sp, #0x10]                   
    // 0x049048  stp      d9, d8, [sp, #0x20]                     
    // 0x04904c  stp      x22, x21, [sp, #0x30]                   
    // 0x049050  stp      x20, x19, [sp, #0x40]                   
    // 0x049054  stp      x29, x30, [sp, #0x50]                   
    // 0x049058  add      x29, sp, #0x50                          
    // 0x04905c  mov      x19, x0                                 
    // 0x049060  adrp     x8, #0xad000                            
    // 0x049064  ldr      x8, [x8, #0x560]                        ; class(自由滑动选择视图)
    // 0x049068  stp      x0, x8, [sp]                            
    // 0x04906c  adrp     x8, #0xab000                            
    // 0x049070  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x049074  bl       #0x60a00                                ; func_0x60a00
    // 0x049078  mov      x0, x19                                 
    // 0x04907c  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x049080  mov      x29, x29                                
    // 0x049084  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x049088  bl       #0x60850                                ; func_0x60850
    // 0x04908c  fmov     d8, d2                                  
    // 0x049090  bl       #0x60184                                ; func_0x60184
    // 0x049094  bl       #0x60c4c                                ; func_0x60c4c
    // 0x049098  bl       #0x60950                                ; func_0x60950
    // 0x04909c  bl       #0x728c0                                ; [x0 模式段] x2, x3, x4, x5, x6, x7
}

- (NSMutableArray *)点们 {   // 0x49164
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 点们 即可补全。
    // 0x049164  adrp     x8, #0xad000                            
    // 0x049168  ldrsw    x8, [x8, #0xae4]                        
    // 0x04916c  b        #0x601f8                                ; func_0x601f8
}

- (void)set点们:(NSMutableArray *)set点们 {   // 0x49170
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set点们: 即可补全。
    // 0x049170  mov      x1, x2                                  
    // 0x049174  adrp     x8, #0xad000                            
    // 0x049178  ldrsw    x8, [x8, #0xae4]                        
    // 0x04917c  b        #0x60194                                ; func_0x60194
}

- (NSMutableArray *)标签们 {   // 0x49180
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 标签们 即可补全。
    // 0x049180  adrp     x8, #0xad000                            
    // 0x049184  ldrsw    x8, [x8, #0xae8]                        
    // 0x049188  b        #0x601f8                                ; func_0x601f8
}

- (void)set标签们:(NSMutableArray *)set标签们 {   // 0x4918c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set标签们: 即可补全。
    // 0x04918c  mov      x1, x2                                  
    // 0x049190  adrp     x8, #0xad000                            
    // 0x049194  ldrsw    x8, [x8, #0xae8]                        
    // 0x049198  b        #0x60194                                ; func_0x60194
}

- (NSMutableArray *)连线们 {   // 0x4919c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 连线们 即可补全。
    // 0x04919c  adrp     x8, #0xad000                            
    // 0x0491a0  ldrsw    x8, [x8, #0xaec]                        
    // 0x0491a4  b        #0x601f8                                ; func_0x601f8
}

- (void)set连线们:(NSMutableArray *)set连线们 {   // 0x491a8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set连线们: 即可补全。
    // 0x0491a8  mov      x1, x2                                  
    // 0x0491ac  adrp     x8, #0xad000                            
    // 0x0491b0  ldrsw    x8, [x8, #0xaec]                        
    // 0x0491b4  b        #0x60194                                ; func_0x60194
}

- (UISegmentedControl *)模式段 {   // 0x491b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 模式段 即可补全。
    // 0x0491b8  adrp     x8, #0xad000                            
    // 0x0491bc  ldrsw    x8, [x8, #0xaf0]                        
    // 0x0491c0  b        #0x601f8                                ; func_0x601f8
}

- (void)set模式段:(UISegmentedControl *)set模式段 {   // 0x491c4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set模式段: 即可补全。
    // 0x0491c4  mov      x1, x2                                  
    // 0x0491c8  adrp     x8, #0xad000                            
    // 0x0491cc  ldrsw    x8, [x8, #0xaf0]                        
    // 0x0491d0  b        #0x60194                                ; func_0x60194
}

- (UIButton *)添加组按钮 {   // 0x491d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 添加组按钮 即可补全。
    // 0x0491d4  adrp     x8, #0xad000                            
    // 0x0491d8  ldrsw    x8, [x8, #0xaf4]                        
    // 0x0491dc  b        #0x601f8                                ; func_0x601f8
}

- (void)set添加组按钮:(UIButton *)set添加组按钮 {   // 0x491e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set添加组按钮: 即可补全。
    // 0x0491e0  mov      x1, x2                                  
    // 0x0491e4  adrp     x8, #0xad000                            
    // 0x0491e8  ldrsw    x8, [x8, #0xaf4]                        
    // 0x0491ec  b        #0x60194                                ; func_0x60194
}

- (UIView *)组列表容器 {   // 0x491f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 组列表容器 即可补全。
    // 0x0491f0  adrp     x8, #0xad000                            
    // 0x0491f4  ldrsw    x8, [x8, #0xaf8]                        
    // 0x0491f8  b        #0x601f8                                ; func_0x601f8
}

- (void)set组列表容器:(UIView *)set组列表容器 {   // 0x491fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set组列表容器: 即可补全。
    // 0x0491fc  mov      x1, x2                                  
    // 0x049200  adrp     x8, #0xad000                            
    // 0x049204  ldrsw    x8, [x8, #0xaf8]                        
    // 0x049208  b        #0x60194                                ; func_0x60194
}

- (long long)当前组 {   // 0x4920c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 当前组 即可补全。
    // 0x04920c  adrp     x8, #0xad000                            
    // 0x049210  ldrsw    x8, [x8, #0xafc]                        
    // 0x049214  b        #0x601f8                                ; func_0x601f8
}

- (void)set当前组:(long long)set当前组 {   // 0x49218
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 自由滑动选择视图 set当前组: 即可补全。
    // 0x049218  adrp     x8, #0xad000                            
    // 0x04921c  ldrsw    x8, [x8, #0xafc]                        
    // 0x049220  str      x2, [x0, x8]                            
    // 0x049224  ret                                              
}

@end