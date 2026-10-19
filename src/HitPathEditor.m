//
//  命中路径编辑器.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 命中路径编辑器

- (id)init {   // 0x4a82c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 init 即可补全。
    // 0x04a82c  sub      sp, sp, #0x30                           
    // 0x04a830  stp      x20, x19, [sp, #0x10]                   
    // 0x04a834  stp      x29, x30, [sp, #0x20]                   
    // 0x04a838  add      x29, sp, #0x20                          
    // 0x04a83c  adrp     x8, #0xad000                            
    // 0x04a840  ldr      x8, [x8, #0x570]                        ; class(命中路径编辑器)
    // 0x04a844  stp      x0, x8, [sp]                            
    // 0x04a848  adrp     x8, #0xaa000                            
    // 0x04a84c  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x04a850  mov      x0, sp                                  
    // 0x04a854  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x04a858  mov      x19, x0                                 
    // 0x04a85c  cbz      x0, #0x4a8d8                            
    // 0x04a860  adrp     x20, #0xad000                           
    // 0x04a864  ldr      x0, [x20, #0x170]                       ; class(?0x0)
    // 0x04a868  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x04a86c  mov      x29, x29                                
    // 0x04a870  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a874  ldr      x8, [x19, #8]                           
    // 0x04a878  str      x0, [x19, #8]                           
    // 0x04a87c  bl       #0x603c4                                ; func_0x603c4
    // 0x04a880  ldr      x0, [x20, #0x170]                       ; class(?0x0)
    // 0x04a884  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x04a888  mov      x29, x29                                
}

- (void)set路径点:(NSArray *)set路径点 {   // 0x4a91c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set路径点: 即可补全。
    // 0x04a91c  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04a920  stp      x29, x30, [sp, #0x10]                   
    // 0x04a924  add      x29, sp, #0x10                          
    // 0x04a928  bl       #0x61290                                ; func_0x61290
    // 0x04a92c  bl       #0x6a700                                ; [x0 copy] x2, x3, x4, x5, x6, x7
    // 0x04a930  mov      x20, x0                                 
    // 0x04a934  adrp     x8, #0x8c000                            
    // 0x04a938  ldr      x8, [x8, #0xe0]                         ; ptr_0x8c0e0
    // 0x04a93c  ldr      x8, [x8]                                
    // 0x04a940  cmp      x0, #0                                  
    // 0x04a944  csel     x1, x8, x0, eq                          
    // 0x04a948  add      x0, x19, #0x48                          
    // 0x04a94c  bl       #0x690a0                                ; _objc_storeStrong
    // 0x04a950  bl       #0x60184                                ; func_0x60184
    // 0x04a954  mov      x0, x19                                 
    // 0x04a958  ldp      x29, x30, [sp, #0x10]                   
    // 0x04a95c  ldp      x20, x19, [sp], #0x20                   
    // 0x04a960  b        #0x70420                                ; [x19 刷新] x2, x3, x4, x5, x6, x7
}

- (void)布局 {   // 0x4a964
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 布局 即可补全。
    // 0x04a964  stp      d11, d10, [sp, #-0x60]!                 
    // 0x04a968  stp      d9, d8, [sp, #0x10]                     
    // 0x04a96c  stp      x24, x23, [sp, #0x20]                   
    // 0x04a970  stp      x22, x21, [sp, #0x30]                   
    // 0x04a974  stp      x20, x19, [sp, #0x40]                   
    // 0x04a978  stp      x29, x30, [sp, #0x50]                   
    // 0x04a97c  add      x29, sp, #0x50                          
    // 0x04a980  mov      x19, x0                                 
    // 0x04a984  bl       #0x71340                                ; [x0 容器] x2, x3, x4, x5, x6, x7
    // 0x04a988  mov      x29, x29                                
    // 0x04a98c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a990  mov      x20, x0                                 
    // 0x04a994  cbnz     x0, #0x4a9b0                            
    // 0x04a998  mov      x0, x19                                 
    // 0x04a99c  bl       #0x748a0                                ; [x0 面板] x2, x3, x4, x5, x6, x7
    // 0x04a9a0  mov      x29, x29                                
    // 0x04a9a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04a9a8  mov      x20, x0                                 
    // 0x04a9ac  cbz      x0, #0x4acbc                            
    // 0x04a9b0  ldr      x0, [x19, #0x20]                        
    // 0x04a9b4  cbnz     x0, #0x4ab84                            
    // 0x04a9b8  adrp     x8, #0xad000                            
    // 0x04a9bc  ldr      x0, [x8, #0x2f0]                        ; class(?0x0)
    // 0x04a9c0  bl       #0x68f5c                                ; _objc_alloc
}

- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection {   // 0x4acc4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 tableView:numberOfRowsInSection: 即可补全。
    // 0x04acc4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04acc8  stp      x29, x30, [sp, #0x10]                   
    // 0x04accc  add      x29, sp, #0x10                          
    // 0x04acd0  bl       #0x74200                                ; [x0 路径点] x2, x3, x4, x5, x6, x7
    // 0x04acd4  mov      x29, x29                                
    // 0x04acd8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04acdc  bl       #0x62204                                ; func_0x62204
    // 0x04ace0  mov      x20, x0                                 
    // 0x04ace4  bl       #0x601b8                                ; func_0x601b8
    // 0x04ace8  mov      x0, x20                                 
    // 0x04acec  ldp      x29, x30, [sp, #0x10]                   
    // 0x04acf0  ldp      x20, x19, [sp], #0x20                   
    // 0x04acf4  ret                                              
}

- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath {   // 0x4acf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 tableView:cellForRowAtIndexPath: 即可补全。
    // 0x04acf8  sub      sp, sp, #0x70                           
    // 0x04acfc  stp      d9, d8, [sp, #0x20]                     
    // 0x04ad00  stp      x24, x23, [sp, #0x30]                   
    // 0x04ad04  stp      x22, x21, [sp, #0x40]                   
    // 0x04ad08  stp      x20, x19, [sp, #0x50]                   
    // 0x04ad0c  stp      x29, x30, [sp, #0x60]                   
    // 0x04ad10  add      x29, sp, #0x60                          
    // 0x04ad14  mov      x20, x2                                 
    // 0x04ad18  bl       #0x61590                                ; func_0x61590
    // 0x04ad1c  mov      x19, x0                                 
    // 0x04ad20  adrp     x2, #0x93000                            
    // 0x04ad24  add      x2, x2, #0x4d0                          
    // 0x04ad28  mov      x0, x20                                 
    // 0x04ad2c  mov      x3, x19                                 
    // 0x04ad30  bl       #0x6aa20                                ; [x2 dequeueReusableCellWithIdentifier:forIndexPath:] x2, x0, x4, x5, x6, x7
    // 0x04ad34  mov      x29, x29                                
    // 0x04ad38  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04ad3c  mov      x20, x0                                 
    // 0x04ad40  adrp     x8, #0xad000                            
    // 0x04ad44  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x04ad48  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x0, x4, x5, x6, x7
    // 0x04ad4c  mov      x29, x29                                
    // 0x04ad50  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04ad54  mov      x22, x0                                 
}

- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath {   // 0x4aec4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 tableView:didSelectRowAtIndexPath: 即可补全。
    // 0x04aec4  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04aec8  stp      x29, x30, [sp, #0x10]                   
    // 0x04aecc  add      x29, sp, #0x10                          
    // 0x04aed0  mov      x19, x0                                 
    // 0x04aed4  mov      x0, x3                                  
    // 0x04aed8  bl       #0x6bb60                                ; [x3 row] x2, x3, x4, x5, x6, x7
    // 0x04aedc  mov      x2, x0                                  
    // 0x04aee0  mov      x0, x19                                 
    // 0x04aee4  ldp      x29, x30, [sp, #0x10]                   
    // 0x04aee8  ldp      x20, x19, [sp], #0x20                   
    // 0x04aeec  b        #0x703c0                                ; [x0 删除点:] x3, x3, x4, x5, x6, x7
}

