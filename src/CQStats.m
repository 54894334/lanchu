//
//  CQStats.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQStats

- (id)init {   // 0x10e44
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats init 即可补全。
    // 0x010e44  sub      sp, sp, #0x40                           
    // 0x010e48  stp      x22, x21, [sp, #0x10]                   
    // 0x010e4c  stp      x20, x19, [sp, #0x20]                   
    // 0x010e50  stp      x29, x30, [sp, #0x30]                   
    // 0x010e54  add      x29, sp, #0x30                          
    // 0x010e58  adrp     x8, #0xad000                            
    // 0x010e5c  ldr      x8, [x8, #0x4d0]                        ; class(CQStats)
    // 0x010e60  stp      x0, x8, [sp]                            
    // 0x010e64  adrp     x8, #0xaa000                            
    // 0x010e68  ldr      x1, [x8, #0x610]                        ; SEL("init")
    // 0x010e6c  mov      x0, sp                                  
    // 0x010e70  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x010e74  mov      x19, x0                                 
    // 0x010e78  cbz      x0, #0x10f20                            
    // 0x010e7c  adrp     x0, #0x75000                            
    // 0x010e80  add      x0, x0, #0x65                           
    // 0x010e84  mov      x1, #0                                  
    // 0x010e88  bl       #0x68dd0                                ; _dispatch_queue_create
    // 0x010e8c  ldr      x8, [x19, #0x10]                        
    // 0x010e90  str      x0, [x19, #0x10]                        
    // 0x010e94  bl       #0x122a4                                ; func_0x122a4
    // 0x010e98  mov      x0, x19                                 
    // 0x010e9c  bl       #0x73f00                                ; [x0 读盘] x2, x3, x4, x5, x6, x7
    // 0x010ea0  mov      x29, x29                                
}

- (void)set开启:(BOOL)set开启 {   // 0x10f38
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats set开启: 即可补全。
    // 0x010f38  stp      x20, x19, [sp, #-0x20]!                 
    // 0x010f3c  stp      x29, x30, [sp, #0x10]                   
    // 0x010f40  add      x29, sp, #0x10                          
    // 0x010f44  mov      x19, x2                                 
    // 0x010f48  strb     w2, [x0, #0x18]                         
    // 0x010f4c  adrp     x8, #0xad000                            
    // 0x010f50  ldr      x0, [x8, #0x88]                         ; class(?0x0)
    // 0x010f54  bl       #0x6f680                                ; [class(?0x0) standardUserDefaults] x2, x3, x4, x5, x6, x7
    // 0x010f58  mov      x29, x29                                
    // 0x010f5c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x010f60  mov      x20, x0                                 
    // 0x010f64  adrp     x3, #0x8e000                            
    // 0x010f68  add      x3, x3, #0xbb0                          
    // 0x010f6c  mov      x2, x19                                 
    // 0x010f70  bl       #0x6bee0                                ; [class(?0x0) setBool:forKey:] x2, x3, x4, x5, x6, x7
    // 0x010f74  mov      x0, x20                                 
    // 0x010f78  ldp      x29, x30, [sp, #0x10]                   
    // 0x010f7c  b        #0x12264                                ; func_0x12264
}

- (id)路径 {   // 0x10f80
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 路径 即可补全。
    // 0x010f80  stp      x20, x19, [sp, #-0x20]!                 
    // 0x010f84  stp      x29, x30, [sp, #0x10]                   
    // 0x010f88  add      x29, sp, #0x10                          
    // 0x010f8c  mov      w0, #5                                  
    // 0x010f90  mov      w1, #1                                  
    // 0x010f94  mov      w2, #1                                  
    // 0x010f98  bl       #0x68c2c                                ; _NSSearchPathForDirectoriesInDomains
    // 0x010f9c  mov      x29, x29                                
    // 0x010fa0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x010fa4  mov      x19, x0                                 
    // 0x010fa8  bl       #0x6acc0                                ; [x0 firstObject] x2, x3, x4, x5, x6, x7
    // 0x010fac  mov      x29, x29                                
    // 0x010fb0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x010fb4  mov      x20, x0                                 
    // 0x010fb8  bl       #0x12238                                ; func_0x12238
    // 0x010fbc  adrp     x2, #0x8e000                            
    // 0x010fc0  add      x2, x2, #0xd30                          
    // 0x010fc4  mov      x0, x20                                 
    // 0x010fc8  bl       #0x6f740                                ; [x0 stringByAppendingPathComponent:] x2, x3, x4, x5, x6, x7
    // 0x010fcc  mov      x29, x29                                
    // 0x010fd0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x010fd4  mov      x19, x0                                 
    // 0x010fd8  bl       #0x12220                                ; func_0x12220
    // 0x010fdc  mov      x0, x19                                 
}

