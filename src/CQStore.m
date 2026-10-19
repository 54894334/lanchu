//
//  CQStore.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQStore

- (id)init {   // 0x13518
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore init 即可补全。
    // 0x013518  sub      sp, sp, #0x30                           
    // 0x01351c  stp      x20, x19, [sp, #0x10]                   
    // 0x013520  stp      x29, x30, [sp, #0x20]                   
    // 0x013524  add      x29, sp, #0x20                          
    // 0x013528  adrp     x8, #0xad000                            
    // 0x01352c  ldr      x8, [x8, #0x4d8]                        ; class(CQStore)
    // 0x013530  stp      x0, x8, [sp]                            
    // 0x013534  adrp     x8, #0xaa000                            
    // 0x013538  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x01353c  mov      x0, sp                                  
    // 0x013540  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x013544  mov      x19, x0                                 
    // 0x013548  cbz      x0, #0x135c0                            
    // 0x01354c  adrp     x8, #0x8c000                            
    // 0x013550  ldr      x8, [x8, #0xe0]                         ; ptr_0x8c0e0
    // 0x013554  ldr      x20, [x8]                               
    // 0x013558  add      x0, x19, #0x18                          
    // 0x01355c  mov      x1, x20                                 
    // 0x013560  bl       #0x690a0                                ; _objc_storeStrong
    // 0x013564  add      x0, x19, #0x20                          
    // 0x013568  mov      x1, x20                                 
    // 0x01356c  bl       #0x690a0                                ; _objc_storeStrong
    // 0x013570  mov      w8, #1                                  
    // 0x013574  strb     w8, [x19, #8]                           
}

- (void)set动作列表:(id)set动作列表 {   // 0x135d4
    __动作列表 = set动作列表;
}

- (void)set组列表:(id)set组列表 {   // 0x13600
    __组列表 = set组列表;
}

- (id)数据目录 {   // 0x1362c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 数据目录 即可补全。
    // 0x01362c  stp      x24, x23, [sp, #-0x40]!                 
    // 0x013630  stp      x22, x21, [sp, #0x10]                   
    // 0x013634  stp      x20, x19, [sp, #0x20]                   
    // 0x013638  stp      x29, x30, [sp, #0x30]                   
    // 0x01363c  add      x29, sp, #0x30                          
    // 0x013640  mov      w0, #9                                  
    // 0x013644  mov      w1, #1                                  
    // 0x013648  mov      w2, #1                                  
    // 0x01364c  bl       #0x68c2c                                ; _NSSearchPathForDirectoriesInDomains
    // 0x013650  mov      x29, x29                                
    // 0x013654  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013658  mov      x19, x0                                 
    // 0x01365c  bl       #0x6acc0                                ; [x0 firstObject] x2, x3, x4, x5, x6, x7
    // 0x013660  mov      x29, x29                                
    // 0x013664  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013668  mov      x21, x0                                 
    // 0x01366c  cbz      x0, #0x1367c                            
    // 0x013670  mov      x0, x21                                 
    // 0x013674  bl       #0x6904c                                ; _objc_retain
    // 0x013678  b        #0x13688                                
    // 0x01367c  bl       #0x68c50                                ; _NSTemporaryDirectory
    // 0x013680  mov      x29, x29                                
    // 0x013684  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013688  mov      x20, x0                                 
}

- (id)归档路径 {   // 0x13754
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 归档路径 即可补全。
    // 0x013754  stp      x20, x19, [sp, #-0x20]!                 
    // 0x013758  stp      x29, x30, [sp, #0x10]                   
    // 0x01375c  add      x29, sp, #0x10                          
    // 0x013760  bl       #0x72040                                ; [x0 数据目录] x2, x3, x4, x5, x6, x7
    // 0x013764  mov      x29, x29                                
    // 0x013768  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01376c  mov      x19, x0                                 
    // 0x013770  adrp     x2, #0x8e000                            
    // 0x013774  add      x2, x2, #0xf90                          
    // 0x013778  bl       #0x6f740                                ; [x0 stringByAppendingPathComponent:] x2, x3, x4, x5, x6, x7
    // 0x01377c  mov      x29, x29                                
    // 0x013780  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013784  mov      x20, x0                                 
    // 0x013788  bl       #0x160ec                                ; func_0x160ec
    // 0x01378c  mov      x0, x20                                 
    // 0x013790  ldp      x29, x30, [sp, #0x10]                   
    // 0x013794  ldp      x20, x19, [sp], #0x20                   
    // 0x013798  b        #0x68f98                                ; _objc_autoreleaseReturnValue
}