- (id)点字母:(long long)点字母 {   // 0x4aef0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 点字母: 即可补全。
    // 0x04aef0  sub      sp, sp, #0x20                           
    // 0x04aef4  stp      x29, x30, [sp, #0x10]                   
    // 0x04aef8  add      x29, sp, #0x10                          
    // 0x04aefc  adrp     x8, #0xad000                            
    // 0x04af00  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x04af04  cmp      x2, #0x1a                               
    // 0x04af08  b.lo     #0x4af1c                                
    // 0x04af0c  str      x2, [sp]                                
    // 0x04af10  adrp     x2, #0x8f000                            
    // 0x04af14  add      x2, x2, #0x830                          
    // 0x04af18  b        #0x4af2c                                
    // 0x04af1c  add      w8, w2, #0x41                           
    // 0x04af20  str      x8, [sp]                                
    // 0x04af24  adrp     x2, #0x93000                            
    // 0x04af28  add      x2, x2, #0x10                           
    // 0x04af2c  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x04af30  mov      x29, x29                                
    // 0x04af34  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04af38  ldp      x29, x30, [sp, #0x10]                   
    // 0x04af3c  b        #0x6130c                                ; func_0x6130c
}

- (void)添加点 {   // 0x4af40
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 添加点 即可补全。
    // 0x04af40  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04af44  stp      x20, x19, [sp, #0x10]                   
    // 0x04af48  stp      x29, x30, [sp, #0x20]                   
    // 0x04af4c  add      x29, sp, #0x20                          
    // 0x04af50  mov      x19, x0                                 
    // 0x04af54  bl       #0x74200                                ; [x0 路径点] x2, x3, x4, x5, x6, x7
    // 0x04af58  mov      x29, x29                                
    // 0x04af5c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04af60  bl       #0x60abc                                ; func_0x60abc
    // 0x04af64  mov      x21, x0                                 
    // 0x04af68  bl       #0x60184                                ; func_0x60184
    // 0x04af6c  cmp      x21, #0x19                              
    // 0x04af70  b.lo     #0x4af9c                                
    // 0x04af74  adrp     x8, #0xad000                            
    // 0x04af78  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x04af7c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x04af80  mov      x29, x29                                
    // 0x04af84  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04af88  mov      x20, x0                                 
    // 0x04af8c  adrp     x2, #0x93000                            
    // 0x04af90  add      x2, x2, #0x530                          
    // 0x04af94  bl       #0x71e60                                ; [class(CQOverlay) 提示:] x2, x3, x4, x5, x6, x7
    // 0x04af98  b        #0x4b010                                
    // 0x04af9c  mov      x0, x19                                 
}

- (void)删除点:(long long)删除点 {   // 0x4b01c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 删除点: 即可补全。
    // 0x04b01c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04b020  stp      x20, x19, [sp, #0x10]                   
    // 0x04b024  stp      x29, x30, [sp, #0x20]                   
    // 0x04b028  add      x29, sp, #0x20                          
    // 0x04b02c  tbnz     x2, #0x3f, #0x4b09c                     
    // 0x04b030  mov      x20, x2                                 
    // 0x04b034  mov      x19, x0                                 
    // 0x04b038  bl       #0x74200                                ; [x0 路径点] x2, x3, x4, x5, x6, x7
    // 0x04b03c  mov      x29, x29                                
    // 0x04b040  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b044  bl       #0x60a94                                ; func_0x60a94
    // 0x04b048  mov      x22, x0                                 
    // 0x04b04c  bl       #0x6018c                                ; func_0x6018c
    // 0x04b050  cmp      x22, x20                                
    // 0x04b054  b.le     #0x4b09c                                
    // 0x04b058  mov      x0, x19                                 
    // 0x04b05c  bl       #0x74200                                ; [x0 路径点] x2, x3, x4, x5, x6, x7
    // 0x04b060  mov      x29, x29                                
    // 0x04b064  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b068  mov      x21, x0                                 
    // 0x04b06c  bl       #0x6b540                                ; [x0 mutableCopy] x2, x3, x4, x5, x6, x7
    // 0x04b070  mov      x22, x0                                 
    // 0x04b074  bl       #0x6018c                                ; func_0x6018c
    // 0x04b078  mov      x0, x22                                 
}