- (id)读盘 {   // 0x10fec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 读盘 即可补全。
    // 0x010fec  stp      x24, x23, [sp, #-0x40]!                 
    // 0x010ff0  stp      x22, x21, [sp, #0x10]                   
    // 0x010ff4  stp      x20, x19, [sp, #0x20]                   
    // 0x010ff8  stp      x29, x30, [sp, #0x30]                   
    // 0x010ffc  add      x29, sp, #0x30                          
    // 0x011000  adrp     x24, #0xad000                           
    // 0x011004  ldr      x19, [x24, #0xc8]                       ; class(?0x0)
    // 0x011008  bl       #0x741e0                                ; [x0 路径] x2, x3, x4, x5, x6, x7
    // 0x01100c  mov      x29, x29                                
    // 0x011010  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011014  bl       #0x122bc                                ; func_0x122bc
    // 0x011018  bl       #0x6aa80                                ; [x0 dictionaryWithContentsOfFile:] x2, x3, x4, x5, x6, x7
    // 0x01101c  mov      x29, x29                                
    // 0x011020  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011024  mov      x19, x0                                 
    // 0x011028  bl       #0x12220                                ; func_0x12220
    // 0x01102c  adrp     x23, #0xad000                           
    // 0x011030  cbz      x19, #0x11040                           
    // 0x011034  mov      x0, x19                                 
    // 0x011038  bl       #0x6b540                                ; [x0 mutableCopy] x2, x3, x4, x5, x6, x7
    // 0x01103c  b        #0x11050                                
    // 0x011040  ldr      x0, [x23, #0x1d8]                       ; class(?0x0)
    // 0x011044  bl       #0x6aa60                                ; [class(?0x0) dictionary] x2, x3, x4, x5, x6, x7
    // 0x011048  mov      x29, x29                                
}

- (void)异步写盘 {   // 0x11114
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 异步写盘 即可补全。
    // 0x011114  sub      sp, sp, #0x60                           
    // 0x011118  stp      x22, x21, [sp, #0x30]                   
    // 0x01111c  stp      x20, x19, [sp, #0x40]                   
    // 0x011120  stp      x29, x30, [sp, #0x50]                   
    // 0x011124  add      x29, sp, #0x50                          
    // 0x011128  mov      x19, x0                                 
    // 0x01112c  ldr      x0, [x0, #8]                            
    // 0x011130  bl       #0x6a700                                ; [x0 copy] x2, x3, x4, x5, x6, x7
    // 0x011134  mov      x20, x0                                 
    // 0x011138  mov      w0, #0x11                               
    // 0x01113c  mov      x1, #0                                  
    // 0x011140  bl       #0x68d7c                                ; _dispatch_get_global_queue
    // 0x011144  mov      x29, x29                                
    // 0x011148  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01114c  mov      x21, x0                                 
    // 0x011150  adrp     x8, #0x8c000                            
    // 0x011154  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
    // 0x011158  str      x8, [sp]                                
    // 0x01115c  adrp     x8, #0x7b000                            
    // 0x011160  ldr      d0, [x8, #0x8c0]                        ; ptr_0x7b8c0
    // 0x011164  str      d0, [sp, #8]                            
    // 0x011168  adrp     x8, #0x11000                            
    // 0x01116c  add      x8, x8, #0x1bc                          
    // 0x011170  adrp     x9, #0x8c000                            
}

