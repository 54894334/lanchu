//
//  识图选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 识图选择视图

- (BOOL)显示标记 {   // 0x4c19c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 显示标记 即可补全。
    // 0x04c19c  b        #0x609e0                                ; func_0x609e0
}

- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent {   // 0x4c1a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 hitTest:withEvent: 即可补全。
    // 0x04c1a0  sub      sp, sp, #0x50                           
    // 0x04c1a4  stp      d9, d8, [sp, #0x10]                     
    // 0x04c1a8  stp      x22, x21, [sp, #0x20]                   
    // 0x04c1ac  stp      x20, x19, [sp, #0x30]                   
    // 0x04c1b0  stp      x29, x30, [sp, #0x40]                   
    // 0x04c1b4  add      x29, sp, #0x40                          
    // 0x04c1b8  fmov     d8, d1                                  
    // 0x04c1bc  fmov     d9, d0                                  
    // 0x04c1c0  mov      x21, x0                                 
    // 0x04c1c4  bl       #0x60364                                ; func_0x60364
    // 0x04c1c8  bl       #0x615b4                                ; func_0x615b4
    // 0x04c1cc  bl       #0x74220                                ; [x0 路径编辑器] x2, x3, x4, x5, x6, x7
    // 0x04c1d0  mov      x29, x29                                
    // 0x04c1d4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04c1d8  mov      x22, x0                                 
    // 0x04c1dc  bl       #0x6082c                                ; func_0x6082c
    // 0x04c1e0  bl       #0x70e80                                ; [x0 命中测试:事件:] x2, x3, x4, x5, x6, x7
    // 0x04c1e4  mov      x29, x29                                
    // 0x04c1e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04c1ec  mov      x20, x0                                 
    // 0x04c1f0  bl       #0x6019c                                ; func_0x6019c
    // 0x04c1f4  cbz      x20, #0x4c200                           
    // 0x04c1f8  bl       #0x60bfc                                ; func_0x60bfc
    // 0x04c1fc  b        #0x4c228                                
}

- (void)同步起点参考 {   // 0x4c240
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 同步起点参考 即可补全。
    // 0x04c240  mov      x2, x30                                 
    // 0x04c244  bl       #0x608e4                                ; func_0x608e4
    // 0x04c248  mov      x30, x2                                 
    // 0x04c24c  stp      x29, x30, [sp, #0x50]                   
    // 0x04c250  add      x29, sp, #0x50                          
    // 0x04c254  mov      x19, x0                                 
    // 0x04c258  bl       #0x74220                                ; [x0 路径编辑器] x30, x3, x4, x5, x6, x7
    // 0x04c25c  mov      x29, x29                                
    // 0x04c260  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04c264  bl       #0x6232c                                ; func_0x6232c
    // 0x04c268  mov      x21, x0                                 
    // 0x04c26c  bl       #0x60184                                ; func_0x60184
    // 0x04c270  tbz      w21, #0, #0x4c27c                       
    // 0x04c274  ldp      x29, x30, [sp, #0x50]                   
    // 0x04c278  b        #0x60a1c                                ; func_0x60a1c
    // 0x04c27c  mov      x0, x19                                 
    // 0x04c280  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04c284  mov      x29, x29                                
    // 0x04c288  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04c28c  bl       #0x60c64                                ; func_0x60c64
    // 0x04c290  fmov     d10, d0                                 
    // 0x04c294  fmov     d9, d1                                  
    // 0x04c298  fmov     d12, d2                                 
    // 0x04c29c  fmov     d11, d3                                 
}

- (id)新建标记视图 {   // 0x4c2e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 新建标记视图 即可补全。
    // 0x04c2e8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04c2ec  stp      x29, x30, [sp, #0x10]                   
    // 0x04c2f0  add      x29, sp, #0x10                          
    // 0x04c2f4  adrp     x8, #0xad000                            
    // 0x04c2f8  ldr      x0, [x8, #0x1b0]                        ; class(?0x0)
    // 0x04c2fc  bl       #0x68f5c                                ; _objc_alloc
    // 0x04c300  adrp     x8, #0x8c000                            
    // 0x04c304  ldr      x8, [x8, #0x10]                         ; symbol(_CGRectZero)
    // 0x04c308  bl       #0x6067c                                ; func_0x6067c
    // 0x04c30c  mov      x19, x0                                 
    // 0x04c310  bl       #0x60620                                ; func_0x60620
    // 0x04c314  mov      x0, x19                                 
    // 0x04c318  bl       #0x60424                                ; func_0x60424
    // 0x04c31c  mov      x0, x19                                 
    // 0x04c320  ldp      x29, x30, [sp, #0x10]                   
    // 0x04c324  b        #0x602f8                                ; func_0x602f8
}

