//
//  试跑会话.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation 试跑会话

- (void)收尾 {   // 0x3d68c
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑会话 收尾 即可补全。
    // 0x03d68c  stp      x26, x25, [sp, #-0x50]!                 
    // 0x03d690  stp      x24, x23, [sp, #0x10]                   
    // 0x03d694  stp      x22, x21, [sp, #0x20]                   
    // 0x03d698  stp      x20, x19, [sp, #0x30]                   
    // 0x03d69c  stp      x29, x30, [sp, #0x40]                   
    // 0x03d6a0  add      x29, sp, #0x40                          
    // 0x03d6a4  mov      x19, x0                                 
    // 0x03d6a8  bl       #0x73680                                ; [x0 观察者] x2, x3, x4, x5, x6, x7
    // 0x03d6ac  mov      x29, x29                                
    // 0x03d6b0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03d6b4  bl       #0x40030                                ; func_0x40030
    // 0x03d6b8  cbz      x20, #0x3d704                           
    // 0x03d6bc  adrp     x8, #0xad000                            
    // 0x03d6c0  ldr      x0, [x8, #0x1a8]                        ; class(?0x0)
    // 0x03d6c4  bl       #0x6a960                                ; [class(?0x0) defaultCenter] x2, x3, x4, x5, x6, x7
    // 0x03d6c8  mov      x29, x29                                
    // 0x03d6cc  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03d6d0  mov      x20, x0                                 
    // 0x03d6d4  mov      x0, x19                                 
    // 0x03d6d8  bl       #0x73680                                ; [x0 观察者] x2, x3, x4, x5, x6, x7
    // 0x03d6dc  mov      x29, x29                                
    // 0x03d6e0  bl       #0x69070                                ; _objc_retainAutoreleasedReturnValue
    // 0x03d6e4  mov      x21, x0                                 
    // 0x03d6e8  bl       #0x3ff1c                                ; func_0x3ff1c
}

- (NSArray *)组开备份 {   // 0x3d91c
    return _组开备份;
}

- (void)set组开备份:(NSArray *)set组开备份 {   // 0x3d924
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑会话 set组开备份: 即可补全。
    // 0x03d924  mov      w3, #0x10                               
    // 0x03d928  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (BOOL)原循环 {   // 0x3d92c
    return _原循环;
}

- (void)set原循环:(BOOL)set原循环 {   // 0x3d934
    _原循环 = set原循环;
}

- (BOOL)原开始 {   // 0x3d93c
    return _原开始;
}

- (void)set原开始:(BOOL)set原开始 {   // 0x3d944
    _原开始 = set原开始;
}

- (BOOL)原停止 {   // 0x3d94c
    return _原停止;
}

- (void)set原停止:(BOOL)set原停止 {   // 0x3d954
    _原停止 = set原停止;
}

- (id)结束时 {   // 0x3d95c
    return _结束时;
}

- (void)set结束时:(id)set结束时 {   // 0x3d964
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑会话 set结束时: 即可补全。
    // 0x03d964  mov      w3, #0x18                               
    // 0x03d968  b        #0x69094                                ; _objc_setProperty_nonatomic_copy
}

- (id)观察者 {   // 0x3d96c
    return _观察者;
}

- (void)set观察者:(id)set观察者 {   // 0x3d974
    // TODO(逆向): 该方法的完整逻辑尚未逐条还原，下面是原二进制反汇编，
    //              对照 analysis/all.asm 里的 试跑会话 set观察者: 即可补全。
    // 0x03d974  mov      x1, x2                                  
    // 0x03d978  add      x0, x0, #0x20                           
    // 0x03d97c  b        #0x690a0                                ; _objc_storeStrong
}

@end