- (void)检查跨天 {   // 0x111f0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 检查跨天 即可补全。
    // 0x0111f0  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0111f4  stp      x20, x19, [sp, #0x10]                   
    // 0x0111f8  stp      x29, x30, [sp, #0x20]                   
    // 0x0111fc  add      x29, sp, #0x20                          
    // 0x011200  mov      x20, x0                                 
    // 0x011204  bl       #0x70000                                ; [x0 今天字符串] x2, x3, x4, x5, x6, x7
    // 0x011208  mov      x29, x29                                
    // 0x01120c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011210  mov      x19, x0                                 
    // 0x011214  ldr      x0, [x20, #8]                           
    // 0x011218  adrp     x2, #0x8e000                            
    // 0x01121c  add      x2, x2, #0xbf0                          
    // 0x011220  bl       #0x6b6c0                                ; [x0 objectForKeyedSubscript:] x2, x3, x4, x5, x6, x7
    // 0x011224  mov      x29, x29                                
    // 0x011228  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x01122c  mov      x20, x0                                 
    // 0x011230  adrp     x2, #0x8e000                            
    // 0x011234  add      x2, x2, #0xc10                          
    // 0x011238  bl       #0x6b6c0                                ; [x0 objectForKeyedSubscript:] x2, x3, x4, x5, x6, x7
    // 0x01123c  mov      x29, x29                                
    // 0x011240  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011244  mov      x21, x0                                 
    // 0x011248  mov      x2, x19                                 
    // 0x01124c  bl       #0x6b1c0                                ; [x0 isEqualToString:] x0, x3, x4, x5, x6, x7
}

- (id)今天字符串 {   // 0x112d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 今天字符串 即可补全。
    // 0x0112d4  stp      x22, x21, [sp, #-0x30]!                 
    // 0x0112d8  stp      x20, x19, [sp, #0x10]                   
    // 0x0112dc  stp      x29, x30, [sp, #0x20]                   
    // 0x0112e0  add      x29, sp, #0x20                          
    // 0x0112e4  adrp     x8, #0xad000                            
    // 0x0112e8  ldr      x0, [x8, #0x228]                        ; class(?0x0)
    // 0x0112ec  bl       #0x68f68                                ; _objc_alloc_init
    // 0x0112f0  mov      x19, x0                                 
    // 0x0112f4  adrp     x2, #0x8e000                            
    // 0x0112f8  add      x2, x2, #0xd50                          
    // 0x0112fc  bl       #0x6c160                                ; [class(?0x0) setDateFormat:] x2, x3, x4, x5, x6, x7
    // 0x011300  adrp     x8, #0xad000                            
    // 0x011304  ldr      x0, [x8, #0x138]                        ; class(?0x0)
    // 0x011308  bl       #0x6a860                                ; [class(?0x0) date] x2, x3, x4, x5, x6, x7
    // 0x01130c  mov      x29, x29                                
    // 0x011310  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011314  bl       #0x122bc                                ; func_0x122bc
    // 0x011318  bl       #0x6f820                                ; [class(?0x0) stringFromDate:] x2, x3, x4, x5, x6, x7
    // 0x01131c  mov      x29, x29                                
    // 0x011320  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x011324  mov      x21, x0                                 
    // 0x011328  bl       #0x12220                                ; func_0x12220
    // 0x01132c  bl       #0x12238                                ; func_0x12238
    // 0x011330  mov      x0, x21                                 
}

- (void)记录组:(id)记录组 名称:(id)名称 成功:(BOOL)成功 耗时:(double)耗时 {   // 0x11344
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 记录组:名称:成功:耗时: 即可补全。
    // 0x011344  sub      sp, sp, #0xa0                           
    // 0x011348  stp      d9, d8, [sp, #0x50]                     
    // 0x01134c  stp      x24, x23, [sp, #0x60]                   
    // 0x011350  stp      x22, x21, [sp, #0x70]                   
    // 0x011354  stp      x20, x19, [sp, #0x80]                   
    // 0x011358  stp      x29, x30, [sp, #0x90]                   
    // 0x01135c  add      x29, sp, #0x90                          
    // 0x011360  fmov     d8, d0                                  
    // 0x011364  mov      x21, x4                                 
    // 0x011368  mov      x20, x3                                 
    // 0x01136c  mov      x22, x0                                 
    // 0x011370  mov      x0, x2                                  
    // 0x011374  bl       #0x6904c                                ; _objc_retain
    // 0x011378  bl       #0x122dc                                ; func_0x122dc
    // 0x01137c  mov      x20, x0                                 
    // 0x011380  mov      x0, x22                                 
    // 0x011384  bl       #0x716a0                                ; [x0 开启] x2, x3, x4, x5, x6, x7
    // 0x011388  cbz      w0, #0x11450                            
    // 0x01138c  mov      x0, x19                                 
    // 0x011390  bl       #0x6b300                                ; [x19 length] x2, x3, x4, x5, x6, x7
    // 0x011394  cbz      x0, #0x11450                            
    // 0x011398  mov      x0, x20                                 
    // 0x01139c  bl       #0x6b300                                ; [x2 length] x2, x3, x4, x5, x6, x7
    // 0x0113a0  adrp     x8, #0x8e000                            
}