- (void)提交:(id)提交 {   // 0x4b0a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 提交: 即可补全。
    // 0x04b0a4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x04b0a8  stp      x20, x19, [sp, #0x10]                   
    // 0x04b0ac  stp      x29, x30, [sp, #0x20]                   
    // 0x04b0b0  add      x29, sp, #0x20                          
    // 0x04b0b4  mov      x20, x0                                 
    // 0x04b0b8  bl       #0x60364                                ; func_0x60364
    // 0x04b0bc  mov      x19, x0                                 
    // 0x04b0c0  bl       #0x6123c                                ; func_0x6123c
    // 0x04b0c4  bl       #0x6f080                                ; [x0 set路径点:] x2, x3, x4, x5, x6, x7
    // 0x04b0c8  mov      x0, x20                                 
    // 0x04b0cc  bl       #0x70c00                                ; [x0 变化] x2, x3, x4, x5, x6, x7
    // 0x04b0d0  mov      x29, x29                                
    // 0x04b0d4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b0d8  bl       #0x60c20                                ; func_0x60c20
    // 0x04b0dc  cbz      x21, #0x4b104                           
    // 0x04b0e0  mov      x0, x20                                 
    // 0x04b0e4  bl       #0x70c00                                ; [x0 变化] x2, x3, x4, x5, x6, x7
    // 0x04b0e8  mov      x29, x29                                
    // 0x04b0ec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b0f0  mov      x20, x0                                 
    // 0x04b0f4  ldr      x8, [x0, #0x10]                         
    // 0x04b0f8  mov      x1, x19                                 
    // 0x04b0fc  blr      x8                                      
    // 0x04b100  bl       #0x60184                                ; func_0x60184
}

- (void)刷新 {   // 0x4b110
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 刷新 即可补全。
    // 0x04b110  stp      x20, x19, [sp, #-0x20]!                 
    // 0x04b114  stp      x29, x30, [sp, #0x10]                   
    // 0x04b118  add      x29, sp, #0x10                          
    // 0x04b11c  mov      x19, x0                                 
    // 0x04b120  bl       #0x745c0                                ; [x0 重建列表] x2, x3, x4, x5, x6, x7
    // 0x04b124  mov      x0, x19                                 
    // 0x04b128  ldp      x29, x30, [sp, #0x10]                   
    // 0x04b12c  ldp      x20, x19, [sp], #0x20                   
    // 0x04b130  b        #0x745e0                                ; [x0 重建标记] x2, x3, x4, x5, x6, x7
}

- (void)重建列表 {   // 0x4b134
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 重建列表 即可补全。
    // 0x04b134  ldr      x0, [x0, #0x20]                         
    // 0x04b138  cbz      x0, #0x4b140                            
    // 0x04b13c  b        #0x6b900                                ; [x0 reloadData] x2, x3, x4, x5, x6, x7
    // 0x04b140  ret                                              
}

