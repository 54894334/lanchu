//
//  副标题单元格.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 副标题单元格

- (id)initWithStyle:(long long)initWithStyle reuseIdentifier:(id)reuseIdentifier {   // 0x25548
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 副标题单元格 initWithStyle:reuseIdentifier: 即可补全。
    // 0x025548  sub      sp, sp, #0x40                           
    // 0x02554c  stp      x22, x21, [sp, #0x10]                   
    // 0x025550  stp      x20, x19, [sp, #0x20]                   
    // 0x025554  stp      x29, x30, [sp, #0x30]                   
    // 0x025558  add      x29, sp, #0x30                          
    // 0x02555c  adrp     x8, #0xad000                            
    // 0x025560  ldr      x8, [x8, #0x4e8]                        ; class(副标题单元格)
    // 0x025564  stp      x0, x8, [sp]                            
    // 0x025568  adrp     x8, #0xaa000                            
    // 0x02556c  ldr      x1, [x8, #0x670]                        ; SEL("initWithStyle:reuseIdentifier:")
    // 0x025570  mov      x0, sp                                  
    // 0x025574  mov      w2, #3                                  
    // 0x025578  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x02557c  mov      x19, x0                                 
    // 0x025580  cbz      x0, #0x25638                            
    // 0x025584  adrp     x21, #0xad000                           
    // 0x025588  ldr      x0, [x21, #0x1b8]                       ; class(?0x0)
    // 0x02558c  bl       #0x6a420                                ; [class(?0x0) clearColor] x2, x3, x4, x5, x6, x7
    // 0x025590  mov      x29, x29                                
    // 0x025594  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x025598  bl       #0x2aaf0                                ; func_0x2aaf0
    // 0x02559c  bl       #0x6bea0                                ; [class(?0x0) setBackgroundColor:] x2, x3, x4, x5, x6, x7
    // 0x0255a0  bl       #0x2aa3c                                ; func_0x2aa3c
    // 0x0255a4  ldr      x0, [x21, #0x1b8]                       ; class(?0x0)
}

- (void)layoutSubviews {   // 0x25650
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 副标题单元格 layoutSubviews 即可补全。
    // 0x025650  sub      sp, sp, #0x30                           
    // 0x025654  stp      x20, x19, [sp, #0x10]                   
    // 0x025658  stp      x29, x30, [sp, #0x20]                   
    // 0x02565c  add      x29, sp, #0x20                          
    // 0x025660  mov      x19, x0                                 
    // 0x025664  adrp     x8, #0xad000                            
    // 0x025668  ldr      x8, [x8, #0x4e8]                        ; class(副标题单元格)
    // 0x02566c  stp      x0, x8, [sp]                            
    // 0x025670  adrp     x8, #0xac000                            
    // 0x025674  ldr      x1, [x8, #0xd30]                        ; SEL("layoutSubviews")
    // 0x025678  mov      x0, sp                                  
    // 0x02567c  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x025680  mov      x0, x19                                 
    // 0x025684  bl       #0x6a680                                ; [x0 contentView] x2, x3, x4, x5, x6, x7
    // 0x025688  mov      x29, x29                                
    // 0x02568c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x025690  mov      x20, x0                                 
    // 0x025694  bl       #0x6a340                                ; [x0 bounds] x2, x3, x4, x5, x6, x7
    // 0x025698  fmov     d4, xzr                                 
    // 0x02569c  fadd     d0, d0, d4                              
    // 0x0256a0  fmov     d4, #3.00000000                         
    // 0x0256a4  fadd     d1, d1, d4                              
    // 0x0256a8  fmov     d4, #-6.00000000                        
    // 0x0256ac  fadd     d3, d3, d4                              
}

- (id)卡片底 {   // 0x256d4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 副标题单元格 卡片底 即可补全。
    // 0x0256d4  adrp     x8, #0xad000                            
    // 0x0256d8  ldrsw    x8, [x8, #0x708]                        
    // 0x0256dc  b        #0x2ab24                                ; func_0x2ab24
}

- (void)set卡片底:(id)set卡片底 {   // 0x256e0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 副标题单元格 set卡片底: 即可补全。
    // 0x0256e0  mov      x1, x2                                  
    // 0x0256e4  adrp     x8, #0xad000                            
    // 0x0256e8  ldrsw    x8, [x8, #0x708]                        
    // 0x0256ec  b        #0x2aa74                                ; func_0x2aa74
}

@end