- (void)保存 {   // 0x1379c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 保存 即可补全。
    // 0x01379c  mov      x1, x30                                 
    // 0x0137a0  bl       #0x1618c                                ; func_0x1618c
    // 0x0137a4  mov      x30, x1                                 
    // 0x0137a8  stp      x29, x30, [sp, #0x50]                   
    // 0x0137ac  add      x29, sp, #0x50                          
    // 0x0137b0  sub      sp, sp, #0x330                          
    // 0x0137b4  mov      x19, x0                                 
    // 0x0137b8  adrp     x8, #0x8c000                            
    // 0x0137bc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0137c0  ldr      x8, [x8]                                
    // 0x0137c4  stur     x8, [x29, #-0x60]                       
    // 0x0137c8  bl       #0x72080                                ; [x0 整理归属] x2, x3, x4, x5, x6, x7
    // 0x0137cc  adrp     x24, #0xad000                           
    // 0x0137d0  ldr      x0, [x24, #0x170]                       ; class(?0x0)
    // 0x0137d4  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x0137d8  mov      x29, x29                                
    // 0x0137dc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0137e0  mov      x20, x0                                 
    // 0x0137e4  movi     v0.16b, #0                              
    // 0x0137e8  stp      q0, q0, [sp, #0xa0]                     
    // 0x0137ec  stp      q0, q0, [sp, #0xc0]                     
    // 0x0137f0  mov      x0, x19                                 
    // 0x0137f4  bl       #0x70700                                ; [x0 动作列表] x2, x3, x4, x5, x6, x7
    // 0x0137f8  mov      x29, x29                                
}

- (void)载入 {   // 0x13d60
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 载入 即可补全。
    // 0x013d60  mov      x2, x30                                 
    // 0x013d64  bl       #0x1618c                                ; func_0x1618c
    // 0x013d68  mov      x30, x2                                 
    // 0x013d6c  stp      x29, x30, [sp, #0x50]                   
    // 0x013d70  add      x29, sp, #0x50                          
    // 0x013d74  sub      sp, sp, #0x1a0                          
    // 0x013d78  adrp     x8, #0x8c000                            
    // 0x013d7c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x013d80  ldr      x8, [x8]                                
    // 0x013d84  stur     x8, [x29, #-0x60]                       
    // 0x013d88  adrp     x8, #0xad000                            
    // 0x013d8c  ldr      x19, [x8, #0xc8]                        ; class(?0x0)
    // 0x013d90  str      x0, [sp, #8]                            
    // 0x013d94  bl       #0x717a0                                ; [x0 归档路径] x30, x3, x4, x5, x6, x7
    // 0x013d98  mov      x29, x29                                
    // 0x013d9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013da0  mov      x21, x0                                 
    // 0x013da4  mov      x0, x19                                 
    // 0x013da8  mov      x2, x21                                 
    // 0x013dac  bl       #0x6aa80                                ; [class(?0x0) dictionaryWithContentsOfFile:] x0, x3, x4, x5, x6, x7
    // 0x013db0  mov      x29, x29                                
    // 0x013db4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x013db8  mov      x19, x0                                 
    // 0x013dbc  bl       #0x160dc                                ; func_0x160dc
}

- (void)关闭全部动作 {   // 0x144ac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 关闭全部动作 即可补全。
    // 0x0144ac  sub      sp, sp, #0x1e0                          
    // 0x0144b0  stp      x26, x25, [sp, #0x190]                  
    // 0x0144b4  stp      x24, x23, [sp, #0x1a0]                  
    // 0x0144b8  stp      x22, x21, [sp, #0x1b0]                  
    // 0x0144bc  stp      x20, x19, [sp, #0x1c0]                  
    // 0x0144c0  stp      x29, x30, [sp, #0x1d0]                  
    // 0x0144c4  add      x29, sp, #0x1d0                         
    // 0x0144c8  mov      x19, x0                                 
    // 0x0144cc  adrp     x8, #0x8c000                            
    // 0x0144d0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0144d4  ldr      x8, [x8]                                
    // 0x0144d8  stur     x8, [x29, #-0x48]                       
    // 0x0144dc  movi     v0.16b, #0                              
    // 0x0144e0  stp      q0, q0, [sp, #0x40]                     
    // 0x0144e4  stp      q0, q0, [sp, #0x60]                     
    // 0x0144e8  bl       #0x70700                                ; [x0 动作列表] x2, x3, x4, x5, x6, x7
    // 0x0144ec  mov      x29, x29                                
    // 0x0144f0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0144f4  mov      x20, x0                                 
    // 0x0144f8  add      x2, sp, #0x40                           
    // 0x0144fc  sub      x3, x29, #0xc8                          
    // 0x014500  bl       #0x160b0                                ; func_0x160b0
    // 0x014504  cbz      x0, #0x14570                            
    // 0x014508  mov      x21, x0                                 
}

