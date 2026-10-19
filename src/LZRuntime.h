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
// 0x000bXXXX 是 IOHIDEventField 的 digitizer 页；IsDisplayIntegrated=0xb0019
// 是逆向时从原二进制里直接读到的，其余按同页顺序推出。
#define kLZHIDEventFieldDigitizerX        0xb0004
#define kLZHIDEventFieldDigitizerY        0xb0005
#define kLZHIDEventFieldDigitizerZ        0xb0006
#define kLZHIDEventFieldDigitizerButtonMask 0xb0007
#define kLZHIDEventFieldDigitizerType     0xb0008
#define kLZHIDEventFieldDigitizerIndex    0xb0009
#define kLZHIDEventFieldDigitizerRange    0xb0014
#define kLZHIDEventFieldDigitizerTouch    0xb0018
#define kLZHIDEventFieldDigitizerIsDisplayIntegrated 0xb0019
#define kLZHIDEventFieldDigitizerPressure 0xb001a

// 坐标是否需要归一化后再塞进事件。0 = 直接给屏幕点，1 = 除以屏幕尺寸。
// 原二进制把这件事放在 CQTouchInjector 的「HID坐标:」里做，这里默认不再重复换算。
#define kLZNormalizeHIDPoint 0

typedef IOHIDEventRef (*LZCreateDigitizerEventFn)(CFAllocatorRef, int64_t, int, uint32_t,
                                                  uint32_t, uint32_t, uint32_t,
                                                  IOFixed, IOFixed, IOFixed, IOFixed, IOFixed,
                                                  Boolean, Boolean, uint32_t);
typedef IOHIDEventRef (*LZCreateFingerEventFn)(CFAllocatorRef, int64_t, uint32_t, uint32_t,
                                               uint32_t, IOFixed, IOFixed, Boolean, Boolean,
                                               uint32_t);
typedef IOHIDEventSystemClientRef (*LZClientCreateFn)(CFAllocatorRef);
typedef void (*LZDispatchEventFn)(IOHIDEventSystemClientRef, IOHIDEventRef);
typedef void (*LZAppendEventFn)(IOHIDEventRef, IOHIDEventRef, uint32_t);
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
