//
//  录制视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 录制视图

- (void)构建 {   // 0x33334
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 构建 即可补全。
    // 0x033334  stp      d9, d8, [sp, #-0x50]!                   
    // 0x033338  stp      x24, x23, [sp, #0x10]                   
    // 0x03333c  stp      x22, x21, [sp, #0x20]                   
    // 0x033340  stp      x20, x19, [sp, #0x30]                   
    // 0x033344  stp      x29, x30, [sp, #0x40]                   
    // 0x033348  add      x29, sp, #0x40                          
    // 0x03334c  mov      x19, x0                                 
    // 0x033350  adrp     x22, #0xad000                           
    // 0x033354  bl       #0x34210                                ; func_0x34210
    // 0x033358  mov      x8, #0x4074000000000000                 
    // 0x03335c  fmov     d2, x8                                  
    // 0x033360  fmov     d0, xzr                                 
    // 0x033364  fmov     d1, #14.00000000                        
    // 0x033368  fmov     d3, #26.00000000                        
    // 0x03336c  bl       #0x6af60                                ; [x0 initWithFrame:] x2, x3, x4, x5, x6, x7
    // 0x033370  mov      x20, x0                                 
    // 0x033374  adrp     x2, #0x91000                            
    // 0x033378  add      x2, x2, #0xd50                          
    // 0x03337c  bl       #0x6cb00                                ; [x0 setText:] x2, x3, x4, x5, x6, x7
    // 0x033380  bl       #0x2020c                                ; _CQThemeTextPrimary
    // 0x033384  mov      x29, x29                                
    // 0x033388  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03338c  mov      x21, x0                                 
    // 0x033390  mov      x0, x20                                 
}

- (void)刷新状态灯 {   // 0x336b8
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 刷新状态灯 即可补全。
    // 0x0336b8  sub      sp, sp, #0x70                           
    // 0x0336bc  stp      d9, d8, [sp, #0x20]                     
    // 0x0336c0  stp      x24, x23, [sp, #0x30]                   
    // 0x0336c4  stp      x22, x21, [sp, #0x40]                   
    // 0x0336c8  stp      x20, x19, [sp, #0x50]                   
    // 0x0336cc  stp      x29, x30, [sp, #0x60]                   
    // 0x0336d0  add      x29, sp, #0x60                          
    // 0x0336d4  mov      x19, x0                                 
    // 0x0336d8  adrp     x8, #0x8c000                            
    // 0x0336dc  ldr      x8, [x8, #0xf8]                         ; ptr_0x8c0f8
    // 0x0336e0  ldr      x8, [x8]                                
    // 0x0336e4  str      x8, [sp, #0x18]                         
    // 0x0336e8  adrp     x8, #0xad000                            
    // 0x0336ec  ldr      x0, [x8, #0x100]                        ; class(CQRecorder)
    // 0x0336f0  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
    // 0x0336f4  mov      x29, x29                                
    // 0x0336f8  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0336fc  mov      x21, x0                                 
    // 0x033700  bl       #0x71860                                ; [class(CQRecorder) 录制中] x2, x3, x4, x5, x6, x7
    // 0x033704  mov      x20, x0                                 
    // 0x033708  bl       #0x34144                                ; func_0x34144
    // 0x03370c  cbz      w20, #0x33720                           
    // 0x033710  bl       #0x20274                                ; _CQThemeDanger
    // 0x033714  mov      x29, x29                                
}

