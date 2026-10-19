//
//  设置视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 设置视图

- (id)添加开关:(id)添加开关 y:(double)y on:(BOOL)on {   // 0x3a458
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加开关:y:on: 即可补全。
    // 0x03a458  mov      w4, #0                                  
    // 0x03a45c  b        #0x72ae0                                ; [x0 添加开关:y:on:进高级区:] x2, x3, x4, x5, x6, x7
}

- (id)添加开关:(id)添加开关 y:(double)y on:(BOOL)on 进高级区:(BOOL)进高级区 {   // 0x3a460
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加开关:y:on:进高级区: 即可补全。
    // 0x03a460  sub      sp, sp, #0xb0                           
    // 0x03a464  stp      d9, d8, [sp, #0x60]                     
    // 0x03a468  stp      x24, x23, [sp, #0x70]                   
    // 0x03a46c  stp      x22, x21, [sp, #0x80]                   
    // 0x03a470  stp      x20, x19, [sp, #0x90]                   
    // 0x03a474  stp      x29, x30, [sp, #0xa0]                   
    // 0x03a478  add      x29, sp, #0xa0                          
    // 0x03a47c  mov      x21, x4                                 
    // 0x03a480  mov      x23, x3                                 
    // 0x03a484  bl       #0x3d624                                ; func_0x3d624
    // 0x03a488  adrp     x8, #0xad000                            
    // 0x03a48c  ldr      x20, [x8, #0x1d0]                       ; class(?0x0)
    // 0x03a490  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03a494  bl       #0x3d49c                                ; func_0x3d49c
    // 0x03a498  mov      x8, #0x4069000000000000                 
    // 0x03a49c  fmov     d2, x8                                  
    // 0x03a4a0  bl       #0x3d374                                ; func_0x3d374
    // 0x03a4a4  bl       #0x3d474                                ; func_0x3d474
    // 0x03a4a8  bl       #0x3d2b4                                ; func_0x3d2b4
    // 0x03a4ac  bl       #0x2020c                                ; _CQThemeTextPrimary
    // 0x03a4b0  mov      x29, x29                                
    // 0x03a4b4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a4b8  bl       #0x3d3f0                                ; func_0x3d3f0
    // 0x03a4bc  bl       #0x3d2b4                                ; func_0x3d2b4
}

- (void)美化开关:(id)美化开关 {   // 0x3a5b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 美化开关: 即可补全。
    // 0x03a5b8  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03a5bc  stp      x29, x30, [sp, #0x10]                   
    // 0x03a5c0  add      x29, sp, #0x10                          
    // 0x03a5c4  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03a5c8  mov      x19, x0                                 
    // 0x03a5cc  bl       #0x20138                                ; _CQThemeNeon
    // 0x03a5d0  mov      x29, x29                                
    // 0x03a5d4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a5d8  bl       #0x3d388                                ; func_0x3d388
    // 0x03a5dc  bl       #0x6c6a0                                ; [x0 setOnTintColor:] x2, x3, x4, x5, x6, x7
    // 0x03a5e0  bl       #0x3d290                                ; func_0x3d290
    // 0x03a5e4  bl       #0x20114                                ; _CQThemeBgRaisedHi
    // 0x03a5e8  mov      x29, x29                                
    // 0x03a5ec  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a5f0  bl       #0x3d50c                                ; func_0x3d50c
    // 0x03a5f4  bl       #0x3d290                                ; func_0x3d290
    // 0x03a5f8  adrp     x8, #0xad000                            
    // 0x03a5fc  ldr      x0, [x8, #0x1b8]                        ; class(?0x0)
    // 0x03a600  bl       #0x6fd60                                ; [class(?0x0) whiteColor] x2, x3, x4, x5, x6, x7
    // 0x03a604  mov      x29, x29                                
    // 0x03a608  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a60c  bl       #0x3d388                                ; func_0x3d388
    // 0x03a610  bl       #0x6cb80                                ; [class(?0x0) setThumbTintColor:] x2, x3, x4, x5, x6, x7
    // 0x03a614  bl       #0x3d2c8                                ; func_0x3d2c8
}

- (id)添加紧凑开关:(id)添加紧凑开关 y:(double)y on:(BOOL)on {   // 0x3a624
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加紧凑开关:y:on: 即可补全。
    // 0x03a624  sub      sp, sp, #0xa0                           
    // 0x03a628  stp      d9, d8, [sp, #0x60]                     
    // 0x03a62c  stp      x22, x21, [sp, #0x70]                   
    // 0x03a630  stp      x20, x19, [sp, #0x80]                   
    // 0x03a634  stp      x29, x30, [sp, #0x90]                   
    // 0x03a638  add      x29, sp, #0x90                          
    // 0x03a63c  mov      x21, x3                                 
    // 0x03a640  bl       #0x3d624                                ; func_0x3d624
    // 0x03a644  adrp     x8, #0xad000                            
    // 0x03a648  ldr      x20, [x8, #0x1d0]                       ; class(?0x0)
    // 0x03a64c  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03a650  bl       #0x3d49c                                ; func_0x3d49c
    // 0x03a654  adrp     x8, #0x7c000                            
    // 0x03a658  ldr      d2, [x8, #0x5a0]                        ; ptr_0x7c5a0
    // 0x03a65c  bl       #0x3d374                                ; func_0x3d374
    // 0x03a660  bl       #0x3d474                                ; func_0x3d474
    // 0x03a664  bl       #0x3d2b4                                ; func_0x3d2b4
    // 0x03a668  bl       #0x2020c                                ; _CQThemeTextPrimary
    // 0x03a66c  mov      x29, x29                                
    // 0x03a670  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a674  bl       #0x3d3f0                                ; func_0x3d3f0
    // 0x03a678  bl       #0x3d2b4                                ; func_0x3d2b4
    // 0x03a67c  bl       #0x20338                                ; _CQThemeFontBody
    // 0x03a680  mov      x29, x29                                
}