- (void)累加表:(id)累加表 组ID:(id)组ID 名称:(id)名称 成功:(BOOL)成功 耗时:(double)耗时 时间:(double)时间 {   // 0x11678
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 累加表:组ID:名称:成功:耗时:时间: 即可补全。
    // 0x011678  stp      d9, d8, [sp, #-0x70]!                   
    // 0x01167c  stp      x28, x27, [sp, #0x10]                   
    // 0x011680  stp      x26, x25, [sp, #0x20]                   
    // 0x011684  stp      x24, x23, [sp, #0x30]                   
    // 0x011688  stp      x22, x21, [sp, #0x40]                   
    // 0x01168c  stp      x20, x19, [sp, #0x50]                   
    // 0x011690  stp      x29, x30, [sp, #0x60]                   
    // 0x011694  add      x29, sp, #0x60                          
    // 0x011698  fmov     d8, d1                                  
    // 0x01169c  fmov     d9, d0                                  
    // 0x0116a0  mov      x23, x5                                 
    // 0x0116a4  mov      x21, x4                                 
    // 0x0116a8  mov      x20, x3                                 
    // 0x0116ac  mov      x0, x2                                  
    // 0x0116b0  bl       #0x6904c                                ; _objc_retain
    // 0x0116b4  bl       #0x122dc                                ; func_0x122dc
    // 0x0116b8  mov      x20, x0                                 
    // 0x0116bc  mov      x0, x21                                 
    // 0x0116c0  bl       #0x6904c                                ; _objc_retain
    // 0x0116c4  mov      x21, x0                                 
    // 0x0116c8  mov      x0, x19                                 
    // 0x0116cc  mov      x2, x20                                 
    // 0x0116d0  bl       #0x6b6c0                                ; [x19 objectForKeyedSubscript:] x2, x3, x4, x5, x6, x7
    // 0x0116d4  mov      x29, x29                                
}

- (id)数组From:(id)数组From {   // 0x1189c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 数组From: 即可补全。
    // 0x01189c  sub      sp, sp, #0x1f0                          
    // 0x0118a0  stp      x28, x27, [sp, #0x190]                  
    // 0x0118a4  stp      x26, x25, [sp, #0x1a0]                  
    // 0x0118a8  stp      x24, x23, [sp, #0x1b0]                  
    // 0x0118ac  stp      x22, x21, [sp, #0x1c0]                  
    // 0x0118b0  stp      x20, x19, [sp, #0x1d0]                  
    // 0x0118b4  stp      x29, x30, [sp, #0x1e0]                  
    // 0x0118b8  add      x29, sp, #0x1e0                         
    // 0x0118bc  mov      x0, x2                                  
    // 0x0118c0  adrp     x8, #0x8c000                            
    // 0x0118c4  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0118c8  ldr      x8, [x8]                                
    // 0x0118cc  stur     x8, [x29, #-0x60]                       
    // 0x0118d0  bl       #0x6904c                                ; _objc_retain
    // 0x0118d4  mov      x19, x0                                 
    // 0x0118d8  adrp     x8, #0xad000                            
    // 0x0118dc  ldr      x0, [x8, #0x170]                        ; class(?0x0)
    // 0x0118e0  bl       #0x6a0a0                                ; [class(?0x0) array] x2, x3, x4, x5, x6, x7
    // 0x0118e4  mov      x29, x29                                
    // 0x0118e8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0118ec  str      x0, [sp, #0x40]                         
    // 0x0118f0  movi     v0.16b, #0                              
    // 0x0118f4  stp      q0, q0, [sp, #0x50]                     
    // 0x0118f8  stp      q0, q0, [sp, #0x70]                     
}

