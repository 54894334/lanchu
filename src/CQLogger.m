//
//  CQLogger.m — 逆向还原
//
#import "LZLanchu.h"
#import "LZRuntime.h"

@implementation CQLogger

- (void)写入:(id)写入 级别:(unsigned long long)级别 {   // 0xd5a8
}

- (BOOL)详细 {   // 0xd5dc
    return _详细;
}

- (void)set详细:(BOOL)set详细 {   // 0xd5e4
    _详细 = set详细;
}

- (BOOL)回声到系统日志 {   // 0xd5ec
    return _回声到系统日志;
}

- (void)set回声到系统日志:(BOOL)set回声到系统日志 {   // 0xd5f4
    _回声到系统日志 = set回声到系统日志;
}

@end