- (id)添加时间按钮:(SEL)添加时间按钮 y:(double)y 分:(long long)分 {   // 0x3a6f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加时间按钮:y:分: 即可补全。
    // 0x03a6f0  stp      d9, d8, [sp, #-0x50]!                   
    // 0x03a6f4  stp      x24, x23, [sp, #0x10]                   
    // 0x03a6f8  stp      x22, x21, [sp, #0x20]                   
    // 0x03a6fc  stp      x20, x19, [sp, #0x30]                   
    // 0x03a700  stp      x29, x30, [sp, #0x40]                   
    // 0x03a704  add      x29, sp, #0x40                          
    // 0x03a708  mov      x22, x3                                 
    // 0x03a70c  fmov     d8, d0                                  
    // 0x03a710  mov      x20, x2                                 
    // 0x03a714  mov      x19, x0                                 
    // 0x03a718  adrp     x8, #0xad000                            
    // 0x03a71c  ldr      x0, [x8, #0x2e8]                        ; class(?0x0)
    // 0x03a720  mov      x2, #0                                  
    // 0x03a724  bl       #0x6a380                                ; [class(?0x0) buttonWithType:] #0, x3, x4, x5, x6, x7
    // 0x03a728  mov      x29, x29                                
    // 0x03a72c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a730  mov      x21, x0                                 
    // 0x03a734  fmov     d0, #2.00000000                         
    // 0x03a738  fadd     d1, d8, d0                              
    // 0x03a73c  mov      x8, #0x4064000000000000                 
    // 0x03a740  fmov     d0, x8                                  
    // 0x03a744  mov      x8, #0x4050000000000000                 
    // 0x03a748  fmov     d2, x8                                  
    // 0x03a74c  fmov     d3, #30.00000000                        
}

- (void)美化分段:(id)美化分段 {   // 0x3a8a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 美化分段: 即可补全。
    // 0x03a8a0  sub      sp, sp, #0xb0                           
    // 0x03a8a4  stp      d9, d8, [sp, #0x50]                     
    // 0x03a8a8  stp      x26, x25, [sp, #0x60]                   
    // 0x03a8ac  stp      x24, x23, [sp, #0x70]                   
    // 0x03a8b0  stp      x22, x21, [sp, #0x80]                   
    // 0x03a8b4  stp      x20, x19, [sp, #0x90]                   
    // 0x03a8b8  stp      x29, x30, [sp, #0xa0]                   
    // 0x03a8bc  add      x29, sp, #0xa0                          
    // 0x03a8c0  adrp     x8, #0x8c000                            
    // 0x03a8c4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03a8c8  ldr      x8, [x8]                                
    // 0x03a8cc  str      x8, [sp, #0x48]                         
    // 0x03a8d0  cbz      x2, #0x3aa70                            
    // 0x03a8d4  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03a8d8  mov      x19, x0                                 
    // 0x03a8dc  bl       #0x200f0                                ; _CQThemeBgRaised
    // 0x03a8e0  mov      x29, x29                                
    // 0x03a8e4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03a8e8  bl       #0x3d388                                ; func_0x3d388
    // 0x03a8ec  bl       #0x6bea0                                ; [x0 setBackgroundColor:] x2, x3, x4, x5, x6, x7
    // 0x03a8f0  bl       #0x3d290                                ; func_0x3d290
    // 0x03a8f4  bl       #0x20138                                ; _CQThemeNeon
    // 0x03a8f8  mov      x29, x29                                
    // 0x03a8fc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)格式化时分:(long long)格式化时分 {   // 0x3aaac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 格式化时分: 即可补全。
    // 0x03aaac  sub      sp, sp, #0x20                           
    // 0x03aab0  stp      x29, x30, [sp, #0x10]                   
    // 0x03aab4  add      x29, sp, #0x10                          
    // 0x03aab8  mov      w8, #0x3c                               
    // 0x03aabc  sdiv     x9, x2, x8                              
    // 0x03aac0  msub     x8, x9, x8, x2                          
    // 0x03aac4  adrp     x10, #0xad000                           
    // 0x03aac8  ldr      x0, [x10, #0x98]                        ; class(?0x0)
    // 0x03aacc  stp      x9, x8, [sp]                            
    // 0x03aad0  adrp     x2, #0x92000                            
    // 0x03aad4  add      x2, x2, #0x230                          
    // 0x03aad8  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x03aadc  ldp      x29, x30, [sp, #0x10]                   
    // 0x03aae0  add      sp, sp, #0x20                           
    // 0x03aae4  ret                                              
}

- (id)时分转日期:(long long)时分转日期 {   // 0x3aae8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 时分转日期: 即可补全。
    // 0x03aae8  stp      x24, x23, [sp, #-0x40]!                 
    // 0x03aaec  stp      x22, x21, [sp, #0x10]                   
    // 0x03aaf0  stp      x20, x19, [sp, #0x20]                   
    // 0x03aaf4  stp      x29, x30, [sp, #0x30]                   
    // 0x03aaf8  add      x29, sp, #0x30                          
    // 0x03aafc  mov      x19, x2                                 
    // 0x03ab00  adrp     x8, #0xad000                            
    // 0x03ab04  ldr      x0, [x8, #0x248]                        ; class(NSCalendar)
    // 0x03ab08  bl       #0x6a780                                ; [class(NSCalendar) currentCalendar] x2, x3, x4, x5, x6, x7
    // 0x03ab0c  mov      x29, x29                                
    // 0x03ab10  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ab14  mov      x20, x0                                 
    // 0x03ab18  adrp     x8, #0xad000                            
    // 0x03ab1c  ldr      x0, [x8, #0x138]                        ; class(?0x0)
    // 0x03ab20  bl       #0x6a860                                ; [class(?0x0) date] x2, x3, x4, x5, x6, x7
    // 0x03ab24  mov      x29, x29                                
    // 0x03ab28  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ab2c  mov      x21, x0                                 
    // 0x03ab30  mov      x0, x20                                 
    // 0x03ab34  mov      w2, #0x1c                               
    // 0x03ab38  mov      x3, x21                                 
    // 0x03ab3c  bl       #0x6a580                                ; [class(NSCalendar) components:fromDate:] x2, class(?0x0), x4, x5, x6, x7
    // 0x03ab40  mov      x29, x29                                
    // 0x03ab44  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (long long)日期转时分:(id)日期转时分 {   // 0x3abb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 日期转时分: 即可补全。
    // 0x03abb0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03abb4  stp      x20, x19, [sp, #0x10]                   
    // 0x03abb8  stp      x29, x30, [sp, #0x20]                   
    // 0x03abbc  add      x29, sp, #0x20                          
    // 0x03abc0  cbz      x2, #0x3ac2c                            
    // 0x03abc4  adrp     x8, #0xad000                            
    // 0x03abc8  ldr      x19, [x8, #0x248]                       ; class(NSCalendar)
    // 0x03abcc  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03abd0  mov      x20, x0                                 
    // 0x03abd4  mov      x0, x19                                 
    // 0x03abd8  bl       #0x6a780                                ; [class(NSCalendar) currentCalendar] x2, x3, x4, x5, x6, x7
    // 0x03abdc  mov      x29, x29                                
    // 0x03abe0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03abe4  mov      x21, x0                                 
    // 0x03abe8  mov      w2, #0x60                               
    // 0x03abec  mov      x3, x20                                 
    // 0x03abf0  bl       #0x6a580                                ; [class(NSCalendar) components:fromDate:] x2, x0, x4, x5, x6, x7
    // 0x03abf4  mov      x29, x29                                
    // 0x03abf8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03abfc  mov      x22, x0                                 
    // 0x03ac00  bl       #0x3d290                                ; func_0x3d290
    // 0x03ac04  mov      x0, x22                                 
    // 0x03ac08  bl       #0x6ade0                                ; [class(NSCalendar) hour] x2, x0, x4, x5, x6, x7
    // 0x03ac0c  mov      x19, x0                                 
}