- (void)构建参数 {   // 0x4c328
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 构建参数 即可补全。
    // 0x04c328  mov      x2, x30                                 
    // 0x04c32c  bl       #0x606f8                                ; func_0x606f8
    // 0x04c330  mov      x30, x2                                 
    // 0x04c334  stp      x29, x30, [sp, #0x90]                   
    // 0x04c338  add      x29, sp, #0x90                          
    // 0x04c33c  sub      sp, sp, #0x3c0                          
    // 0x04c340  mov      x21, x0                                 
    // 0x04c344  adrp     x8, #0x8c000                            
    // 0x04c348  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04c34c  ldr      x8, [x8]                                
    // 0x04c350  stur     x8, [x29, #-0xa0]                       
    // 0x04c354  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04c358  mov      x29, x29                                
    // 0x04c35c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04c360  mov      x19, x0                                 
    // 0x04c364  mov      w2, #4                                  
    // 0x04c368  bl       #0x6e640                                ; [x0 set类型:] x30, x3, x4, x5, x6, x7
    // 0x04c36c  bl       #0x601b8                                ; func_0x601b8
    // 0x04c370  add      x0, sp, #0x250                          
    // 0x04c374  mov      x1, x21                                 
    // 0x04c378  bl       #0x68fec                                ; _objc_initWeak
    // 0x04c37c  adrp     x8, #0x8c000                            
    // 0x04c380  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x04c384  str      x8, [sp, #0x228]                        
}

- (double)面板附加高度 {   // 0x4e378
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 面板附加高度 即可补全。
    // 0x04e378  stp      d9, d8, [sp, #-0x40]!                   
    // 0x04e37c  stp      x22, x21, [sp, #0x10]                   
    // 0x04e380  stp      x20, x19, [sp, #0x20]                   
    // 0x04e384  stp      x29, x30, [sp, #0x30]                   
    // 0x04e388  add      x29, sp, #0x30                          
    // 0x04e38c  mov      x19, x0                                 
    // 0x04e390  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04e394  mov      x29, x29                                
    // 0x04e398  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04e39c  bl       #0x61bf4                                ; func_0x61bf4
    // 0x04e3a0  mov      x21, x0                                 
    // 0x04e3a4  bl       #0x60184                                ; func_0x60184
    // 0x04e3a8  mov      x0, x19                                 
    // 0x04e3ac  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04e3b0  mov      x29, x29                                
    // 0x04e3b4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04e3b8  bl       #0x61bf4                                ; func_0x61bf4
    // 0x04e3bc  mov      x22, x0                                 
    // 0x04e3c0  bl       #0x60184                                ; func_0x60184
    // 0x04e3c4  cmp      x22, #3                                 
    // 0x04e3c8  ccmp     x21, #2, #4, ne                         
    // 0x04e3cc  adrp     x8, #0x7c000                            
    // 0x04e3d0  ldr      d0, [x8, #0x8b8]                        ; ptr_0x7c8b8
    // 0x04e3d4  adrp     x8, #0x7c000                            
}

- (void)布局参数区 {   // 0x4e4ec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 布局参数区 即可补全。
    // 0x04e4ec  mov      x1, x30                                 
    // 0x04e4f0  bl       #0x61340                                ; func_0x61340
    // 0x04e4f4  mov      x30, x1                                 
    // 0x04e4f8  stp      x29, x30, [sp, #0xb0]                   
    // 0x04e4fc  add      x29, sp, #0xb0                          
    // 0x04e500  mov      x19, x0                                 
    // 0x04e504  adrp     x8, #0xad000                            
    // 0x04e508  ldr      x8, [x8, #0x578]                        ; class(识图选择视图)
    // 0x04e50c  stp      x0, x8, [sp, #0x10]                     
    // 0x04e510  adrp     x8, #0xab000                            
    // 0x04e514  ldr      x1, [x8, #0xfc0]                        ; SEL("布局参数区")
    // 0x04e518  bl       #0x61664                                ; func_0x61664
    // 0x04e51c  mov      x0, x19                                 
    // 0x04e520  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x04e524  mov      x29, x29                                
    // 0x04e528  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04e52c  bl       #0x60850                                ; func_0x60850
    // 0x04e530  fmov     d9, d2                                  
    // 0x04e534  bl       #0x60184                                ; func_0x60184
    // 0x04e538  bl       #0x60c4c                                ; func_0x60c4c
    // 0x04e53c  fmov     d1, #4.00000000                         
    // 0x04e540  fadd     d8, d0, d1                              
    // 0x04e544  mov      x0, x19                                 
    // 0x04e548  bl       #0x74a20                                ; [x0 预览] x2, x3, x4, x5, x6, x7
}