- (id)组统计 {   // 0x11cec
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 组统计 即可补全。
    // 0x011cec  sub      sp, sp, #0x80                           
    // 0x011cf0  stp      x20, x19, [sp, #0x60]                   
    // 0x011cf4  stp      x29, x30, [sp, #0x70]                   
    // 0x011cf8  add      x29, sp, #0x70                          
    // 0x011cfc  add      x9, sp, #0x30                           
    // 0x011d00  stp      xzr, x9, [sp, #0x30]                    
    // 0x011d04  adrp     x8, #0x7b000                            
    // 0x011d08  ldr      d0, [x8, #0x8c8]                        ; ptr_0x7b8c8
    // 0x011d0c  str      d0, [sp, #0x40]                         
    // 0x011d10  adrp     x8, #0x11000                            
    // 0x011d14  add      x8, x8, #0xd74                          
    // 0x011d18  adrp     x10, #0x11000                           
    // 0x011d1c  add      x10, x10, #0xd84                        
    // 0x011d20  stp      x8, x10, [sp, #0x48]                    
    // 0x011d24  str      xzr, [sp, #0x58]                        
    // 0x011d28  ldr      x8, [x0, #0x10]                         
    // 0x011d2c  adrp     x10, #0x8c000                           
    // 0x011d30  ldr      x10, [x10, #0xd8]                       ; ptr_0x8c0d8
    // 0x011d34  str      x10, [sp]                               
    // 0x011d38  adrp     x10, #0x7b000                           
    // 0x011d3c  ldr      d0, [x10, #0x8c0]                       ; ptr_0x7b8c0
    // 0x011d40  str      d0, [sp, #8]                            
    // 0x011d44  adrp     x10, #0x11000                           
    // 0x011d48  add      x10, x10, #0xd8c                        
}

- (id)汇总 {   // 0x11dfc
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 汇总 即可补全。
    // 0x011dfc  sub      sp, sp, #0x80                           
    // 0x011e00  stp      x20, x19, [sp, #0x60]                   
    // 0x011e04  stp      x29, x30, [sp, #0x70]                   
    // 0x011e08  add      x29, sp, #0x70                          
    // 0x011e0c  add      x9, sp, #0x30                           
    // 0x011e10  stp      xzr, x9, [sp, #0x30]                    
    // 0x011e14  adrp     x8, #0x7b000                            
    // 0x011e18  ldr      d0, [x8, #0x8c8]                        ; ptr_0x7b8c8
    // 0x011e1c  str      d0, [sp, #0x40]                         
    // 0x011e20  adrp     x8, #0x11000                            
    // 0x011e24  add      x8, x8, #0xd74                          
    // 0x011e28  adrp     x10, #0x11000                           
    // 0x011e2c  add      x10, x10, #0xd84                        
    // 0x011e30  stp      x8, x10, [sp, #0x48]                    
    // 0x011e34  str      xzr, [sp, #0x58]                        
    // 0x011e38  ldr      x8, [x0, #0x10]                         
    // 0x011e3c  adrp     x10, #0x8c000                           
    // 0x011e40  ldr      x10, [x10, #0xd8]                       ; ptr_0x8c0d8
    // 0x011e44  str      x10, [sp]                               
    // 0x011e48  adrp     x10, #0x7b000                           
    // 0x011e4c  ldr      d0, [x10, #0x8c0]                       ; ptr_0x7b8c0
    // 0x011e50  str      d0, [sp, #8]                            
    // 0x011e54  adrp     x10, #0x11000                           
    // 0x011e58  add      x10, x10, #0xe84                        
}

- (void)清零 {   // 0x120e4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 CQStats 清零 即可补全。
    // 0x0120e4  sub      sp, sp, #0x40                           
    // 0x0120e8  stp      x29, x30, [sp, #0x30]                   
    // 0x0120ec  add      x29, sp, #0x30                          
    // 0x0120f0  adrp     x9, #0x8c000                            
    // 0x0120f4  ldr      x9, [x9, #0xd8]                         ; ptr_0x8c0d8
    // 0x0120f8  ldr      x8, [x0, #0x10]                         
    // 0x0120fc  str      x9, [sp, #8]                            
    // 0x012100  adrp     x9, #0x7b000                            
    // 0x012104  ldr      d0, [x9, #0x8c0]                        ; ptr_0x7b8c0
    // 0x012108  adrp     x9, #0x12000                            
    // 0x01210c  add      x9, x9, #0x13c                          
    // 0x012110  str      d0, [sp, #0x10]                         
    // 0x012114  adrp     x10, #0x8c000                           
    // 0x012118  add      x10, x10, #0x3c0                        
    // 0x01211c  stp      x9, x10, [sp, #0x18]                    
    // 0x012120  str      x0, [sp, #0x28]                         
    // 0x012124  add      x1, sp, #8                              
    // 0x012128  mov      x0, x8                                  
    // 0x01212c  bl       #0x68d70                                ; _dispatch_async
    // 0x012130  ldp      x29, x30, [sp, #0x30]                   
    // 0x012134  add      sp, sp, #0x40                           
    // 0x012138  ret                                              
}

- (BOOL)开启 {   // 0x121e8
    return _开启;
}

@end