- (void)选定时开始:(id)选定时开始 {   // 0x3ac44
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 选定时开始: 即可补全。
    // 0x03ac44  sub      sp, sp, #0x60                           
    // 0x03ac48  stp      x22, x21, [sp, #0x30]                   
    // 0x03ac4c  stp      x20, x19, [sp, #0x40]                   
    // 0x03ac50  stp      x29, x30, [sp, #0x50]                   
    // 0x03ac54  add      x29, sp, #0x50                          
    // 0x03ac58  mov      x19, x0                                 
    // 0x03ac5c  adrp     x8, #0xad000                            
    // 0x03ac60  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x03ac64  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03ac68  mov      x29, x29                                
    // 0x03ac6c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ac70  mov      x20, x0                                 
    // 0x03ac74  bl       #0x71300                                ; [class(CQStore) 定时开始分] x2, x3, x4, x5, x6, x7
    // 0x03ac78  mov      x21, x0                                 
    // 0x03ac7c  bl       #0x3d290                                ; func_0x3d290
    // 0x03ac80  adrp     x8, #0xad000                            
    // 0x03ac84  ldr      x20, [x8, #0x3d8]                       ; class(时间选择弹窗)
    // 0x03ac88  mov      x0, x19                                 
    // 0x03ac8c  mov      x2, x21                                 
    // 0x03ac90  bl       #0x72220                                ; [x0 时分转日期:] class(CQStore), x3, x4, x5, x6, x7
    // 0x03ac94  mov      x29, x29                                
    // 0x03ac98  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ac9c  mov      x21, x0                                 
    // 0x03aca0  adrp     x8, #0x8c000                            
}

- (void)选定时停止:(id)选定时停止 {   // 0x3ad80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 选定时停止: 即可补全。
    // 0x03ad80  sub      sp, sp, #0x60                           
    // 0x03ad84  stp      x22, x21, [sp, #0x30]                   
    // 0x03ad88  stp      x20, x19, [sp, #0x40]                   
    // 0x03ad8c  stp      x29, x30, [sp, #0x50]                   
    // 0x03ad90  add      x29, sp, #0x50                          
    // 0x03ad94  mov      x19, x0                                 
    // 0x03ad98  adrp     x8, #0xad000                            
    // 0x03ad9c  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x03ada0  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03ada4  mov      x29, x29                                
    // 0x03ada8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03adac  mov      x20, x0                                 
    // 0x03adb0  bl       #0x712c0                                ; [class(CQStore) 定时停止分] x2, x3, x4, x5, x6, x7
    // 0x03adb4  mov      x21, x0                                 
    // 0x03adb8  bl       #0x3d290                                ; func_0x3d290
    // 0x03adbc  adrp     x8, #0xad000                            
    // 0x03adc0  ldr      x20, [x8, #0x3d8]                       ; class(时间选择弹窗)
    // 0x03adc4  mov      x0, x19                                 
    // 0x03adc8  mov      x2, x21                                 
    // 0x03adcc  bl       #0x72220                                ; [x0 时分转日期:] class(CQStore), x3, x4, x5, x6, x7
    // 0x03add0  mov      x29, x29                                
    // 0x03add4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03add8  mov      x21, x0                                 
    // 0x03addc  adrp     x8, #0x8c000                            
}

- (id)添加可解锁开关:(id)添加可解锁开关 y:(double)y on:(BOOL)on {   // 0x3aebc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加可解锁开关:y:on: 即可补全。
    // 0x03aebc  sub      sp, sp, #0xa0                           
    // 0x03aec0  stp      d9, d8, [sp, #0x60]                     
    // 0x03aec4  stp      x22, x21, [sp, #0x70]                   
    // 0x03aec8  stp      x20, x19, [sp, #0x80]                   
    // 0x03aecc  stp      x29, x30, [sp, #0x90]                   
    // 0x03aed0  add      x29, sp, #0x90                          
    // 0x03aed4  mov      x21, x3                                 
    // 0x03aed8  bl       #0x3d624                                ; func_0x3d624
    // 0x03aedc  adrp     x8, #0xad000                            
    // 0x03aee0  ldr      x20, [x8, #0x1d0]                       ; class(?0x0)
    // 0x03aee4  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03aee8  bl       #0x3d49c                                ; func_0x3d49c
    // 0x03aeec  mov      x8, #0x4069000000000000                 
    // 0x03aef0  fmov     d2, x8                                  
    // 0x03aef4  bl       #0x3d374                                ; func_0x3d374
    // 0x03aef8  bl       #0x3d474                                ; func_0x3d474
    // 0x03aefc  bl       #0x3d2b4                                ; func_0x3d2b4
    // 0x03af00  bl       #0x2020c                                ; _CQThemeTextPrimary
    // 0x03af04  mov      x29, x29                                
    // 0x03af08  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03af0c  bl       #0x3d3f0                                ; func_0x3d3f0
    // 0x03af10  bl       #0x3d2b4                                ; func_0x3d2b4
    // 0x03af14  bl       #0x20338                                ; _CQThemeFontBody
    // 0x03af18  mov      x29, x29                                
}