- (void)命中段变化:(id)命中段变化 {   // 0x4edac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中段变化: 即可补全。
    // 0x04edac  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04edb0  stp      x20, x19, [sp, #0x10]                   
    // 0x04edb4  stp      x29, x30, [sp, #0x20]                   
    // 0x04edb8  add      x29, sp, #0x20                          
    // 0x04edbc  mov      x19, x0                                 
    // 0x04edc0  bl       #0x60364                                ; func_0x60364
    // 0x04edc4  mov      x20, x0                                 
    // 0x04edc8  bl       #0x6bca0                                ; [x0 selectedSegmentIndex] x2, x3, x4, x5, x6, x7
    // 0x04edcc  bl       #0x609a0                                ; func_0x609a0
    // 0x04edd0  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04edd4  mov      x29, x29                                
    // 0x04edd8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04eddc  bl       #0x60a10                                ; func_0x60a10
    // 0x04ede0  bl       #0x6ea20                                ; [x0 set识图命中行为:] x2, x3, x4, x5, x6, x7
    // 0x04ede4  bl       #0x6019c                                ; func_0x6019c
    // 0x04ede8  bl       #0x62150                                ; func_0x62150
    // 0x04edec  mov      x21, x0                                 
    // 0x04edf0  bl       #0x60184                                ; func_0x60184
    // 0x04edf4  cmp      x21, #0                                 
    // 0x04edf8  cset     w20, eq                                 
    // 0x04edfc  mov      x0, x19                                 
    // 0x04ee00  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04ee04  mov      x29, x29                                
    // 0x04ee08  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)选择跳转目标 {   // 0x4ee24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 选择跳转目标 即可补全。
    // 0x04ee24  sub      sp, sp, #0x50                           
    // 0x04ee28  stp      x20, x19, [sp, #0x30]                   
    // 0x04ee2c  stp      x29, x30, [sp, #0x40]                   
    // 0x04ee30  add      x29, sp, #0x40                          
    // 0x04ee34  mov      x20, x0                                 
    // 0x04ee38  sub      x0, x29, #0x18                          
    // 0x04ee3c  bl       #0x60dfc                                ; func_0x60dfc
    // 0x04ee40  adrp     x8, #0x8c000                            
    // 0x04ee44  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x04ee48  str      x8, [sp]                                
    // 0x04ee4c  adrp     x8, #0x7b000                            
    // 0x04ee50  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x04ee54  str      d0, [sp, #8]                            
    // 0x04ee58  adrp     x8, #0x4e000                            
    // 0x04ee5c  add      x8, x8, #0xe98                          
    // 0x04ee60  adrp     x9, #0x8d000                            
    // 0x04ee64  add      x9, x9, #0x448                          
    // 0x04ee68  bl       #0x60720                                ; func_0x60720
    // 0x04ee6c  mov      x2, sp                                  
    // 0x04ee70  mov      x0, x20                                 
    // 0x04ee74  bl       #0x74540                                ; [x0 选跳转目标:] x2, x3, x4, x5, x6, x7
    // 0x04ee78  bl       #0x604a4                                ; func_0x604a4
    // 0x04ee7c  bl       #0x60d9c                                ; func_0x60d9c
    // 0x04ee80  ldp      x29, x30, [sp, #0x40]                   
}

- (void)刷新跳转按钮 {   // 0x4eef4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 刷新跳转按钮 即可补全。
    // 0x04eef4  mov      x2, x30                                 
    // 0x04eef8  bl       #0x61640                                ; func_0x61640
    // 0x04eefc  mov      x30, x2                                 
    // 0x04ef00  stp      x29, x30, [sp, #0x60]                   
    // 0x04ef04  add      x29, sp, #0x60                          
    // 0x04ef08  mov      x19, x0                                 
    // 0x04ef0c  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04ef10  mov      x29, x29                                
    // 0x04ef14  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04ef18  mov      x21, x0                                 
    // 0x04ef1c  bl       #0x739e0                                ; [x0 识图跳转] x30, x3, x4, x5, x6, x7
    // 0x04ef20  mov      x29, x29                                
    // 0x04ef24  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04ef28  bl       #0x60a08                                ; func_0x60a08
    // 0x04ef2c  mov      x20, x0                                 
    // 0x04ef30  bl       #0x6019c                                ; func_0x6019c
    // 0x04ef34  bl       #0x6018c                                ; func_0x6018c
    // 0x04ef38  mov      x0, x19                                 
    // 0x04ef3c  bl       #0x74260                                ; [x0 跳转按钮] x30, x3, x4, x5, x6, x7
    // 0x04ef40  mov      x29, x29                                
    // 0x04ef44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04ef48  mov      x21, x0                                 
    // 0x04ef4c  adrp     x8, #0xad000                            
    // 0x04ef50  ldr      x22, [x8, #0x98]                        ; class(?0x0)
}

- (void)判断段变化:(id)判断段变化 {   // 0x4f010
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 判断段变化: 即可补全。
    // 0x04f010  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04f014  stp      x20, x19, [sp, #0x10]                   
    // 0x04f018  stp      x29, x30, [sp, #0x20]                   
    // 0x04f01c  add      x29, sp, #0x20                          
    // 0x04f020  bl       #0x6029c                                ; func_0x6029c
    // 0x04f024  bl       #0x61834                                ; func_0x61834
    // 0x04f028  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04f02c  mov      x29, x29                                
    // 0x04f030  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f034  mov      x21, x0                                 
    // 0x04f038  mov      x2, x20                                 
    // 0x04f03c  bl       #0x6e9a0                                ; [x0 set识图判断:] x20, x3, x4, x5, x6, x7
    // 0x04f040  bl       #0x6018c                                ; func_0x6018c
    // 0x04f044  mov      x0, x19                                 
    // 0x04f048  ldp      x29, x30, [sp, #0x20]                   
    // 0x04f04c  b        #0x60240                                ; func_0x60240
}

