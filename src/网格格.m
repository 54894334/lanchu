//
//  网格格.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 网格格

- (id)initWithFrame:(CGRect)initWithFrame {   // 0x31c88
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 网格格 initWithFrame: 即可补全。
    // 0x031c88  sub      sp, sp, #0x30                           
    // 0x031c8c  stp      x20, x19, [sp, #0x10]                   
    // 0x031c90  stp      x29, x30, [sp, #0x20]                   
    // 0x031c94  add      x29, sp, #0x20                          
    // 0x031c98  adrp     x8, #0xad000                            
    // 0x031c9c  ldr      x8, [x8, #0x500]                        ; class(网格格)
    // 0x031ca0  stp      x0, x8, [sp]                            
    // 0x031ca4  adrp     x8, #0xaa000                            
    // 0x031ca8  ldr      x1, [x8, #0x638]                        ; SEL("initWithFrame:")
    // 0x031cac  mov      x0, sp                                  
    // 0x031cb0  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x031cb4  mov      x19, x0                                 
    // 0x031cb8  cbz      x0, #0x31ccc                            
    // 0x031cbc  adrp     x8, #0xad000                            
    // 0x031cc0  ldr      x0, [x8, #0x1c8]                        ; class(CQTechKit)
    // 0x031cc4  mov      x2, x19                                 
    // 0x031cc8  bl       #0x69fc0                                ; [class(CQTechKit) applyCardStyle:] x2, x3, x4, x5, x6, x7
    // 0x031ccc  mov      x0, x19                                 
    // 0x031cd0  ldp      x29, x30, [sp, #0x20]                   
    // 0x031cd4  ldp      x20, x19, [sp, #0x10]                   
    // 0x031cd8  add      sp, sp, #0x30                           
    // 0x031cdc  ret                                              
}

- (void)setHighlighted:(BOOL)setHighlighted {   // 0x31ce0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 网格格 setHighlighted: 即可补全。
    // 0x031ce0  sub      sp, sp, #0x70                           
    // 0x031ce4  stp      x22, x21, [sp, #0x40]                   
    // 0x031ce8  stp      x20, x19, [sp, #0x50]                   
    // 0x031cec  stp      x29, x30, [sp, #0x60]                   
    // 0x031cf0  add      x29, sp, #0x60                          
    // 0x031cf4  mov      x19, x2                                 
    // 0x031cf8  mov      x20, x0                                 
    // 0x031cfc  adrp     x8, #0xad000                            
    // 0x031d00  ldr      x8, [x8, #0x500]                        ; class(网格格)
    // 0x031d04  stp      x0, x8, [sp, #0x30]                     
    // 0x031d08  adrp     x8, #0xac000                            
    // 0x031d0c  ldr      x1, [x8, #0xd88]                        ; SEL("setHighlighted:")
    // 0x031d10  add      x0, sp, #0x30                           
    // 0x031d14  bl       #0x69004                                ; _objc_msgSendSuper2
    // 0x031d18  adrp     x8, #0xad000                            
    // 0x031d1c  ldr      x0, [x8, #0x1c8]                        ; class(CQTechKit)
    // 0x031d20  mov      x2, x20                                 
    // 0x031d24  mov      x3, x19                                 
    // 0x031d28  bl       #0x6a3c0                                ; [class(CQTechKit) cardHighlighted:on:] x0, x2, x4, x5, x6, x7
    // 0x031d2c  adrp     x8, #0xad000                            
    // 0x031d30  ldr      x21, [x8, #0x1b0]                       ; class(?0x0)
    // 0x031d34  bl       #0x20374                                ; _CQThemeDurFast
    // 0x031d38  adrp     x8, #0x8c000                            
    // 0x031d3c  ldr      x8, [x8, #0xd8]                         ; ptr_0x8c0d8
}

- (void)添加图标:(id)添加图标 文字:(id)文字 {   // 0x31df4
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 网格格 添加图标:文字: 即可补全。
    // 0x031df4  stp      d9, d8, [sp, #-0x60]!                   
    // 0x031df8  stp      x26, x25, [sp, #0x10]                   
    // 0x031dfc  stp      x24, x23, [sp, #0x20]                   
    // 0x031e00  stp      x22, x21, [sp, #0x30]                   
    // 0x031e04  stp      x20, x19, [sp, #0x40]                   
    // 0x031e08  stp      x29, x30, [sp, #0x50]                   
    // 0x031e0c  add      x29, sp, #0x50                          
    // 0x031e10  mov      x21, x3                                 
    // 0x031e14  mov      x20, x0                                 
    // 0x031e18  bl       #0x32f38                                ; func_0x32f38
    // 0x031e1c  mov      x19, x0                                 
    // 0x031e20  bl       #0x32eb8                                ; func_0x32eb8
    // 0x031e24  mov      x22, x0                                 
    // 0x031e28  bl       #0x32f30                                ; func_0x32f30
    // 0x031e2c  fmov     d8, d2                                  
    // 0x031e30  mov      x0, x19                                 
    // 0x031e34  bl       #0x6b300                                ; [x0 length] x2, x3, x4, x5, x6, x7
    // 0x031e38  cbz      x0, #0x31fb8                            
    // 0x031e3c  adrp     x25, #0xad000                           
    // 0x031e40  ldr      x0, [x25, #0x1c8]                       ; class(CQTechKit)
    // 0x031e44  mov      x2, x19                                 
    // 0x031e48  bl       #0x6a4c0                                ; [class(CQTechKit) colorForIconName:] x0, x3, x4, x5, x6, x7
    // 0x031e4c  mov      x29, x29                                
    // 0x031e50  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
}

@end