- (void)构建 {   // 0x3afc0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 构建 即可补全。
    // 0x03afc0  sub      sp, sp, #0x1b0                          
    // 0x03afc4  stp      d13, d12, [sp, #0x120]                  
    // 0x03afc8  stp      d11, d10, [sp, #0x130]                  
    // 0x03afcc  stp      d9, d8, [sp, #0x140]                    
    // 0x03afd0  stp      x28, x27, [sp, #0x150]                  
    // 0x03afd4  stp      x26, x25, [sp, #0x160]                  
    // 0x03afd8  stp      x24, x23, [sp, #0x170]                  
    // 0x03afdc  stp      x22, x21, [sp, #0x180]                  
    // 0x03afe0  stp      x20, x19, [sp, #0x190]                  
    // 0x03afe4  stp      x29, x30, [sp, #0x1a0]                  
    // 0x03afe8  add      x29, sp, #0x1a0                         
    // 0x03afec  mov      x20, x0                                 
    // 0x03aff0  adrp     x8, #0x8c000                            
    // 0x03aff4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03aff8  ldr      x8, [x8]                                
    // 0x03affc  stur     x8, [x29, #-0x90]                       
    // 0x03b000  adrp     x22, #0xad000                           
    // 0x03b004  bl       #0x3d4b0                                ; func_0x3d4b0
    // 0x03b008  mov      x8, #0x4074000000000000                 
    // 0x03b00c  fmov     d8, x8                                  
    // 0x03b010  fmov     d0, xzr                                 
    // 0x03b014  fmov     d1, #12.00000000                        
    // 0x03b018  fmov     d3, #26.00000000                        
    // 0x03b01c  fmov     d2, d8                                  
}

- (void)点击入口被点击:(id)点击入口被点击 {   // 0x3bf64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 点击入口被点击: 即可补全。
    // 0x03bf64  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03bf68  stp      x20, x19, [sp, #0x10]                   
    // 0x03bf6c  stp      x29, x30, [sp, #0x20]                   
    // 0x03bf70  add      x29, sp, #0x20                          
    // 0x03bf74  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03bf78  mov      x19, x0                                 
    // 0x03bf7c  adrp     x8, #0xb0000                            
    // 0x03bf80  ldr      x9, [x8, #0x668]                        ; data_0xb0668(=0x0)
    // 0x03bf84  cmp      x9, #9                                  
    // 0x03bf88  b.gt     #0x3c01c                                
    // 0x03bf8c  add      x9, x9, #1                              
    // 0x03bf90  str      x9, [x8, #0x668]                        
    // 0x03bf94  b.ne     #0x3c01c                                
    // 0x03bf98  adrp     x21, #0xad000                           
    // 0x03bf9c  ldr      x0, [x21, #0x90]                        ; class(CQOverlay)
    // 0x03bfa0  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x03bfa4  mov      x29, x29                                
    // 0x03bfa8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03bfac  mov      x20, x0                                 
    // 0x03bfb0  adrp     x2, #0x92000                            
    // 0x03bfb4  add      x2, x2, #0x6f0                          
    // 0x03bfb8  bl       #0x71e60                                ; [class(CQOverlay) 提示:] x2, x3, x4, x5, x6, x7
    // 0x03bfbc  bl       #0x3d290                                ; func_0x3d290
    // 0x03bfc0  ldr      x0, [x21, #0x90]                        ; class(CQOverlay)
}

- (void)包成滚动容器 {   // 0x3c028
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 包成滚动容器 即可补全。
    // 0x03c028  sub      sp, sp, #0x110                          
    // 0x03c02c  stp      x24, x23, [sp, #0xd0]                   
    // 0x03c030  stp      x22, x21, [sp, #0xe0]                   
    // 0x03c034  stp      x20, x19, [sp, #0xf0]                   
    // 0x03c038  stp      x29, x30, [sp, #0x100]                  
    // 0x03c03c  add      x29, sp, #0x100                         
    // 0x03c040  mov      x20, x0                                 
    // 0x03c044  adrp     x8, #0x8c000                            
    // 0x03c048  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03c04c  ldr      x8, [x8]                                
    // 0x03c050  stur     x8, [x29, #-0x38]                       
    // 0x03c054  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x03c058  adrp     x21, #0xb0000                           
    // 0x03c05c  ldr      x8, [x21, #0x668]                       ; data_0xb0668(=0x0)
    // 0x03c060  bl       #0x3d664                                ; func_0x3d664
    // 0x03c064  adrp     x22, #0x7c000                           
    // 0x03c068  add      x22, x22, #0x780                        
    // 0x03c06c  ldr      d0, [x22, w8, uxtw #3]                  
    // 0x03c070  fcmp     d3, d0                                  
    // 0x03c074  b.ge     #0x3c16c                                
    // 0x03c078  adrp     x8, #0xad000                            
    // 0x03c07c  ldr      x0, [x8, #0x3c8]                        ; class(?0x0)
    // 0x03c080  bl       #0x68f5c                                ; _objc_alloc
    // 0x03c084  mov      x19, x0                                 
}

- (void)添加分组标题:(id)添加分组标题 y:(double)y {   // 0x3c1a0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加分组标题:y: 即可补全。
    // 0x03c1a0  stp      x29, x30, [sp, #-0x10]!                 
    // 0x03c1a4  mov      x29, sp                                 
    // 0x03c1a8  mov      w3, #0                                  
    // 0x03c1ac  bl       #0x72a40                                ; [x0 添加分组标题:y:入收:] x2, x3, x4, x5, x6, x7
    // 0x03c1b0  mov      x29, x29                                
    // 0x03c1b4  bl       #0x690d0                                ; _objc_unsafeClaimAutoreleasedReturnValue
    // 0x03c1b8  ldp      x29, x30, [sp], #0x10                   
    // 0x03c1bc  ret                                              
}