- (void)失败段变化:(id)失败段变化 {   // 0x4f050
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 失败段变化: 即可补全。
    // 0x04f050  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04f054  stp      x20, x19, [sp, #0x10]                   
    // 0x04f058  stp      x29, x30, [sp, #0x20]                   
    // 0x04f05c  add      x29, sp, #0x20                          
    // 0x04f060  bl       #0x6029c                                ; func_0x6029c
    // 0x04f064  bl       #0x60290                                ; func_0x60290
    // 0x04f068  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04f06c  mov      x29, x29                                
    // 0x04f070  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f074  bl       #0x60498                                ; func_0x60498
    // 0x04f078  bl       #0x6e9c0                                ; [x0 set识图判断失败行为:] x2, x3, x4, x5, x6, x7
    // 0x04f07c  bl       #0x6018c                                ; func_0x6018c
    // 0x04f080  mov      x0, x19                                 
    // 0x04f084  ldp      x29, x30, [sp, #0x20]                   
    // 0x04f088  b        #0x60240                                ; func_0x60240
}

- (void)选择失败跳转 {   // 0x4f08c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 选择失败跳转 即可补全。
    // 0x04f08c  stp      x28, x27, [sp, #-0x60]!                 
    // 0x04f090  stp      x26, x25, [sp, #0x10]                   
    // 0x04f094  stp      x24, x23, [sp, #0x20]                   
    // 0x04f098  stp      x22, x21, [sp, #0x30]                   
    // 0x04f09c  stp      x20, x19, [sp, #0x40]                   
    // 0x04f0a0  stp      x29, x30, [sp, #0x50]                   
    // 0x04f0a4  add      x29, sp, #0x50                          
    // 0x04f0a8  sub      sp, sp, #0x1e0                          
    // 0x04f0ac  str      x0, [sp]                                
    // 0x04f0b0  adrp     x8, #0x8c000                            
    // 0x04f0b4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04f0b8  ldr      x8, [x8]                                
    // 0x04f0bc  stur     x8, [x29, #-0x68]                       
    // 0x04f0c0  adrp     x27, #0xad000                           
    // 0x04f0c4  ldr      x0, [x27, #0xe8]                        ; class(CQStore)
    // 0x04f0c8  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x04f0cc  mov      x29, x29                                
    // 0x04f0d0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f0d4  mov      x19, x0                                 
    // 0x04f0d8  bl       #0x70700                                ; [class(CQStore) 动作列表] x2, x3, x4, x5, x6, x7
    // 0x04f0dc  mov      x29, x29                                
    // 0x04f0e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f0e4  mov      x22, x0                                 
    // 0x04f0e8  bl       #0x601b8                                ; func_0x601b8
}

- (void)刷新失败跳按钮 {   // 0x4f430
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 刷新失败跳按钮 即可补全。
    // 0x04f430  mov      x2, x30                                 
    // 0x04f434  bl       #0x61640                                ; func_0x61640
    // 0x04f438  mov      x30, x2                                 
    // 0x04f43c  stp      x29, x30, [sp, #0x60]                   
    // 0x04f440  add      x29, sp, #0x60                          
    // 0x04f444  mov      x19, x0                                 
    // 0x04f448  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04f44c  mov      x29, x29                                
    // 0x04f450  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f454  mov      x21, x0                                 
    // 0x04f458  bl       #0x73880                                ; [x0 识图判断跳转] x30, x3, x4, x5, x6, x7
    // 0x04f45c  mov      x29, x29                                
    // 0x04f460  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f464  bl       #0x60a08                                ; func_0x60a08
    // 0x04f468  mov      x20, x0                                 
    // 0x04f46c  bl       #0x6019c                                ; func_0x6019c
    // 0x04f470  bl       #0x6018c                                ; func_0x6018c
    // 0x04f474  mov      x0, x19                                 
    // 0x04f478  bl       #0x711e0                                ; [x0 失败跳按钮] x30, x3, x4, x5, x6, x7
    // 0x04f47c  mov      x29, x29                                
    // 0x04f480  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f484  mov      x21, x0                                 
    // 0x04f488  adrp     x8, #0xad000                            
    // 0x04f48c  ldr      x22, [x8, #0x98]                        ; class(?0x0)
}

- (void)识失败段变化:(id)识失败段变化 {   // 0x4f54c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 识失败段变化: 即可补全。
    // 0x04f54c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04f550  stp      x20, x19, [sp, #0x10]                   
    // 0x04f554  stp      x29, x30, [sp, #0x20]                   
    // 0x04f558  add      x29, sp, #0x20                          
    // 0x04f55c  bl       #0x6029c                                ; func_0x6029c
    // 0x04f560  bl       #0x60290                                ; func_0x60290
    // 0x04f564  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04f568  mov      x29, x29                                
    // 0x04f56c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f570  bl       #0x60498                                ; func_0x60498
    // 0x04f574  bl       #0x6ea40                                ; [x0 set识图失败行为:] x2, x3, x4, x5, x6, x7
    // 0x04f578  bl       #0x6018c                                ; func_0x6018c
    // 0x04f57c  mov      x0, x19                                 
    // 0x04f580  ldp      x29, x30, [sp, #0x20]                   
    // 0x04f584  b        #0x60240                                ; func_0x60240
}