- (id)导出文件名:(id)导出文件名 {   // 0x14640
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 导出文件名: 即可补全。
    // 0x014640  mov      x1, x30                                 
    // 0x014644  bl       #0x1618c                                ; func_0x1618c
    // 0x014648  mov      x30, x1                                 
    // 0x01464c  stp      x29, x30, [sp, #0x50]                   
    // 0x014650  add      x29, sp, #0x50                          
    // 0x014654  sub      sp, sp, #0x1d0                          
    // 0x014658  mov      x23, x0                                 
    // 0x01465c  adrp     x8, #0x8c000                            
    // 0x014660  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x014664  ldr      x8, [x8]                                
    // 0x014668  stur     x8, [x29, #-0x60]                       
    // 0x01466c  bl       #0x1612c                                ; func_0x1612c
    // 0x014670  bl       #0x161f8                                ; func_0x161f8
    // 0x014674  adrp     x8, #0x8f000                            
    // 0x014678  add      x8, x8, #0x210                          
    // 0x01467c  cmp      x0, #0                                  
    // 0x014680  csel     x0, x8, x19, eq                         
    // 0x014684  adrp     x2, #0x8f000                            
    // 0x014688  add      x2, x2, #0x230                          
    // 0x01468c  bl       #0x6f760                                ; [x0 stringByAppendingPathExtension:] x2, x3, x4, x5, x6, x7
    // 0x014690  mov      x29, x29                                
    // 0x014694  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x014698  mov      x20, x0                                 
    // 0x01469c  mov      x0, x23                                 
}

- (BOOL)导入路径:(id)导入路径 {   // 0x14930
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 导入路径: 即可补全。
    // 0x014930  mov      x1, x30                                 
    // 0x014934  bl       #0x1618c                                ; func_0x1618c
    // 0x014938  mov      x30, x1                                 
    // 0x01493c  stp      x29, x30, [sp, #0x50]                   
    // 0x014940  add      x29, sp, #0x50                          
    // 0x014944  sub      sp, sp, #0x270                          
    // 0x014948  str      x0, [sp, #8]                            
    // 0x01494c  adrp     x8, #0x8c000                            
    // 0x014950  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x014954  ldr      x8, [x8]                                
    // 0x014958  stur     x8, [x29, #-0x60]                       
    // 0x01495c  bl       #0x1612c                                ; func_0x1612c
    // 0x014960  mov      x2, x0                                  
    // 0x014964  adrp     x8, #0xad000                            
    // 0x014968  ldr      x0, [x8, #0xc8]                         ; class(?0x0)
    // 0x01496c  str      x2, [sp, #0x18]                         
    // 0x014970  bl       #0x6aa80                                ; [class(?0x0) dictionaryWithContentsOfFile:] x0, x3, x4, x5, x6, x7
    // 0x014974  mov      x29, x29                                
    // 0x014978  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01497c  mov      x20, x0                                 
    // 0x014980  cbz      x0, #0x149ac                            
    // 0x014984  adrp     x2, #0x8e000                            
    // 0x014988  add      x2, x2, #0xfb0                          
    // 0x01498c  mov      x0, x20                                 
}