- (id)添加分组标题:(id)添加分组标题 y:(double)y 入收:(BOOL)入收 {   // 0x3c1c0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 添加分组标题:y:入收: 即可补全。
    // 0x03c1c0  stp      d9, d8, [sp, #-0x50]!                   
    // 0x03c1c4  stp      x24, x23, [sp, #0x10]                   
    // 0x03c1c8  stp      x22, x21, [sp, #0x20]                   
    // 0x03c1cc  stp      x20, x19, [sp, #0x30]                   
    // 0x03c1d0  stp      x29, x30, [sp, #0x40]                   
    // 0x03c1d4  add      x29, sp, #0x40                          
    // 0x03c1d8  mov      x20, x3                                 
    // 0x03c1dc  bl       #0x3d624                                ; func_0x3d624
    // 0x03c1e0  adrp     x8, #0xad000                            
    // 0x03c1e4  ldr      x21, [x8, #0x1b0]                       ; class(?0x0)
    // 0x03c1e8  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03c1ec  mov      x22, x0                                 
    // 0x03c1f0  mov      x0, x21                                 
    // 0x03c1f4  bl       #0x68f5c                                ; _objc_alloc
    // 0x03c1f8  fmov     d0, #7.00000000                         
    // 0x03c1fc  fadd     d1, d8, d0                              
    // 0x03c200  fmov     d0, #18.00000000                        
    // 0x03c204  fmov     d2, #3.00000000                         
    // 0x03c208  fmov     d3, #12.00000000                        
    // 0x03c20c  bl       #0x6af60                                ; [class(?0x0) initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x03c210  mov      x21, x0                                 
    // 0x03c214  bl       #0x20138                                ; _CQThemeNeon
    // 0x03c218  mov      x29, x29                                
    // 0x03c21c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)收进高级区:(id)收进高级区 {   // 0x3c340
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 收进高级区: 即可补全。
    // 0x03c340  cbz      x2, #0x3c38c                            
    // 0x03c344  stp      x24, x23, [sp, #-0x40]!                 
    // 0x03c348  stp      x22, x21, [sp, #0x10]                   
    // 0x03c34c  stp      x20, x19, [sp, #0x20]                   
    // 0x03c350  stp      x29, x30, [sp, #0x30]                   
    // 0x03c354  add      x29, sp, #0x30                          
    // 0x03c358  mov      x20, x0                                 
    // 0x03c35c  adrp     x8, #0xad000                            
    // 0x03c360  ldrsw    x23, [x8, #0x9d0]                       
    // 0x03c364  ldr      x21, [x0, x23]                          
    // 0x03c368  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03c36c  mov      x19, x0                                 
    // 0x03c370  mov      x0, x21                                 
    // 0x03c374  bl       #0x6b540                                ; [x21 mutableCopy] x2, x3, x4, x5, x6, x7
    // 0x03c378  mov      x21, x0                                 
    // 0x03c37c  cbz      x0, #0x3c390                            
    // 0x03c380  mov      x0, x21                                 
    // 0x03c384  bl       #0x6904c                                ; _objc_retain
    // 0x03c388  b        #0x3c3a4                                
    // 0x03c38c  ret                                              
    // 0x03c390  adrp     x8, #0xad000                            
    // 0x03c394  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x03c398  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x03c39c  mov      x29, x29                                
}

- (void)尺寸变化:(id)尺寸变化 {   // 0x3c3f4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 尺寸变化: 即可补全。
    // 0x03c3f4  sub      sp, sp, #0x50                           
    // 0x03c3f8  stp      d9, d8, [sp, #0x10]                     
    // 0x03c3fc  stp      x22, x21, [sp, #0x20]                   
    // 0x03c400  stp      x20, x19, [sp, #0x30]                   
    // 0x03c404  stp      x29, x30, [sp, #0x40]                   
    // 0x03c408  add      x29, sp, #0x40                          
    // 0x03c40c  bl       #0x3d4a8                                ; func_0x3d4a8
    // 0x03c410  mov      x19, x0                                 
    // 0x03c414  adrp     x21, #0xad000                           
    // 0x03c418  ldr      x0, [x21, #0xe8]                        ; class(CQStore)
    // 0x03c41c  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03c420  mov      x29, x29                                
    // 0x03c424  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c428  bl       #0x3d480                                ; func_0x3d480
    // 0x03c42c  bl       #0x6db40                                ; [class(CQStore) set悬浮球尺寸:] x2, x3, x4, x5, x6, x7
    // 0x03c430  bl       #0x3d290                                ; func_0x3d290
    // 0x03c434  ldr      x0, [x21, #0xe8]                        ; class(CQStore)
    // 0x03c438  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03c43c  mov      x29, x29                                
    // 0x03c440  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c444  bl       #0x3d48c                                ; func_0x3d48c
    // 0x03c448  bl       #0x3d290                                ; func_0x3d290
    // 0x03c44c  cmp      x19, #1                                 
    // 0x03c450  mov      x8, #0x404d000000000000                 
}

- (void)形状变化:(id)形状变化 {   // 0x3c528
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 形状变化: 即可补全。
    // 0x03c528  sub      sp, sp, #0x40                           
    // 0x03c52c  stp      x22, x21, [sp, #0x10]                   
    // 0x03c530  stp      x20, x19, [sp, #0x20]                   
    // 0x03c534  stp      x29, x30, [sp, #0x30]                   
    // 0x03c538  add      x29, sp, #0x30                          
    // 0x03c53c  bl       #0x3d4a8                                ; func_0x3d4a8
    // 0x03c540  bl       #0x3d428                                ; func_0x3d428
    // 0x03c544  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c548  mov      x29, x29                                
    // 0x03c54c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c550  bl       #0x3d480                                ; func_0x3d480
    // 0x03c554  bl       #0x6db60                                ; [x0 set悬浮球形态:] x2, x3, x4, x5, x6, x7
    // 0x03c558  bl       #0x3d290                                ; func_0x3d290
    // 0x03c55c  ldr      x0, [x21, #0xe8]                        
    // 0x03c560  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c564  mov      x29, x29                                
    // 0x03c568  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c56c  bl       #0x3d48c                                ; func_0x3d48c
    // 0x03c570  bl       #0x3d290                                ; func_0x3d290
    // 0x03c574  adrp     x22, #0xad000                           
    // 0x03c578  ldr      x0, [x22, #0x90]                        ; class(CQOverlay)
    // 0x03c57c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x03c580  mov      x29, x29                                
    // 0x03c584  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)量程变化:(id)量程变化 {   // 0x3c628
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 量程变化: 即可补全。
    // 0x03c628  sub      sp, sp, #0x40                           
    // 0x03c62c  stp      x22, x21, [sp, #0x10]                   
    // 0x03c630  stp      x20, x19, [sp, #0x20]                   
    // 0x03c634  stp      x29, x30, [sp, #0x30]                   
    // 0x03c638  add      x29, sp, #0x30                          
    // 0x03c63c  bl       #0x3d4a8                                ; func_0x3d4a8
    // 0x03c640  bl       #0x3d428                                ; func_0x3d428
    // 0x03c644  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c648  mov      x29, x29                                
    // 0x03c64c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c650  bl       #0x3d5e4                                ; func_0x3d5e4
    // 0x03c654  bl       #0x3d290                                ; func_0x3d290
    // 0x03c658  adrp     x22, #0xad000                           
    // 0x03c65c  ldr      x0, [x22, #0xf0]                        ; class(CQTouchInjector)
    // 0x03c660  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x03c664  mov      x29, x29                                
    // 0x03c668  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c66c  bl       #0x3d5e4                                ; func_0x3d5e4
    // 0x03c670  bl       #0x3d290                                ; func_0x3d290
    // 0x03c674  ldr      x0, [x21, #0xe8]                        
    // 0x03c678  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c67c  mov      x29, x29                                
    // 0x03c680  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c684  bl       #0x3d56c                                ; func_0x3d56c
}