- (void)选择识失败跳转 {   // 0x4f588
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 选择识失败跳转 即可补全。
    // 0x04f588  stp      x28, x27, [sp, #-0x60]!                 
    // 0x04f58c  stp      x26, x25, [sp, #0x10]                   
    // 0x04f590  stp      x24, x23, [sp, #0x20]                   
    // 0x04f594  stp      x22, x21, [sp, #0x30]                   
    // 0x04f598  stp      x20, x19, [sp, #0x40]                   
    // 0x04f59c  stp      x29, x30, [sp, #0x50]                   
    // 0x04f5a0  add      x29, sp, #0x50                          
    // 0x04f5a4  sub      sp, sp, #0x1e0                          
    // 0x04f5a8  str      x0, [sp]                                
    // 0x04f5ac  adrp     x8, #0x8c000                            
    // 0x04f5b0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04f5b4  ldr      x8, [x8]                                
    // 0x04f5b8  stur     x8, [x29, #-0x68]                       
    // 0x04f5bc  adrp     x27, #0xad000                           
    // 0x04f5c0  ldr      x0, [x27, #0xe8]                        ; class(CQStore)
    // 0x04f5c4  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x04f5c8  mov      x29, x29                                
    // 0x04f5cc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f5d0  mov      x19, x0                                 
    // 0x04f5d4  bl       #0x70700                                ; [class(CQStore) 动作列表] x2, x3, x4, x5, x6, x7
    // 0x04f5d8  mov      x29, x29                                
    // 0x04f5dc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f5e0  mov      x22, x0                                 
    // 0x04f5e4  bl       #0x601b8                                ; func_0x601b8
}

- (void)刷新识失败跳按钮 {   // 0x4f92c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 刷新识失败跳按钮 即可补全。
    // 0x04f92c  mov      x2, x30                                 
    // 0x04f930  bl       #0x61640                                ; func_0x61640
    // 0x04f934  mov      x30, x2                                 
    // 0x04f938  stp      x29, x30, [sp, #0x60]                   
    // 0x04f93c  add      x29, sp, #0x60                          
    // 0x04f940  mov      x19, x0                                 
    // 0x04f944  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x04f948  mov      x29, x29                                
    // 0x04f94c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f950  mov      x21, x0                                 
    // 0x04f954  bl       #0x738e0                                ; [x0 识图失败跳转] x30, x3, x4, x5, x6, x7
    // 0x04f958  mov      x29, x29                                
    // 0x04f95c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f960  bl       #0x60a08                                ; func_0x60a08
    // 0x04f964  mov      x20, x0                                 
    // 0x04f968  bl       #0x6019c                                ; func_0x6019c
    // 0x04f96c  bl       #0x6018c                                ; func_0x6018c
    // 0x04f970  mov      x0, x19                                 
    // 0x04f974  bl       #0x73a60                                ; [x0 识失败跳按钮] x30, x3, x4, x5, x6, x7
    // 0x04f978  mov      x29, x29                                
    // 0x04f97c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04f980  mov      x21, x0                                 
    // 0x04f984  adrp     x8, #0xad000                            
    // 0x04f988  ldr      x22, [x8, #0x98]                        ; class(?0x0)
}

- (void)裁切模板 {   // 0x4fa48
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 裁切模板 即可补全。
    // 0x04fa48  sub      sp, sp, #0xa0                           
    // 0x04fa4c  stp      d9, d8, [sp, #0x60]                     
    // 0x04fa50  stp      x22, x21, [sp, #0x70]                   
    // 0x04fa54  stp      x20, x19, [sp, #0x80]                   
    // 0x04fa58  stp      x29, x30, [sp, #0x90]                   
    // 0x04fa5c  add      x29, sp, #0x90                          
    // 0x04fa60  mov      x19, x0                                 
    // 0x04fa64  mov      w2, #1                                  
    // 0x04fa68  bl       #0x73780                                ; [x0 设置界面隐藏:] x2, x3, x4, x5, x6, x7
    // 0x04fa6c  sub      x0, x29, #0x38                          
    // 0x04fa70  bl       #0x60ee0                                ; func_0x60ee0
    // 0x04fa74  adrp     x8, #0xad000                            
    // 0x04fa78  ldr      x21, [x8, #0x480]                       ; class(模板裁切视图)
    // 0x04fa7c  adrp     x20, #0x8c000                           
    // 0x04fa80  ldr      x20, [x20, #0xd8]                       ; ptr_0x8c0d8
    // 0x04fa84  str      x20, [sp, #0x30]                        
    // 0x04fa88  adrp     x8, #0x7b000                            
    // 0x04fa8c  ldr      d8, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x04fa90  str      d8, [sp, #0x38]                         
    // 0x04fa94  adrp     x8, #0x4f000                            
    // 0x04fa98  add      x8, x8, #0xb38                          
    // 0x04fa9c  adrp     x9, #0x8d000                            
    // 0x04faa0  add      x9, x9, #0x938                          
    // 0x04faa4  stp      x8, x9, [sp, #0x40]                     
}