- (id)组ById:(id)组ById {   // 0x14cf8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 组ById: 即可补全。
    // 0x014cf8  sub      sp, sp, #0x130                          
    // 0x014cfc  stp      x28, x27, [sp, #0xd0]                   
    // 0x014d00  stp      x26, x25, [sp, #0xe0]                   
    // 0x014d04  stp      x24, x23, [sp, #0xf0]                   
    // 0x014d08  stp      x22, x21, [sp, #0x100]                  
    // 0x014d0c  stp      x20, x19, [sp, #0x110]                  
    // 0x014d10  stp      x29, x30, [sp, #0x120]                  
    // 0x014d14  add      x29, sp, #0x120                         
    // 0x014d18  mov      x20, x0                                 
    // 0x014d1c  adrp     x8, #0x8c000                            
    // 0x014d20  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x014d24  ldr      x8, [x8]                                
    // 0x014d28  stur     x8, [x29, #-0x58]                       
    // 0x014d2c  bl       #0x1612c                                ; func_0x1612c
    // 0x014d30  bl       #0x161f8                                ; func_0x161f8
    // 0x014d34  cbz      x0, #0x14df4                            
    // 0x014d38  movi     v0.16b, #0                              
    // 0x014d3c  stp      q0, q0, [sp, #0x20]                     
    // 0x014d40  stp      q0, q0, [sp]                            
    // 0x014d44  mov      x0, x20                                 
    // 0x014d48  bl       #0x73240                                ; [x0 组列表] x2, x3, x4, x5, x6, x7
    // 0x014d4c  mov      x29, x29                                
    // 0x014d50  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x014d54  mov      x20, x0                                 
}

- (id)组内动作:(id)组内动作 {   // 0x14e24
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 组内动作: 即可补全。
    // 0x014e24  sub      sp, sp, #0x130                          
    // 0x014e28  stp      x28, x27, [sp, #0xd0]                   
    // 0x014e2c  stp      x26, x25, [sp, #0xe0]                   
    // 0x014e30  stp      x24, x23, [sp, #0xf0]                   
    // 0x014e34  stp      x22, x21, [sp, #0x100]                  
    // 0x014e38  stp      x20, x19, [sp, #0x110]                  
    // 0x014e3c  stp      x29, x30, [sp, #0x120]                  
    // 0x014e40  add      x29, sp, #0x120                         
    // 0x014e44  mov      x21, x0                                 
    // 0x014e48  adrp     x8, #0x8c000                            
    // 0x014e4c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x014e50  ldr      x8, [x8]                                
    // 0x014e54  stur     x8, [x29, #-0x58]                       
    // 0x014e58  bl       #0x1612c                                ; func_0x1612c
    // 0x014e5c  bl       #0x161f8                                ; func_0x161f8
    // 0x014e60  cbz      x0, #0x14f28                            
    // 0x014e64  adrp     x8, #0xad000                            
    // 0x014e68  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x014e6c  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x014e70  mov      x29, x29                                
    // 0x014e74  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x014e78  mov      x20, x0                                 
    // 0x014e7c  movi     v0.16b, #0                              
    // 0x014e80  stp      q0, q0, [sp]                            
}

- (BOOL)整理归属 {   // 0x14f68
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 整理归属 即可补全。
    // 0x014f68  mov      x2, x30                                 
    // 0x014f6c  bl       #0x1618c                                ; func_0x1618c
    // 0x014f70  mov      x30, x2                                 
    // 0x014f74  stp      x29, x30, [sp, #0x50]                   
    // 0x014f78  add      x29, sp, #0x50                          
    // 0x014f7c  sub      sp, sp, #0x4d0                          
    // 0x014f80  mov      x25, x0                                 
    // 0x014f84  adrp     x8, #0x8c000                            
    // 0x014f88  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x014f8c  ldr      x8, [x8]                                
    // 0x014f90  stur     x8, [x29, #-0x60]                       
    // 0x014f94  bl       #0x70700                                ; [x0 动作列表] x30, x3, x4, x5, x6, x7
    // 0x014f98  mov      x29, x29                                
    // 0x014f9c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x014fa0  mov      x20, x0                                 
    // 0x014fa4  bl       #0x6a720                                ; [x0 count] x30, x3, x4, x5, x6, x7
    // 0x014fa8  mov      x21, x0                                 
    // 0x014fac  bl       #0x160d4                                ; func_0x160d4
    // 0x014fb0  cbz      x21, #0x15128                           
    // 0x014fb4  mov      x0, x25                                 
    // 0x014fb8  bl       #0x73240                                ; [x0 组列表] x30, x3, x4, x5, x6, x7
    // 0x014fbc  mov      x29, x29                                
    // 0x014fc0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x014fc4  mov      x21, x0                                 
}