- (void)通道变化:(id)通道变化 {   // 0x3c70c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 通道变化: 即可补全。
    // 0x03c70c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03c710  stp      x20, x19, [sp, #0x10]                   
    // 0x03c714  stp      x29, x30, [sp, #0x20]                   
    // 0x03c718  add      x29, sp, #0x20                          
    // 0x03c71c  bl       #0x3d4a8                                ; func_0x3d4a8
    // 0x03c720  bl       #0x3d428                                ; func_0x3d428
    // 0x03c724  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c728  mov      x29, x29                                
    // 0x03c72c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c730  bl       #0x3d480                                ; func_0x3d480
    // 0x03c734  bl       #0x6e260                                ; [x0 set注入通道:] x2, x3, x4, x5, x6, x7
    // 0x03c738  bl       #0x3d290                                ; func_0x3d290
    // 0x03c73c  adrp     x8, #0xad000                            
    // 0x03c740  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x03c744  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x03c748  mov      x29, x29                                
    // 0x03c74c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c750  bl       #0x3d480                                ; func_0x3d480
    // 0x03c754  bl       #0x6f2c0                                ; [class(CQTouchInjector) set通道:] x2, x3, x4, x5, x6, x7
    // 0x03c758  bl       #0x3d290                                ; func_0x3d290
    // 0x03c75c  ldr      x0, [x21, #0xe8]                        
    // 0x03c760  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c764  mov      x29, x29                                
    // 0x03c768  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (void)并发变化:(id)并发变化 {   // 0x3c7bc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 并发变化: 即可补全。
    // 0x03c7bc  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03c7c0  stp      x20, x19, [sp, #0x10]                   
    // 0x03c7c4  stp      x29, x30, [sp, #0x20]                   
    // 0x03c7c8  add      x29, sp, #0x20                          
    // 0x03c7cc  bl       #0x3d4a8                                ; func_0x3d4a8
    // 0x03c7d0  bl       #0x3d428                                ; func_0x3d428
    // 0x03c7d4  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c7d8  mov      x29, x29                                
    // 0x03c7dc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c7e0  bl       #0x3d5d8                                ; func_0x3d5d8
    // 0x03c7e4  bl       #0x3d290                                ; func_0x3d290
    // 0x03c7e8  adrp     x8, #0xad000                            
    // 0x03c7ec  ldr      x0, [x8, #0xf0]                         ; class(CQTouchInjector)
    // 0x03c7f0  bl       #0x6f560                                ; [class(CQTouchInjector) shared] x2, x3, x4, x5, x6, x7
    // 0x03c7f4  mov      x29, x29                                
    // 0x03c7f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c7fc  bl       #0x3d5d8                                ; func_0x3d5d8
    // 0x03c800  bl       #0x3d290                                ; func_0x3d290
    // 0x03c804  ldr      x0, [x21, #0xe8]                        
    // 0x03c808  bl       #0x6f560                                ; [x0 shared] x2, x3, x4, x5, x6, x7
    // 0x03c80c  mov      x29, x29                                
    // 0x03c810  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c814  bl       #0x3d48c                                ; func_0x3d48c
    // 0x03c818  bl       #0x3d290                                ; func_0x3d290
}

- (void)开关变化:(id)开关变化 {   // 0x3c854
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 开关变化: 即可补全。
    // 0x03c854  stp      x22, x21, [sp, #-0x30]!                 
    // 0x03c858  stp      x20, x19, [sp, #0x10]                   
    // 0x03c85c  stp      x29, x30, [sp, #0x20]                   
    // 0x03c860  add      x29, sp, #0x20                          
    // 0x03c864  mov      x21, x0                                 
    // 0x03c868  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03c86c  mov      x19, x0                                 
    // 0x03c870  adrp     x8, #0xad000                            
    // 0x03c874  ldr      x0, [x8, #0xe8]                         ; class(CQStore)
    // 0x03c878  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03c87c  mov      x29, x29                                
    // 0x03c880  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03c884  mov      x20, x0                                 
    // 0x03c888  adrp     x8, #0xad000                            
    // 0x03c88c  ldrsw    x8, [x8, #0x9dc]                        
    // 0x03c890  bl       #0x3d400                                ; func_0x3d400
    // 0x03c894  b.eq     #0x3c928                                
    // 0x03c898  adrp     x8, #0xad000                            
    // 0x03c89c  ldrsw    x8, [x8, #0x9e0]                        
    // 0x03c8a0  bl       #0x3d400                                ; func_0x3d400
    // 0x03c8a4  b.eq     #0x3c938                                
    // 0x03c8a8  adrp     x8, #0xad000                            
    // 0x03c8ac  ldrsw    x8, [x8, #0x9e4]                        
    // 0x03c8b0  bl       #0x3d400                                ; func_0x3d400
}