- (void)刷新预览 {   // 0x4fda0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 刷新预览 即可补全。
    // 0x04fda0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04fda4  stp      x20, x19, [sp, #0x10]                   
    // 0x04fda8  stp      x29, x30, [sp, #0x20]                   
    // 0x04fdac  add      x29, sp, #0x20                          
    // 0x04fdb0  mov      x19, x0                                 
    // 0x04fdb4  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04fdb8  mov      x29, x29                                
    // 0x04fdbc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fdc0  mov      x20, x0                                 
    // 0x04fdc4  bl       #0x71040                                ; [x0 图片] x2, x3, x4, x5, x6, x7
    // 0x04fdc8  mov      x29, x29                                
    // 0x04fdcc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fdd0  bl       #0x609a0                                ; func_0x609a0
    // 0x04fdd4  bl       #0x74a20                                ; [x0 预览] x2, x3, x4, x5, x6, x7
    // 0x04fdd8  mov      x29, x29                                
    // 0x04fddc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fde0  mov      x19, x0                                 
    // 0x04fde4  mov      x2, x21                                 
    // 0x04fde8  bl       #0x6c380                                ; [x0 setImage:] x21, x3, x4, x5, x6, x7
    // 0x04fdec  bl       #0x601b8                                ; func_0x601b8
    // 0x04fdf0  bl       #0x6018c                                ; func_0x6018c
    // 0x04fdf4  mov      x0, x20                                 
    // 0x04fdf8  ldp      x29, x30, [sp, #0x20]                   
    // 0x04fdfc  b        #0x601c0                                ; func_0x601c0
}

- (void)刷新区域行 {   // 0x4fe00
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 刷新区域行 即可补全。
    // 0x04fe00  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04fe04  stp      x20, x19, [sp, #0x10]                   
    // 0x04fe08  stp      x29, x30, [sp, #0x20]                   
    // 0x04fe0c  add      x29, sp, #0x20                          
    // 0x04fe10  mov      x19, x0                                 
    // 0x04fe14  bl       #0x71360                                ; [x0 宽行] x2, x3, x4, x5, x6, x7
    // 0x04fe18  mov      x29, x29                                
    // 0x04fe1c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fe20  bl       #0x60290                                ; func_0x60290
    // 0x04fe24  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04fe28  mov      x29, x29                                
    // 0x04fe2c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fe30  bl       #0x609ac                                ; func_0x609ac
    // 0x04fe34  fmov     d0, d2                                  
    // 0x04fe38  mov      x0, x20                                 
    // 0x04fe3c  bl       #0x73f40                                ; [x20 赋值:] x2, x3, x4, x5, x6, x7
    // 0x04fe40  bl       #0x6018c                                ; func_0x6018c
    // 0x04fe44  bl       #0x60184                                ; func_0x60184
    // 0x04fe48  mov      x0, x19                                 
    // 0x04fe4c  bl       #0x74a60                                ; [x0 高行] x2, x3, x4, x5, x6, x7
    // 0x04fe50  mov      x29, x29                                
    // 0x04fe54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fe58  bl       #0x60290                                ; func_0x60290
    // 0x04fe5c  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
}

- (void)测试匹配 {   // 0x4fe88
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 测试匹配 即可补全。
    // 0x04fe88  sub      sp, sp, #0xd0                           
    // 0x04fe8c  stp      d11, d10, [sp, #0x50]                   
    // 0x04fe90  stp      d9, d8, [sp, #0x60]                     
    // 0x04fe94  stp      x28, x27, [sp, #0x70]                   
    // 0x04fe98  stp      x26, x25, [sp, #0x80]                   
    // 0x04fe9c  stp      x24, x23, [sp, #0x90]                   
    // 0x04fea0  stp      x22, x21, [sp, #0xa0]                   
    // 0x04fea4  stp      x20, x19, [sp, #0xb0]                   
    // 0x04fea8  stp      x29, x30, [sp, #0xc0]                   
    // 0x04feac  add      x29, sp, #0xc0                          
    // 0x04feb0  mov      x19, x0                                 
    // 0x04feb4  bl       #0x706c0                                ; [x0 动作] x2, x3, x4, x5, x6, x7
    // 0x04feb8  mov      x29, x29                                
    // 0x04febc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fec0  mov      x20, x0                                 
    // 0x04fec4  bl       #0x71040                                ; [x0 图片] x2, x3, x4, x5, x6, x7
    // 0x04fec8  mov      x29, x29                                
    // 0x04fecc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04fed0  bl       #0x60c20                                ; func_0x60c20
    // 0x04fed4  bl       #0x60184                                ; func_0x60184
    // 0x04fed8  cbz      x21, #0x500f4                           
    // 0x04fedc  adrp     x8, #0xad000                            
    // 0x04fee0  ldr      x20, [x8, #0x208]                       ; class(CQScreenshot)
    // 0x04fee4  mov      x0, x19                                 
}