- (BOOL)需要调度 {   // 0x15544
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 需要调度 即可补全。
    // 0x015544  stp      x20, x19, [sp, #-0x20]!                 
    // 0x015548  stp      x29, x30, [sp, #0x10]                   
    // 0x01554c  add      x29, sp, #0x10                          
    // 0x015550  mov      x19, x0                                 
    // 0x015554  bl       #0x71320                                ; [x0 定时开始开] x2, x3, x4, x5, x6, x7
    // 0x015558  tbz      w0, #0, #0x1556c                        
    // 0x01555c  mov      w0, #1                                  
    // 0x015560  ldp      x29, x30, [sp, #0x10]                   
    // 0x015564  ldp      x20, x19, [sp], #0x20                   
    // 0x015568  ret                                              
    // 0x01556c  mov      x0, x19                                 
    // 0x015570  ldp      x29, x30, [sp, #0x10]                   
    // 0x015574  ldp      x20, x19, [sp], #0x20                   
    // 0x015578  b        #0x712e0                                ; [x0 定时停止开] x2, x3, x4, x5, x6, x7
}

- (BOOL)在时间窗:(long long)在时间窗 {   // 0x1557c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 在时间窗: 即可补全。
    // 0x01557c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x015580  stp      x20, x19, [sp, #0x10]                   
    // 0x015584  stp      x29, x30, [sp, #0x20]                   
    // 0x015588  add      x29, sp, #0x20                          
    // 0x01558c  mov      x19, x2                                 
    // 0x015590  mov      x20, x0                                 
    // 0x015594  bl       #0x74860                                ; [x0 需要调度] x2, x3, x4, x5, x6, x7
    // 0x015598  cbz      w0, #0x155e0                            
    // 0x01559c  mov      x0, x20                                 
    // 0x0155a0  bl       #0x71320                                ; [x0 定时开始开] x2, x3, x4, x5, x6, x7
    // 0x0155a4  cbz      w0, #0x155b8                            
    // 0x0155a8  mov      x0, x20                                 
    // 0x0155ac  bl       #0x71300                                ; [x0 定时开始分] x2, x3, x4, x5, x6, x7
    // 0x0155b0  mov      x21, x0                                 
    // 0x0155b4  b        #0x155bc                                
    // 0x0155b8  mov      x21, #0                                 
    // 0x0155bc  mov      x0, x20                                 
    // 0x0155c0  bl       #0x712e0                                ; [x0 定时停止开] x2, x3, x4, x5, x6, x7
    // 0x0155c4  cbz      w0, #0x155d4                            
    // 0x0155c8  mov      x0, x20                                 
    // 0x0155cc  bl       #0x712c0                                ; [x0 定时停止分] x2, x3, x4, x5, x6, x7
    // 0x0155d0  b        #0x155d8                                
    // 0x0155d4  mov      w0, #0x5a0                              
    // 0x0155d8  subs     x8, x0, x21                             
}

- (id)录制组 {   // 0x15620
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 录制组 即可补全。
    // 0x015620  sub      sp, sp, #0x120                          
    // 0x015624  stp      x28, x27, [sp, #0xd0]                   
    // 0x015628  stp      x24, x23, [sp, #0xe0]                   
    // 0x01562c  stp      x22, x21, [sp, #0xf0]                   
    // 0x015630  stp      x20, x19, [sp, #0x100]                  
    // 0x015634  stp      x29, x30, [sp, #0x110]                  
    // 0x015638  add      x29, sp, #0x110                         
    // 0x01563c  mov      x19, x0                                 
    // 0x015640  adrp     x8, #0x8c000                            
    // 0x015644  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x015648  ldr      x8, [x8]                                
    // 0x01564c  stur     x8, [x29, #-0x48]                       
    // 0x015650  movi     v0.16b, #0                              
    // 0x015654  stp      q0, q0, [sp]                            
    // 0x015658  stp      q0, q0, [sp, #0x20]                     
    // 0x01565c  bl       #0x73240                                ; [x0 组列表] x2, x3, x4, x5, x6, x7
    // 0x015660  mov      x29, x29                                
    // 0x015664  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x015668  mov      x20, x0                                 
    // 0x01566c  mov      x2, sp                                  
    // 0x015670  add      x3, sp, #0x48                           
    // 0x015674  bl       #0x160b0                                ; func_0x160b0
    // 0x015678  cbz      x0, #0x156d0                            
    // 0x01567c  mov      x21, x0                                 
}