- (void)透明变化:(id)透明变化 {   // 0x3cad8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 透明变化: 即可补全。
    // 0x03cad8  stp      d9, d8, [sp, #-0x40]!                   
    // 0x03cadc  stp      x22, x21, [sp, #0x10]                   
    // 0x03cae0  stp      x20, x19, [sp, #0x20]                   
    // 0x03cae4  stp      x29, x30, [sp, #0x30]                   
    // 0x03cae8  add      x29, sp, #0x30                          
    // 0x03caec  bl       #0x3d34c                                ; func_0x3d34c
    // 0x03caf0  mov      x19, x0                                 
    // 0x03caf4  bl       #0x6fca0                                ; [x0 value] x2, x3, x4, x5, x6, x7
    // 0x03caf8  fcvt     d8, s0                                  
    // 0x03cafc  adrp     x21, #0xad000                           
    // 0x03cb00  ldr      x0, [x21, #0xe8]                        ; class(CQStore)
    // 0x03cb04  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03cb08  mov      x29, x29                                
    // 0x03cb0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cb10  mov      x20, x0                                 
    // 0x03cb14  fmov     d0, d8                                  
    // 0x03cb18  bl       #0x6dbc0                                ; [class(CQStore) set悬浮球透明度:] x2, x3, x4, x5, x6, x7
    // 0x03cb1c  bl       #0x3d290                                ; func_0x3d290
    // 0x03cb20  ldr      x0, [x21, #0xe8]                        ; class(CQStore)
    // 0x03cb24  bl       #0x6f560                                ; [class(CQStore) shared] x2, x3, x4, x5, x6, x7
    // 0x03cb28  mov      x29, x29                                
    // 0x03cb2c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cb30  bl       #0x3d48c                                ; func_0x3d48c
    // 0x03cb34  bl       #0x3d290                                ; func_0x3d290
}

- (void)透明预览结束 {   // 0x3cbcc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 透明预览结束 即可补全。
    // 0x03cbcc  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03cbd0  stp      x29, x30, [sp, #0x10]                   
    // 0x03cbd4  add      x29, sp, #0x10                          
    // 0x03cbd8  adrp     x8, #0xad000                            
    // 0x03cbdc  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x03cbe0  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x03cbe4  mov      x29, x29                                
    // 0x03cbe8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cbec  mov      x19, x0                                 
    // 0x03cbf0  bl       #0x72e80                                ; [class(CQOverlay) 球] x2, x3, x4, x5, x6, x7
    // 0x03cbf4  mov      x29, x29                                
    // 0x03cbf8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cbfc  mov      x20, x0                                 
    // 0x03cc00  bl       #0x71d60                                ; [class(CQOverlay) 排隐藏] x2, x3, x4, x5, x6, x7
    // 0x03cc04  bl       #0x3d290                                ; func_0x3d290
    // 0x03cc08  mov      x0, x19                                 
    // 0x03cc0c  ldp      x29, x30, [sp, #0x10]                   
    // 0x03cc10  b        #0x3d364                                ; func_0x3d364
}

- (void)打开官网 {   // 0x3cc14
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 打开官网 即可补全。
    // 0x03cc14  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03cc18  stp      x29, x30, [sp, #0x10]                   
    // 0x03cc1c  add      x29, sp, #0x10                          
    // 0x03cc20  adrp     x8, #0xad000                            
    // 0x03cc24  ldr      x0, [x8, #0x150]                        ; class(?0x0)
    // 0x03cc28  adrp     x2, #0x92000                            
    // 0x03cc2c  add      x2, x2, #0x890                          
    // 0x03cc30  bl       #0x69b00                                ; [class(?0x0) URLWithString:] x2, x3, x4, x5, x6, x7
    // 0x03cc34  mov      x29, x29                                
    // 0x03cc38  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cc3c  mov      x19, x0                                 
    // 0x03cc40  cbz      x0, #0x3cc78                            
    // 0x03cc44  adrp     x8, #0xad000                            
    // 0x03cc48  ldr      x0, [x8, #0xe0]                         ; class(UIApplication)
    // 0x03cc4c  bl       #0x6f580                                ; [class(UIApplication) sharedApplication] x2, x3, x4, x5, x6, x7
    // 0x03cc50  mov      x29, x29                                
    // 0x03cc54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cc58  mov      x20, x0                                 
    // 0x03cc5c  adrp     x8, #0x8c000                            
    // 0x03cc60  ldr      x8, [x8, #0xe8]                         ; ptr_0x8c0e8
    // 0x03cc64  ldr      x3, [x8]                                
    // 0x03cc68  mov      x2, x19                                 
    // 0x03cc6c  mov      x4, #0                                  
    // 0x03cc70  bl       #0x6b6e0                                ; [class(UIApplication) openURL:options:completionHandler:] class(?0x0), x3, #0, x5, x6, x7
}

- (void)显示启动诊断 {   // 0x3cc84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 显示启动诊断 即可补全。
    // 0x03cc84  sub      sp, sp, #0x50                           
    // 0x03cc88  stp      x22, x21, [sp, #0x20]                   
    // 0x03cc8c  stp      x20, x19, [sp, #0x30]                   
    // 0x03cc90  stp      x29, x30, [sp, #0x40]                   
    // 0x03cc94  add      x29, sp, #0x40                          
    // 0x03cc98  adrp     x8, #0x8c000                            
    // 0x03cc9c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03cca0  ldr      x8, [x8]                                
    // 0x03cca4  str      x8, [sp, #0x18]                         
    // 0x03cca8  bl       #0x97d0                                 ; func_0x97d0
    // 0x03ccac  mov      x29, x29                                
    // 0x03ccb0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ccb4  mov      x19, x0                                 
    // 0x03ccb8  adrp     x8, #0xad000                            
    // 0x03ccbc  ldr      x20, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x03ccc0  adrp     x8, #0xad000                            
    // 0x03ccc4  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x03ccc8  adrp     x8, #0x92000                            
    // 0x03cccc  add      x8, x8, #0x8b0                          
    // 0x03ccd0  stp      x19, x8, [sp]                           
    // 0x03ccd4  adrp     x2, #0x92000                            
    // 0x03ccd8  add      x2, x2, #0x8f0                          
    // 0x03ccdc  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x03cce0  mov      x29, x29                                
}

- (void)显示能力自检 {   // 0x3cd64
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 显示能力自检 即可补全。
    // 0x03cd64  sub      sp, sp, #0x40                           
    // 0x03cd68  stp      x22, x21, [sp, #0x10]                   
    // 0x03cd6c  stp      x20, x19, [sp, #0x20]                   
    // 0x03cd70  stp      x29, x30, [sp, #0x30]                   
    // 0x03cd74  add      x29, sp, #0x30                          
    // 0x03cd78  adrp     x8, #0x8c000                            
    // 0x03cd7c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03cd80  ldr      x8, [x8]                                
    // 0x03cd84  str      x8, [sp, #8]                            
    // 0x03cd88  adrp     x8, #0xad000                            
    // 0x03cd8c  ldr      x19, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x03cd90  bl       #0x82c8                                 ; func_0x82c8
    // 0x03cd94  mov      x29, x29                                
    // 0x03cd98  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cd9c  mov      x20, x0                                 
    // 0x03cda0  adrp     x8, #0x90000                            
    // 0x03cda4  add      x8, x8, #0xe30                          
    // 0x03cda8  str      x8, [sp]                                
    // 0x03cdac  adrp     x8, #0xad000                            
    // 0x03cdb0  ldr      x0, [x8, #0x110]                        ; class(NSArray)
    // 0x03cdb4  mov      x2, sp                                  
    // 0x03cdb8  mov      w3, #1                                  
    // 0x03cdbc  bl       #0x6a120                                ; [class(NSArray) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x03cdc0  mov      x29, x29                                
}