- (id)预览 {   // 0x50118
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 预览 即可补全。
    // 0x050118  adrp     x8, #0xad000                            
    // 0x05011c  ldrsw    x8, [x8, #0xb38]                        
    // 0x050120  b        #0x601f8                                ; func_0x601f8
}

- (void)set预览:(id)set预览 {   // 0x50124
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set预览: 即可补全。
    // 0x050124  mov      x1, x2                                  
    // 0x050128  adrp     x8, #0xad000                            
    // 0x05012c  ldrsw    x8, [x8, #0xb38]                        
    // 0x050130  b        #0x60194                                ; func_0x60194
}

- (id)宽行 {   // 0x50134
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 宽行 即可补全。
    // 0x050134  adrp     x8, #0xad000                            
    // 0x050138  ldrsw    x8, [x8, #0xb3c]                        
    // 0x05013c  b        #0x601f8                                ; func_0x601f8
}

- (void)set宽行:(id)set宽行 {   // 0x50140
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set宽行: 即可补全。
    // 0x050140  mov      x1, x2                                  
    // 0x050144  adrp     x8, #0xad000                            
    // 0x050148  ldrsw    x8, [x8, #0xb3c]                        
    // 0x05014c  b        #0x60194                                ; func_0x60194
}

- (id)高行 {   // 0x50150
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 高行 即可补全。
    // 0x050150  adrp     x8, #0xad000                            
    // 0x050154  ldrsw    x8, [x8, #0xb40]                        
    // 0x050158  b        #0x601f8                                ; func_0x601f8
}

- (void)set高行:(id)set高行 {   // 0x5015c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set高行: 即可补全。
    // 0x05015c  mov      x1, x2                                  
    // 0x050160  adrp     x8, #0xad000                            
    // 0x050164  ldrsw    x8, [x8, #0xb40]                        
    // 0x050168  b        #0x60194                                ; func_0x60194
}

- (id)命中段 {   // 0x5016c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中段 即可补全。
    // 0x05016c  adrp     x8, #0xad000                            
    // 0x050170  ldrsw    x8, [x8, #0xb44]                        
    // 0x050174  b        #0x601f8                                ; func_0x601f8
}

- (void)set命中段:(id)set命中段 {   // 0x50178
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set命中段: 即可补全。
    // 0x050178  mov      x1, x2                                  
    // 0x05017c  adrp     x8, #0xad000                            
    // 0x050180  ldrsw    x8, [x8, #0xb44]                        
    // 0x050184  b        #0x60194                                ; func_0x60194
}

- (id)跳转按钮 {   // 0x50188
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 跳转按钮 即可补全。
    // 0x050188  adrp     x8, #0xad000                            
    // 0x05018c  ldrsw    x8, [x8, #0xb48]                        
    // 0x050190  b        #0x601f8                                ; func_0x601f8
}

- (void)set跳转按钮:(id)set跳转按钮 {   // 0x50194
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set跳转按钮: 即可补全。
    // 0x050194  mov      x1, x2                                  
    // 0x050198  adrp     x8, #0xad000                            
    // 0x05019c  ldrsw    x8, [x8, #0xb48]                        
    // 0x0501a0  b        #0x60194                                ; func_0x60194
}

- (id)路径编辑器 {   // 0x501a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 路径编辑器 即可补全。
    // 0x0501a4  adrp     x8, #0xad000                            
    // 0x0501a8  ldrsw    x8, [x8, #0xb4c]                        
    // 0x0501ac  b        #0x601f8                                ; func_0x601f8
}

- (void)set路径编辑器:(id)set路径编辑器 {   // 0x501b0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set路径编辑器: 即可补全。
    // 0x0501b0  mov      x1, x2                                  
    // 0x0501b4  adrp     x8, #0xad000                            
    // 0x0501b8  ldrsw    x8, [x8, #0xb4c]                        
    // 0x0501bc  b        #0x60194                                ; func_0x60194
}

- (id)命中长按行 {   // 0x501c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中长按行 即可补全。
    // 0x0501c0  adrp     x8, #0xad000                            
    // 0x0501c4  ldrsw    x8, [x8, #0xb50]                        
    // 0x0501c8  b        #0x601f8                                ; func_0x601f8
}

- (void)set命中长按行:(id)set命中长按行 {   // 0x501cc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set命中长按行: 即可补全。
    // 0x0501cc  mov      x1, x2                                  
    // 0x0501d0  adrp     x8, #0xad000                            
    // 0x0501d4  ldrsw    x8, [x8, #0xb50]                        
    // 0x0501d8  b        #0x60194                                ; func_0x60194
}

- (id)命中滑时行 {   // 0x501dc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中滑时行 即可补全。
    // 0x0501dc  adrp     x8, #0xad000                            
    // 0x0501e0  ldrsw    x8, [x8, #0xb54]                        
    // 0x0501e4  b        #0x601f8                                ; func_0x601f8
}

