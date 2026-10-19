//
//  LZRuntime.h — 还原工程公共层
//
//  里面是「原二进制调用了、但 Theos 公开 SDK 里没有声明」的私有符号，
//  以及逆向时整理出来的常量/键名。
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark - IOHID 私有函数（全部 dlsym 拿，避免链接期依赖私有 tbd）

typedef struct __IOHIDEvent *IOHIDEventRef;
typedef struct __IOHIDEventSystemClient *IOHIDEventSystemClientRef;

// IOHIDEventType / IOHIDEventField 里用到的几个常量
#define kLZHIDEventTypeDigitizer     11
#define kLZHIDDigitizerTransducerTypeHand   3
#define kLZHIDDigitizerTransducerTypeFinger 2
#define kLZHIDEventFieldDigitizerIsDisplayIntegrated 0xb0019
#define kLZHIDEventFieldDigitizerRange    0xb0014
#define kLZHIDEventFieldDigitizerTouch    0xb0018
#define kLZHIDEventFieldDigitizerPressure 0xb001a

typedef IOHIDEventRef (*LZCreateDigitizerEventFn)(CFAllocatorRef, int64_t, int, uint32_t,
                                                  uint32_t, uint32_t, uint32_t,
                                                  IOHIDEventRef, CFArrayRef, uint32_t, uint32_t);
typedef IOHIDEventRef (*LZCreateFingerEventFn)(CFAllocatorRef, int64_t, int, uint32_t,
                                               uint32_t, uint32_t, IOFixed, IOFixed, IOFixed,
                                               IOFixed, IOFixed, uint32_t, uint32_t, uint32_t,
                                               uint32_t, uint32_t);
typedef IOHIDEventSystemClientRef (*LZClientCreateFn)(CFAllocatorRef, CFDictionaryRef);
typedef void (*LZDispatchEventFn)(IOHIDEventSystemClientRef, IOHIDEventRef);
typedef void (*LZAppendEventFn)(IOHIDEventRef, IOHIDEventRef);
typedef void (*LZSetIntFn)(IOHIDEventRef, uint32_t, int64_t);
typedef void (*LZSetFloatFn)(IOHIDEventRef, uint32_t, double);
typedef void (*LZSetSenderFn)(IOHIDEventRef, uint64_t);

/// 一次性解析全部私有符号；返回 NO 表示这台设备/系统上没有 HID 通道可用
BOOL LZHIDLoad(void);

/// HID 客户端（惰性创建）
IOHIDEventSystemClientRef LZHIDClient(void);

/// 派发一次手指按下/抬起。pt 为屏幕点坐标（不是归一化）
void LZHIDFinger(CGPoint pt, BOOL down, uint32_t fingerIndex);

#pragma mark - 日志

#define LZLog(fmt, ...) NSLog(@"[Lanchu] " fmt, ##__VA_ARGS__)