- (void)显示 {   // 0x3399c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 显示 即可补全。
    // 0x03399c  sub      sp, sp, #0xb0                           
    // 0x0339a0  stp      d9, d8, [sp, #0x60]                     
    // 0x0339a4  stp      x24, x23, [sp, #0x70]                   
    // 0x0339a8  stp      x22, x21, [sp, #0x80]                   
    // 0x0339ac  stp      x20, x19, [sp, #0x90]                   
    // 0x0339b0  stp      x29, x30, [sp, #0xa0]                   
    // 0x0339b4  add      x29, sp, #0xa0                          
    // 0x0339b8  mov      x20, x0                                 
    // 0x0339bc  adrp     x21, #0xad000                           
    // 0x0339c0  ldr      x0, [x21, #0x100]                       ; class(CQRecorder)
    // 0x0339c4  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
    // 0x0339c8  mov      x29, x29                                
    // 0x0339cc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x0339d0  mov      x19, x0                                 
    // 0x0339d4  bl       #0x71260                                ; [class(CQRecorder) 安装] x2, x3, x4, x5, x6, x7
    // 0x0339d8  bl       #0x34220                                ; func_0x34220
    // 0x0339dc  sub      x0, x29, #0x48                          
    // 0x0339e0  mov      x1, x20                                 
    // 0x0339e4  bl       #0x68fec                                ; _objc_initWeak
    // 0x0339e8  adrp     x23, #0x8c000                           
    // 0x0339ec  ldr      x23, [x23, #0xd8]                       ; ptr_0x8c0d8
    // 0x0339f0  str      x23, [sp, #0x30]                        
    // 0x0339f4  adrp     x8, #0x7b000                            
    // 0x0339f8  ldr      d8, [x8, #0x8c0]                        ; ptr_0x7b8c0
}

- (void)willMoveToSuperview:(id)willMoveToSuperview {   // 0x33b84
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 willMoveToSuperview: 即可补全。
    // 0x033b84  sub      sp, sp, #0x30                           
    // 0x033b88  stp      x20, x19, [sp, #0x10]                   
    // 0x033b8c  stp      x29, x30, [sp, #0x20]                   
    // 0x033b90  add      x29, sp, #0x20                          
    // 0x033b94  mov      x20, x2                                 
    // 0x033b98  mov      x19, x0                                 
    // 0x033b9c  adrp     x8, #0xad000                            
    // 0x033ba0  ldr      x8, [x8, #0x508]                        ; class(录制视图)
    // 0x033ba4  stp      x0, x8, [sp]                            
    // 0x033ba8  adrp     x8, #0xac000                            
    // 0x033bac  ldr      x1, [x8, #0xda8]                        ; SEL("willMoveToSuperview:")
    // 0x033bb0  mov      x0, sp                                  
    // 0x033bb4  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x033bb8  cbnz     x20, #0x33bfc                           
    // 0x033bbc  adrp     x8, #0xad000                            
    // 0x033bc0  ldrsw    x20, [x8, #0x924]                       
    // 0x033bc4  ldr      x0, [x19, x20]                          
    // 0x033bc8  bl       #0x6b160                                ; [x0 invalidate] x2, x3, x4, x5, x6, x7
    // 0x033bcc  ldr      x0, [x19, x20]                          
    // 0x033bd0  str      xzr, [x19, x20]                         
    // 0x033bd4  bl       #0x69040                                ; _objc_release
    // 0x033bd8  adrp     x8, #0xad000                            
    // 0x033bdc  ldr      x0, [x8, #0x100]                        ; class(CQRecorder)
    // 0x033be0  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
}

- (void)刷新 {   // 0x33c0c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 刷新 即可补全。
    // 0x033c0c  sub      sp, sp, #0x50                           
    // 0x033c10  stp      x24, x23, [sp, #0x10]                   
    // 0x033c14  stp      x22, x21, [sp, #0x20]                   
    // 0x033c18  stp      x20, x19, [sp, #0x30]                   
    // 0x033c1c  stp      x29, x30, [sp, #0x40]                   
    // 0x033c20  add      x29, sp, #0x40                          
    // 0x033c24  mov      x19, x0                                 
    // 0x033c28  adrp     x8, #0xad000                            
    // 0x033c2c  ldr      x0, [x8, #0x100]                        ; class(CQRecorder)
    // 0x033c30  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
    // 0x033c34  mov      x29, x29                                
    // 0x033c38  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x033c3c  bl       #0x34234                                ; func_0x34234
    // 0x033c40  adrp     x8, #0x91000                            
    // 0x033c44  add      x8, x8, #0xd70                          
    // 0x033c48  adrp     x9, #0x91000                            
    // 0x033c4c  add      x9, x9, #0xe50                          
    // 0x033c50  cmp      w0, #0                                  
    // 0x033c54  csel     x2, x9, x8, ne                          
    // 0x033c58  adrp     x8, #0xad000                            
    // 0x033c5c  ldrsw    x8, [x8, #0x918]                        
    // 0x033c60  ldr      x0, [x19, x8]                           
    // 0x033c64  bl       #0x6cb00                                ; [class(CQRecorder) setText:] x2, x3, x4, x5, x6, x7
    // 0x033c68  adrp     x8, #0xad000                            
}

