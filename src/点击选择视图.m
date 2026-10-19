//
//  点击选择视图.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 点击选择视图

- (void)构建参数 {   // 0x44a18
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 点击选择视图 构建参数 即可补全。
    // 0x044a18  mov      x2, x30                                 
    // 0x044a1c  bl       #0x61160                                ; func_0x61160
    // 0x044a20  mov      x30, x2                                 
    // 0x044a24  stp      x29, x30, [sp, #0x140]                  
    // 0x044a28  add      x29, sp, #0x140                         
    // 0x044a2c  mov      x20, x0                                 
    // 0x044a30  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x044a34  mov      x29, x29                                
    // 0x044a38  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x044a3c  mov      x19, x0                                 
    // 0x044a40  bl       #0x73120                                ; [x0 类型] x30, x3, x4, x5, x6, x7
    // 0x044a44  mov      x21, x0                                 
    // 0x044a48  bl       #0x601b8                                ; func_0x601b8
    // 0x044a4c  cbz      x21, #0x44a70                           
    // 0x044a50  mov      x0, x20                                 
    // 0x044a54  bl       #0x706c0                                ; [x0 动作] x30, x3, x4, x5, x6, x7
    // 0x044a58  mov      x29, x29                                
    // 0x044a5c  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x044a60  mov      x19, x0                                 
    // 0x044a64  mov      x2, #0                                  
    // 0x044a68  bl       #0x6e640                                ; [x0 set类型:] #0, x3, x4, x5, x6, x7
    // 0x044a6c  bl       #0x601b8                                ; func_0x601b8
    // 0x044a70  sub      x0, x29, #0x70                          
    // 0x044a74  bl       #0x60dfc                                ; func_0x60dfc
}

- (BOOL)含时长字段 {   // 0x44eac
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 点击选择视图 含时长字段 即可补全。
    // 0x044eac  b        #0x613a0                                ; func_0x613a0
}

- (double)面板附加高度 {   // 0x44eb0
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 点击选择视图 面板附加高度 即可补全。
    // 0x044eb0  b        #0x722a0                                ; [x0 时长随机附加高度] x2, x3, x4, x5, x6, x7
}

@end