- (id)命中测试:(CGPoint)命中测试 事件:(id)事件 {   // 0x4b144
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 命中测试:事件: 即可补全。
    // 0x04b144  sub      sp, sp, #0x140                          
    // 0x04b148  stp      d9, d8, [sp, #0xd0]                     
    // 0x04b14c  stp      x28, x27, [sp, #0xe0]                   
    // 0x04b150  stp      x26, x25, [sp, #0xf0]                   
    // 0x04b154  stp      x24, x23, [sp, #0x100]                  
    // 0x04b158  stp      x22, x21, [sp, #0x110]                  
    // 0x04b15c  stp      x20, x19, [sp, #0x120]                  
    // 0x04b160  stp      x29, x30, [sp, #0x130]                  
    // 0x04b164  add      x29, sp, #0x130                         
    // 0x04b168  bl       #0x610d4                                ; func_0x610d4
    // 0x04b16c  adrp     x8, #0x8c000                            
    // 0x04b170  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04b174  ldr      x8, [x8]                                
    // 0x04b178  stur     x8, [x29, #-0x68]                       
    // 0x04b17c  bl       #0x60364                                ; func_0x60364
    // 0x04b180  mov      x19, x0                                 
    // 0x04b184  mov      x0, x20                                 
    // 0x04b188  bl       #0x71380                                ; [x20 宿主] x2, x3, x4, x5, x6, x7
    // 0x04b18c  mov      x29, x29                                
    // 0x04b190  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b194  bl       #0x60c20                                ; func_0x60c20
    // 0x04b198  cbz      x21, #0x4b244                           
    // 0x04b19c  bl       #0x61070                                ; func_0x61070
    // 0x04b1a0  ldr      x0, [x20, #8]                           
}

- (void)重建标记 {   // 0x4b2a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 重建标记 即可补全。
    // 0x04b2a0  stp      d13, d12, [sp, #-0x90]!                 
    // 0x04b2a4  mov      x2, x30                                 
    // 0x04b2a8  bl       #0x603cc                                ; func_0x603cc
    // 0x04b2ac  mov      x30, x2                                 
    // 0x04b2b0  stp      x29, x30, [sp, #0x80]                   
    // 0x04b2b4  add      x29, sp, #0x80                          
    // 0x04b2b8  sub      sp, sp, #0x260                          
    // 0x04b2bc  mov      x19, x0                                 
    // 0x04b2c0  adrp     x8, #0x8c000                            
    // 0x04b2c4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04b2c8  ldr      x8, [x8]                                
    // 0x04b2cc  stur     x8, [x29, #-0x90]                       
    // 0x04b2d0  bl       #0x71380                                ; [x0 宿主] x30, x3, x4, x5, x6, x7
    // 0x04b2d4  mov      x29, x29                                
    // 0x04b2d8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b2dc  bl       #0x61bfc                                ; func_0x61bfc
    // 0x04b2e0  cbz      x20, #0x4b31c                           
    // 0x04b2e4  mov      x0, x19                                 
    // 0x04b2e8  bl       #0x74200                                ; [x0 路径点] x30, x3, x4, x5, x6, x7
    // 0x04b2ec  mov      x29, x29                                
    // 0x04b2f0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b2f4  bl       #0x60a94                                ; func_0x60a94
    // 0x04b2f8  str      x0, [sp, #8]                            
    // 0x04b2fc  add      x20, x0, #1                             
}

- (void)摆放标记 {   // 0x4b810
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 摆放标记 即可补全。
    // 0x04b810  sub      sp, sp, #0x130                          
    // 0x04b814  stp      d15, d14, [sp, #0x90]                   
    // 0x04b818  stp      d13, d12, [sp, #0xa0]                   
    // 0x04b81c  stp      d11, d10, [sp, #0xb0]                   
    // 0x04b820  stp      d9, d8, [sp, #0xc0]                     
    // 0x04b824  stp      x28, x27, [sp, #0xd0]                   
    // 0x04b828  stp      x26, x25, [sp, #0xe0]                   
    // 0x04b82c  stp      x24, x23, [sp, #0xf0]                   
    // 0x04b830  stp      x22, x21, [sp, #0x100]                  
    // 0x04b834  stp      x20, x19, [sp, #0x110]                  
    // 0x04b838  stp      x29, x30, [sp, #0x120]                  
    // 0x04b83c  add      x29, sp, #0x120                         
    // 0x04b840  mov      x19, x0                                 
    // 0x04b844  bl       #0x74200                                ; [x0 路径点] x2, x3, x4, x5, x6, x7
    // 0x04b848  mov      x29, x29                                
    // 0x04b84c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04b850  bl       #0x60a94                                ; func_0x60a94
    // 0x04b854  mov      x20, x0                                 
    // 0x04b858  bl       #0x6018c                                ; func_0x6018c
    // 0x04b85c  mov      x21, #0                                 
    // 0x04b860  adrp     x24, #0xad000                           
    // 0x04b864  adrp     x8, #0x7b000                            
    // 0x04b868  ldr      d8, [x8, #0xa58]                        ; ptr_0x7ba58
    // 0x04b86c  adrp     x8, #0x7b000                            
}