- (void)set命中滑时行:(id)set命中滑时行 {   // 0x501e8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set命中滑时行: 即可补全。
    // 0x0501e8  mov      x1, x2                                  
    // 0x0501ec  adrp     x8, #0xad000                            
    // 0x0501f0  ldrsw    x8, [x8, #0xb54]                        
    // 0x0501f4  b        #0x60194                                ; func_0x60194
}

- (id)命中帧数行 {   // 0x501f8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中帧数行 即可补全。
    // 0x0501f8  adrp     x8, #0xad000                            
    // 0x0501fc  ldrsw    x8, [x8, #0xb58]                        
    // 0x050200  b        #0x601f8                                ; func_0x601f8
}

- (void)set命中帧数行:(id)set命中帧数行 {   // 0x50204
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set命中帧数行: 即可补全。
    // 0x050204  mov      x1, x2                                  
    // 0x050208  adrp     x8, #0xad000                            
    // 0x05020c  ldrsw    x8, [x8, #0xb58]                        
    // 0x050210  b        #0x60194                                ; func_0x60194
}

- (id)命中时隔行 {   // 0x50214
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 命中时隔行 即可补全。
    // 0x050214  adrp     x8, #0xad000                            
    // 0x050218  ldrsw    x8, [x8, #0xb5c]                        
    // 0x05021c  b        #0x601f8                                ; func_0x601f8
}

- (void)set命中时隔行:(id)set命中时隔行 {   // 0x50220
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set命中时隔行: 即可补全。
    // 0x050220  mov      x1, x2                                  
    // 0x050224  adrp     x8, #0xad000                            
    // 0x050228  ldrsw    x8, [x8, #0xb5c]                        
    // 0x05022c  b        #0x60194                                ; func_0x60194
}

- (id)判断段 {   // 0x50230
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 判断段 即可补全。
    // 0x050230  adrp     x8, #0xad000                            
    // 0x050234  ldrsw    x8, [x8, #0xb60]                        
    // 0x050238  b        #0x601f8                                ; func_0x601f8
}

- (void)set判断段:(id)set判断段 {   // 0x5023c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set判断段: 即可补全。
    // 0x05023c  mov      x1, x2                                  
    // 0x050240  adrp     x8, #0xad000                            
    // 0x050244  ldrsw    x8, [x8, #0xb60]                        
    // 0x050248  b        #0x60194                                ; func_0x60194
}

- (id)失败段 {   // 0x5024c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 失败段 即可补全。
    // 0x05024c  adrp     x8, #0xad000                            
    // 0x050250  ldrsw    x8, [x8, #0xb64]                        
    // 0x050254  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败段:(id)set失败段 {   // 0x50258
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set失败段: 即可补全。
    // 0x050258  mov      x1, x2                                  
    // 0x05025c  adrp     x8, #0xad000                            
    // 0x050260  ldrsw    x8, [x8, #0xb64]                        
    // 0x050264  b        #0x60194                                ; func_0x60194
}

- (id)失败跳按钮 {   // 0x50268
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 失败跳按钮 即可补全。
    // 0x050268  adrp     x8, #0xad000                            
    // 0x05026c  ldrsw    x8, [x8, #0xb68]                        
    // 0x050270  b        #0x601f8                                ; func_0x601f8
}

- (void)set失败跳按钮:(id)set失败跳按钮 {   // 0x50274
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set失败跳按钮: 即可补全。
    // 0x050274  mov      x1, x2                                  
    // 0x050278  adrp     x8, #0xad000                            
    // 0x05027c  ldrsw    x8, [x8, #0xb68]                        
    // 0x050280  b        #0x60194                                ; func_0x60194
}

- (id)识失败段 {   // 0x50284
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 识失败段 即可补全。
    // 0x050284  adrp     x8, #0xad000                            
    // 0x050288  ldrsw    x8, [x8, #0xb6c]                        
    // 0x05028c  b        #0x601f8                                ; func_0x601f8
}

- (void)set识失败段:(id)set识失败段 {   // 0x50290
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set识失败段: 即可补全。
    // 0x050290  mov      x1, x2                                  
    // 0x050294  adrp     x8, #0xad000                            
    // 0x050298  ldrsw    x8, [x8, #0xb6c]                        
    // 0x05029c  b        #0x60194                                ; func_0x60194
}

- (id)识失败跳按钮 {   // 0x502a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 识失败跳按钮 即可补全。
    // 0x0502a0  adrp     x8, #0xad000                            
    // 0x0502a4  ldrsw    x8, [x8, #0xb70]                        
    // 0x0502a8  b        #0x601f8                                ; func_0x601f8
}

- (void)set识失败跳按钮:(id)set识失败跳按钮 {   // 0x502ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 识图选择视图 set识失败跳按钮: 即可补全。
    // 0x0502ac  mov      x1, x2                                  
    // 0x0502b0  adrp     x8, #0xad000                            
    // 0x0502b4  ldrsw    x8, [x8, #0xb70]                        
    // 0x0502b8  b        #0x60194                                ; func_0x60194
}

@end