- (void)显示更新详情 {   // 0x3ce18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 显示更新详情 即可补全。
    // 0x03ce18  sub      sp, sp, #0x50                           
    // 0x03ce1c  stp      x22, x21, [sp, #0x20]                   
    // 0x03ce20  stp      x20, x19, [sp, #0x30]                   
    // 0x03ce24  stp      x29, x30, [sp, #0x40]                   
    // 0x03ce28  add      x29, sp, #0x40                          
    // 0x03ce2c  adrp     x8, #0x8c000                            
    // 0x03ce30  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03ce34  ldr      x8, [x8]                                
    // 0x03ce38  str      x8, [sp, #0x18]                         
    // 0x03ce3c  adrp     x8, #0xad000                            
    // 0x03ce40  ldr      x19, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x03ce44  adrp     x8, #0xad000                            
    // 0x03ce48  ldr      x0, [x8, #0x98]                         ; class(?0x0)
    // 0x03ce4c  adrp     x8, #0x8e000                            
    // 0x03ce50  add      x8, x8, #0x510                          
    // 0x03ce54  str      x8, [sp]                                
    // 0x03ce58  adrp     x2, #0x92000                            
    // 0x03ce5c  add      x2, x2, #0x930                          
    // 0x03ce60  bl       #0x6f880                                ; [class(?0x0) stringWithFormat:] x2, x3, x4, x5, x6, x7
    // 0x03ce64  mov      x29, x29                                
    // 0x03ce68  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03ce6c  mov      x20, x0                                 
    // 0x03ce70  adrp     x8, #0x90000                            
    // 0x03ce74  add      x8, x8, #0xe30                          
}

- (void)导入配置 {   // 0x3cedc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 导入配置 即可补全。
    // 0x03cedc  stp      x20, x19, [sp, #-0x20]!                 
    // 0x03cee0  stp      x29, x30, [sp, #0x10]                   
    // 0x03cee4  add      x29, sp, #0x10                          
    // 0x03cee8  adrp     x8, #0xad000                            
    // 0x03ceec  ldr      x0, [x8, #0x90]                         ; class(CQOverlay)
    // 0x03cef0  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x03cef4  mov      x29, x29                                
    // 0x03cef8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03cefc  mov      x19, x0                                 
    // 0x03cf00  bl       #0x70200                                ; [class(CQOverlay) 关闭面板] x2, x3, x4, x5, x6, x7
    // 0x03cf04  bl       #0x3d2c8                                ; func_0x3d2c8
    // 0x03cf08  adrp     x8, #0xad000                            
    // 0x03cf0c  ldr      x0, [x8, #0x430]                        ; class(配置导入视图)
    // 0x03cf10  ldp      x29, x30, [sp, #0x10]                   
    // 0x03cf14  ldp      x20, x19, [sp], #0x20                   
    // 0x03cf18  b        #0x72340                                ; [class(配置导入视图) 显示] x2, x3, x4, x5, x6, x7
}

- (void)导出配置 {   // 0x3cf1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 导出配置 即可补全。
    // 0x03cf1c  adrp     x8, #0xad000                            
    // 0x03cf20  ldr      x0, [x8, #0x300]                        ; class(输入弹窗视图)
    // 0x03cf24  adrp     x2, #0x92000                            
    // 0x03cf28  add      x2, x2, #0x490                          
    // 0x03cf2c  adrp     x3, #0x92000                            
    // 0x03cf30  add      x3, x3, #0x950                          
    // 0x03cf34  adrp     x4, #0x8f000                            
    // 0x03cf38  add      x4, x4, #0x210                          
    // 0x03cf3c  adrp     x5, #0x92000                            
    // 0x03cf40  add      x5, x5, #0x970                          
    // 0x03cf44  adrp     x6, #0x8d000                            
    // 0x03cf48  add      x6, x6, #0x818                          
    // 0x03cf4c  b        #0x72480                                ; [class(输入弹窗视图) 显示标题:占位:初值:确认:回调:] x2, x3, x4, x5, x6, x7
}

- (void)清空 {   // 0x3d01c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 设置视图 清空 即可补全。
    // 0x03d01c  sub      sp, sp, #0x40                           
    // 0x03d020  stp      x20, x19, [sp, #0x20]                   
    // 0x03d024  stp      x29, x30, [sp, #0x30]                   
    // 0x03d028  add      x29, sp, #0x30                          
    // 0x03d02c  adrp     x8, #0x8c000                            
    // 0x03d030  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x03d034  ldr      x8, [x8]                                
    // 0x03d038  str      x8, [sp, #0x18]                         
    // 0x03d03c  adrp     x8, #0xad000                            
    // 0x03d040  ldr      x19, [x8, #0x190]                       ; class(自定义弹窗)
    // 0x03d044  adrp     x8, #0x90000                            
    // 0x03d048  add      x8, x8, #0xbd0                          
    // 0x03d04c  adrp     x9, #0x92000                            
    // 0x03d050  add      x9, x9, #0xa10                          
    // 0x03d054  stp      x8, x9, [sp, #8]                        
    // 0x03d058  adrp     x8, #0xad000                            
    // 0x03d05c  ldr      x0, [x8, #0x110]                        ; class(NSArray)
    // 0x03d060  add      x2, sp, #8                              
    // 0x03d064  mov      w3, #2                                  
    // 0x03d068  bl       #0x6a120                                ; [class(NSArray) arrayWithObjects:count:] x2, x3, x4, x5, x6, x7
    // 0x03d06c  mov      x29, x29                                
    // 0x03d070  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03d074  mov      x20, x0                                 
    // 0x03d078  adrp     x2, #0x92000                            
}

@end