- (void)拖动:(id)拖动 {   // 0x4bcf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 拖动: 即可补全。
    // 0x04bcf8  stp      d9, d8, [sp, #-0x40]!                   
    // 0x04bcfc  stp      x22, x21, [sp, #0x10]                   
    // 0x04bd00  stp      x20, x19, [sp, #0x20]                   
    // 0x04bd04  stp      x29, x30, [sp, #0x30]                   
    // 0x04bd08  add      x29, sp, #0x30                          
    // 0x04bd0c  mov      x19, x0                                 
    // 0x04bd10  bl       #0x60364                                ; func_0x60364
    // 0x04bd14  mov      x21, x0                                 
    // 0x04bd18  bl       #0x6fd20                                ; [x0 view] x2, x3, x4, x5, x6, x7
    // 0x04bd1c  mov      x29, x29                                
    // 0x04bd20  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04bd24  mov      x22, x0                                 
    // 0x04bd28  bl       #0x6fa60                                ; [x0 tag] x2, x3, x4, x5, x6, x7
    // 0x04bd2c  mov      x20, x0                                 
    // 0x04bd30  bl       #0x6019c                                ; func_0x6019c
    // 0x04bd34  mov      x0, x19                                 
    // 0x04bd38  bl       #0x71380                                ; [x0 宿主] x2, x3, x4, x5, x6, x7
    // 0x04bd3c  mov      x29, x29                                
    // 0x04bd40  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x04bd44  bl       #0x60468                                ; func_0x60468
    // 0x04bd48  bl       #0x6b380                                ; [x0 locationInView:] x2, x3, x4, x5, x6, x7
    // 0x04bd4c  bl       #0x61a24                                ; func_0x61a24
    // 0x04bd50  bl       #0x6018c                                ; func_0x6018c
    // 0x04bd54  bl       #0x60ce4                                ; func_0x60ce4
}

- (void)清理 {   // 0x4be6c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 清理 即可补全。
    // 0x04be6c  stp      x24, x23, [sp, #-0x40]!                 
    // 0x04be70  stp      x22, x21, [sp, #0x10]                   
    // 0x04be74  stp      x20, x19, [sp, #0x20]                   
    // 0x04be78  stp      x29, x30, [sp, #0x30]                   
    // 0x04be7c  add      x29, sp, #0x30                          
    // 0x04be80  sub      sp, sp, #0x250                          
    // 0x04be84  mov      x19, x0                                 
    // 0x04be88  adrp     x8, #0x8c000                            
    // 0x04be8c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x04be90  ldr      x8, [x8]                                
    // 0x04be94  stur     x8, [x29, #-0x38]                       
    // 0x04be98  movi     v0.16b, #0                              
    // 0x04be9c  stp      q0, q0, [sp, #0x80]                     
    // 0x04bea0  stp      q0, q0, [sp, #0xa0]                     
    // 0x04bea4  ldr      x0, [x0, #8]                            
    // 0x04bea8  bl       #0x6904c                                ; _objc_retain
    // 0x04beac  mov      x20, x0                                 
    // 0x04beb0  add      x2, sp, #0x80                           
    // 0x04beb4  sub      x3, x29, #0xb8                          
    // 0x04beb8  bl       #0x6020c                                ; func_0x6020c
    // 0x04bebc  cbz      x0, #0x4bf08                            
    // 0x04bec0  mov      x21, x0                                 
    // 0x04bec4  ldr      x8, [sp, #0x90]                         
    // 0x04bec8  ldr      x22, [x8]                               
}