- (void)添加录制动作:(id)添加录制动作 {   // 0x15778
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 添加录制动作: 即可补全。
    // 0x015778  stp      x24, x23, [sp, #-0x40]!                 
    // 0x01577c  stp      x22, x21, [sp, #0x10]                   
    // 0x015780  stp      x20, x19, [sp, #0x20]                   
    // 0x015784  stp      x29, x30, [sp, #0x30]                   
    // 0x015788  add      x29, sp, #0x30                          
    // 0x01578c  mov      x19, x0                                 
    // 0x015790  bl       #0x1612c                                ; func_0x1612c
    // 0x015794  mov      x20, x0                                 
    // 0x015798  mov      x0, x19                                 
    // 0x01579c  bl       #0x718c0                                ; [x0 录制组] x2, x3, x4, x5, x6, x7
    // 0x0157a0  mov      x29, x29                                
    // 0x0157a4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0157a8  mov      x21, x0                                 
    // 0x0157ac  bl       #0x727c0                                ; [x0 标识] x2, x3, x4, x5, x6, x7
    // 0x0157b0  mov      x29, x29                                
    // 0x0157b4  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0157b8  mov      x22, x0                                 
    // 0x0157bc  mov      x0, x20                                 
    // 0x0157c0  mov      x2, x22                                 
    // 0x0157c4  bl       #0x6c2e0                                ; [x0 setGid:] x0, x3, x4, x5, x6, x7
    // 0x0157c8  bl       #0x160e4                                ; func_0x160e4
    // 0x0157cc  mov      x0, x20                                 
    // 0x0157d0  bl       #0x16184                                ; func_0x16184
    // 0x0157d4  mov      x0, x19                                 
}

- (void)设置组开关:(id)设置组开关 开:(BOOL)开 {   // 0x15830
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 设置组开关:开: 即可补全。
    // 0x015830  sub      sp, sp, #0x1f0                          
    // 0x015834  stp      x28, x27, [sp, #0x190]                  
    // 0x015838  stp      x26, x25, [sp, #0x1a0]                  
    // 0x01583c  stp      x24, x23, [sp, #0x1b0]                  
    // 0x015840  stp      x22, x21, [sp, #0x1c0]                  
    // 0x015844  stp      x20, x19, [sp, #0x1d0]                  
    // 0x015848  stp      x29, x30, [sp, #0x1e0]                  
    // 0x01584c  add      x29, sp, #0x1e0                         
    // 0x015850  mov      x20, x3                                 
    // 0x015854  mov      x19, x0                                 
    // 0x015858  adrp     x8, #0x8c000                            
    // 0x01585c  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x015860  ldr      x8, [x8]                                
    // 0x015864  stur     x8, [x29, #-0x58]                       
    // 0x015868  mov      x0, x2                                  
    // 0x01586c  mov      x2, x3                                  
    // 0x015870  bl       #0x6df80                                ; [x2 set是否开启:] x3, x3, x4, x5, x6, x7
    // 0x015874  cbz      w20, #0x159c8                           
    // 0x015878  bl       #0x16260                                ; func_0x16260
    // 0x01587c  bl       #0x73240                                ; [x2 组列表] x3, x3, x4, x5, x6, x7
    // 0x015880  mov      x29, x29                                
    // 0x015884  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x015888  mov      x21, x0                                 
    // 0x01588c  add      x2, sp, #0x40                           
}

- (void)设置动作开关:(id)设置动作开关 开:(BOOL)开 {   // 0x159fc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 设置动作开关:开: 即可补全。
    // 0x0159fc  sub      sp, sp, #0x1f0                          
    // 0x015a00  stp      x28, x27, [sp, #0x190]                  
    // 0x015a04  stp      x26, x25, [sp, #0x1a0]                  
    // 0x015a08  stp      x24, x23, [sp, #0x1b0]                  
    // 0x015a0c  stp      x22, x21, [sp, #0x1c0]                  
    // 0x015a10  stp      x20, x19, [sp, #0x1d0]                  
    // 0x015a14  stp      x29, x30, [sp, #0x1e0]                  
    // 0x015a18  add      x29, sp, #0x1e0                         
    // 0x015a1c  mov      x21, x3                                 
    // 0x015a20  mov      x19, x0                                 
    // 0x015a24  adrp     x8, #0x8c000                            
    // 0x015a28  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x015a2c  ldr      x8, [x8]                                
    // 0x015a30  stur     x8, [x29, #-0x58]                       
    // 0x015a34  bl       #0x1612c                                ; func_0x1612c
    // 0x015a38  mov      x20, x0                                 
    // 0x015a3c  mov      x2, x21                                 
    // 0x015a40  bl       #0x6df80                                ; [x0 set是否开启:] x3, x3, x4, x5, x6, x7
    // 0x015a44  cbz      w21, #0x15ba4                           
    // 0x015a48  bl       #0x16260                                ; func_0x16260
    // 0x015a4c  bl       #0x73240                                ; [x0 组列表] x3, x3, x4, x5, x6, x7
    // 0x015a50  mov      x29, x29                                
    // 0x015a54  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x015a58  mov      x21, x0                                 
}