- (void)切换 {   // 0x33d1c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 切换 即可补全。
    // 0x033d1c  stp      x22, x21, [sp, #-0x30]!                 
    // 0x033d20  stp      x20, x19, [sp, #0x10]                   
    // 0x033d24  stp      x29, x30, [sp, #0x20]                   
    // 0x033d28  add      x29, sp, #0x20                          
    // 0x033d2c  mov      x19, x0                                 
    // 0x033d30  adrp     x8, #0xad000                            
    // 0x033d34  ldr      x0, [x8, #0x100]                        ; class(CQRecorder)
    // 0x033d38  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
    // 0x033d3c  mov      x29, x29                                
    // 0x033d40  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x033d44  bl       #0x34234                                ; func_0x34234
    // 0x033d48  cbz      w0, #0x33d5c                            
    // 0x033d4c  adrp     x8, #0xad000                            
    // 0x033d50  ldr      x0, [x8, #0x198]                        ; class(录制视图)
    // 0x033d54  bl       #0x70160                                ; [class(录制视图) 停止录制并询问保存] x2, x3, x4, x5, x6, x7
    // 0x033d58  b        #0x33da8                                
    // 0x033d5c  mov      x0, x20                                 
    // 0x033d60  bl       #0x716e0                                ; [x20 开始] x2, x3, x4, x5, x6, x7
    // 0x033d64  adrp     x22, #0xad000                           
    // 0x033d68  ldr      x0, [x22, #0x90]                        ; class(CQOverlay)
    // 0x033d6c  bl       #0x6f560                                ; [class(CQOverlay) shared] x2, x3, x4, x5, x6, x7
    // 0x033d70  mov      x29, x29                                
    // 0x033d74  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x033d78  mov      x21, x0                                 
}

- (void)保存 {   // 0x34074
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 录制视图 保存 即可补全。
    // 0x034074  stp      x22, x21, [sp, #-0x30]!                 
    // 0x034078  stp      x20, x19, [sp, #0x10]                   
    // 0x03407c  stp      x29, x30, [sp, #0x20]                   
    // 0x034080  add      x29, sp, #0x20                          
    // 0x034084  mov      x19, x0                                 
    // 0x034088  adrp     x8, #0xad000                            
    // 0x03408c  ldr      x0, [x8, #0x100]                        ; class(CQRecorder)
    // 0x034090  bl       #0x6f560                                ; [class(CQRecorder) shared] x2, x3, x4, x5, x6, x7
    // 0x034094  mov      x29, x29                                
    // 0x034098  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03409c  bl       #0x34234                                ; func_0x34234
    // 0x0340a0  mov      x21, x0                                 
    // 0x0340a4  bl       #0x341ac                                ; func_0x341ac
    // 0x0340a8  cbz      w21, #0x340cc                           
    // 0x0340ac  adrp     x8, #0xad000                            
    // 0x0340b0  ldr      x0, [x8, #0x190]                        ; class(自定义弹窗)
    // 0x0340b4  adrp     x2, #0x91000                            
    // 0x0340b8  add      x2, x2, #0xf90                          
    // 0x0340bc  ldp      x29, x30, [sp, #0x20]                   
    // 0x0340c0  ldp      x20, x19, [sp, #0x10]                   
    // 0x0340c4  ldp      x22, x21, [sp], #0x30                   
    // 0x0340c8  b        #0x724c0                                ; [class(自定义弹窗) 显示消息:] x2, x3, x4, x5, x6, x7
    // 0x0340cc  mov      x0, x19                                 
    // 0x0340d0  ldp      x29, x30, [sp, #0x20]                   
}

@end