- (UIView *)宿主 {   // 0x4c080
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 宿主 即可补全。
    // 0x04c080  stp      x29, x30, [sp, #-0x10]!                 
    // 0x04c084  mov      x29, sp                                 
    // 0x04c088  add      x0, x0, #0x30                           
    // 0x04c08c  bl       #0x68ff8                                ; _objc_loadWeakRetained
    // 0x04c090  ldp      x29, x30, [sp], #0x10                   
    // 0x04c094  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set宿主:(UIView *)set宿主 {   // 0x4c098
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set宿主: 即可补全。
    // 0x04c098  mov      x1, x2                                  
    // 0x04c09c  add      x0, x0, #0x30                           
    // 0x04c0a0  b        #0x690ac                                ; _objc_storeWeak
}

- (UIView *)面板 {   // 0x4c0a4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 面板 即可补全。
    // 0x04c0a4  stp      x29, x30, [sp, #-0x10]!                 
    // 0x04c0a8  mov      x29, sp                                 
    // 0x04c0ac  add      x0, x0, #0x38                           
    // 0x04c0b0  bl       #0x68ff8                                ; _objc_loadWeakRetained
    // 0x04c0b4  ldp      x29, x30, [sp], #0x10                   
    // 0x04c0b8  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set面板:(UIView *)set面板 {   // 0x4c0bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set面板: 即可补全。
    // 0x04c0bc  mov      x1, x2                                  
    // 0x04c0c0  add      x0, x0, #0x38                           
    // 0x04c0c4  b        #0x690ac                                ; _objc_storeWeak
}

- (UIView *)容器 {   // 0x4c0c8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 容器 即可补全。
    // 0x04c0c8  stp      x29, x30, [sp, #-0x10]!                 
    // 0x04c0cc  mov      x29, sp                                 
    // 0x04c0d0  add      x0, x0, #0x40                           
    // 0x04c0d4  bl       #0x68ff8                                ; _objc_loadWeakRetained
    // 0x04c0d8  ldp      x29, x30, [sp], #0x10                   
    // 0x04c0dc  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)set容器:(UIView *)set容器 {   // 0x4c0e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set容器: 即可补全。
    // 0x04c0e0  mov      x1, x2                                  
    // 0x04c0e4  add      x0, x0, #0x40                           
    // 0x04c0e8  b        #0x690ac                                ; _objc_storeWeak
}

- (NSArray *)路径点 {   // 0x4c0ec
    return _路径点;
}

- (id)变化 {   // 0x4c0f4
    return _变化;
}

- (void)set变化:(id)set变化 {   // 0x4c0fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set变化: 即可补全。
    // 0x04c0fc  mov      w3, #0x50                               
    // 0x04c100  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (CGPoint)起点参考 {   // 0x4c104
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 起点参考 即可补全。
    // 0x04c104  ldp      d0, d1, [x0, #0x58]                     
    // 0x04c108  ret                                              
}

- (void)set起点参考:(CGPoint)set起点参考 {   // 0x4c10c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set起点参考: 即可补全。
    // 0x04c10c  stp      d0, d1, [x0, #0x58]                     
    // 0x04c110  ret                                              
}

- (BOOL)起点已被用户拖动 {   // 0x4c114
    return _起点已被用户拖动;
}

- (void)set起点已被用户拖动:(BOOL)set起点已被用户拖动 {   // 0x4c11c
    _起点已被用户拖动 = set起点已被用户拖动;
}

- (CGRect)列表区 {   // 0x4c124
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 列表区 即可补全。
    // 0x04c124  ldp      d0, d1, [x0, #0x68]                     
    // 0x04c128  ldp      d2, d3, [x0, #0x78]                     
    // 0x04c12c  ret                                              
}

- (void)set列表区:(CGRect)set列表区 {   // 0x4c130
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 命中路径编辑器 set列表区: 即可补全。
    // 0x04c130  stp      d0, d1, [x0, #0x68]                     
    // 0x04c134  stp      d2, d3, [x0, #0x78]                     
    // 0x04c138  ret                                              
}

@end