- (unsigned long long)索引Of标识:(id)索引Of标识 {   // 0x15bdc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 索引Of标识: 即可补全。
    // 0x015bdc  stp      x24, x23, [sp, #-0x40]!                 
    // 0x015be0  stp      x22, x21, [sp, #0x10]                   
    // 0x015be4  stp      x20, x19, [sp, #0x20]                   
    // 0x015be8  stp      x29, x30, [sp, #0x30]                   
    // 0x015bec  add      x29, sp, #0x30                          
    // 0x015bf0  mov      x20, x0                                 
    // 0x015bf4  bl       #0x1612c                                ; func_0x1612c
    // 0x015bf8  bl       #0x161f8                                ; func_0x161f8
    // 0x015bfc  cbz      x0, #0x15c6c                            
    // 0x015c00  mov      x0, x20                                 
    // 0x015c04  bl       #0x70700                                ; [x0 动作列表] x2, x3, x4, x5, x6, x7
    // 0x015c08  mov      x29, x29                                
    // 0x015c0c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x015c10  mov      x21, x0                                 
    // 0x015c14  mov      x20, #0                                 
    // 0x015c18  mov      x0, x21                                 
    // 0x015c1c  bl       #0x6a720                                ; [x0 count] x2, x3, x4, x5, x6, x7
    // 0x015c20  cmp      x20, x0                                 
    // 0x015c24  b.hs     #0x15c74                                
    // 0x015c28  mov      x0, x21                                 
    // 0x015c2c  mov      x2, x20                                 
    // 0x015c30  bl       #0x6b680                                ; [x0 objectAtIndexedSubscript:] #0, x3, x4, x5, x6, x7
    // 0x015c34  mov      x29, x29                                
    // 0x015c38  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

- (id)识图跳转显示名:(id)识图跳转显示名 {   // 0x15c98
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStore 识图跳转显示名: 即可补全。
    // 0x015c98  sub      sp, sp, #0x160                          
    // 0x015c9c  stp      x28, x27, [sp, #0x100]                  
    // 0x015ca0  stp      x26, x25, [sp, #0x110]                  
    // 0x015ca4  stp      x24, x23, [sp, #0x120]                  
    // 0x015ca8  stp      x22, x21, [sp, #0x130]                  
    // 0x015cac  stp      x20, x19, [sp, #0x140]                  
    // 0x015cb0  stp      x29, x30, [sp, #0x150]                  
    // 0x015cb4  add      x29, sp, #0x150                         
    // 0x015cb8  mov      x21, x0                                 
    // 0x015cbc  adrp     x8, #0x8c000                            
    // 0x015cc0  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x015cc4  ldr      x8, [x8]                                
    // 0x015cc8  stur     x8, [x29, #-0x60]                       
    // 0x015ccc  bl       #0x1612c                                ; func_0x1612c
    // 0x015cd0  bl       #0x161f8                                ; func_0x161f8
    // 0x015cd4  cbz      x0, #0x15cfc                            
    // 0x015cd8  mov      x0, x21                                 
    // 0x015cdc  mov      x2, x19                                 
    // 0x015ce0  bl       #0x73160                                ; [x0 索引Of标识:] x19, x3, x4, x5, x6, x7
    // 0x015ce4  mov      x8, #0x7fffffffffffffff                 
    // 0x015ce8  cmp      x0, x8                                  
    // 0x015cec  b.ne     #0x15d08                                
    // 0x015cf0  adrp     x22, #0x8f000                           
    // 0x015cf4  add      x22, x22, #0x2d0                        
}

- (id)动作列表 {   // 0x15f40
    return __动作列表;
}

- (id)组列表 {   // 0x15f48
    return __组列表;
}

- (long long)列表版本 {   // 0x15f50
    return __列表版本;
}

- (void)set列表版本:(long long)set列表版本 {   // 0x15f58
    __列表版本 = set列表版本;
}

- (BOOL)循环执行 {   // 0x15f60
    return __循环执行;
}

- (void)set循环执行:(BOOL)set循环执行 {   // 0x15f68
    __循环执行 = set循环执行;
}

- (BOOL)自动旋转 {   // 0x15f70
    return __自动旋转;
}

- (void)set自动旋转:(BOOL)set自动旋转 {   // 0x15f78
    __自动旋转 = set自动旋转;
}

- (BOOL)自动缩放 {   // 0x15f80
    return __自动缩放;
}

- (void)set自动缩放:(BOOL)set自动缩放 {   // 0x15f88
    __自动缩放 = set自动缩放;
}

- (BOOL)悬浮球自动隐藏 {   // 0x15f90
    return __悬浮球自动隐藏;
}

- (void)set悬浮球自动隐藏:(BOOL)set悬浮球自动隐藏 {   // 0x15f98
    __悬浮球自动隐藏 = set悬浮球自动隐藏;
}

- (double)悬浮球透明度 {   // 0x15fa0
    return __悬浮球透明度;
}

- (void)set悬浮球透明度:(double)set悬浮球透明度 {   // 0x15fa8
    return __悬浮球透明度;
}

- (BOOL)悬浮球贴边隐藏 {   // 0x15fb0
    return __悬浮球贴边隐藏;
}

- (void)set悬浮球贴边隐藏:(BOOL)set悬浮球贴边隐藏 {   // 0x15fb8
    __悬浮球贴边隐藏 = set悬浮球贴边隐藏;
}

- (BOOL)动作提示 {   // 0x15fc0
    return __动作提示;
}

- (void)set动作提示:(BOOL)set动作提示 {   // 0x15fc8
    __动作提示 = set动作提示;
}

- (long long)悬浮球尺寸 {   // 0x15fd0
    return __悬浮球尺寸;
}

- (void)set悬浮球尺寸:(long long)set悬浮球尺寸 {   // 0x15fd8
    __悬浮球尺寸 = set悬浮球尺寸;
}

- (long long)悬浮球形态 {   // 0x15fe0
    return __悬浮球形态;
}

- (void)set悬浮球形态:(long long)set悬浮球形态 {   // 0x15fe8
    __悬浮球形态 = set悬浮球形态;
}

- (BOOL)反检测 {   // 0x15ff0
    return __反检测;
}

- (void)set反检测:(BOOL)set反检测 {   // 0x15ff8
    __反检测 = set反检测;
}

- (long long)注入通道 {   // 0x16000
    return __注入通道;
}

- (void)set注入通道:(long long)set注入通道 {   // 0x16008
    __注入通道 = set注入通道;
}

- (long long)并发模式 {   // 0x16010
    return __并发模式;
}

- (void)set并发模式:(long long)set并发模式 {   // 0x16018
    __并发模式 = set并发模式;
}

- (long long)坐标量程 {   // 0x16020
    return __坐标量程;
}

- (void)set坐标量程:(long long)set坐标量程 {   // 0x16028
    __坐标量程 = set坐标量程;
}

- (BOOL)详细日志 {   // 0x16030
    return __详细日志;
}

- (void)set详细日志:(BOOL)set详细日志 {   // 0x16038
    __详细日志 = set详细日志;
}

- (BOOL)定时开始开 {   // 0x16040
    return __定时开始开;
}

- (void)set定时开始开:(BOOL)set定时开始开 {   // 0x16048
    __定时开始开 = set定时开始开;
}

- (BOOL)定时停止开 {   // 0x16050
    return __定时停止开;
}

- (void)set定时停止开:(BOOL)set定时停止开 {   // 0x16058
    __定时停止开 = set定时停止开;
}

- (long long)定时开始分 {   // 0x16060
    return __定时开始分;
}

- (void)set定时开始分:(long long)set定时开始分 {   // 0x16068
    __定时开始分 = set定时开始分;
}

- (long long)定时停止分 {   // 0x16070
    return __定时停止分;
}

- (void)set定时停止分:(long long)set定时停止分 {   // 0x16078
    __定时停止分 = set定时停止分;
}

@end