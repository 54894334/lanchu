//
//  LZCore.m — HID 注入底层（按原二进制导入的私有符号重建）
//
//  原始 dylib 用的就是这一组 IOHID 私有函数（bind 表里能查到）：
//      IOHIDEventSystemClientCreate
//      IOHIDEventSystemClientDispatchEvent
//      IOHIDEventCreateDigitizerEvent
//      IOHIDEventCreateDigitizerFingerEvent
//      IOHIDEventAppendEvent
//      IOHIDEventSetIntegerValue / SetFloatValue / SetSenderID
//
//  这里用 dlsym 延迟解析，不依赖私有 tbd，编译期不会缺符号。
//
#import "LZRuntime.h"
#import <dlfcn.h>
#import <os/lock.h>

static LZCreateDigitizerEventFn  pCreateDigitizer;
static LZCreateFingerEventFn     pCreateFinger;
static LZClientCreateFn          pClientCreate;
static LZDispatchEventFn         pDispatch;
static LZAppendEventFn           pAppend;
static LZSetIntFn                pSetInt;
static LZSetFloatFn              pSetFloat;
static LZSetSenderFn             pSetSender;

static IOHIDEventSystemClientRef gClient;
static os_unfair_lock gLock = OS_UNFAIR_LOCK_INIT;


BOOL LZHIDLoad(void) {
    static dispatch_once_t once;
    static BOOL ok = NO;
    dispatch_once(&once, ^{
        void *h = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", RTLD_LAZY);
        if (!h) h = RTLD_DEFAULT;
        pCreateDigitizer = (LZCreateDigitizerEventFn)dlsym(h, "IOHIDEventCreateDigitizerEvent");
        pCreateFinger    = (LZCreateFingerEventFn)dlsym(h, "IOHIDEventCreateDigitizerFingerEvent");
        pClientCreate    = (LZClientCreateFn)dlsym(h, "IOHIDEventSystemClientCreate");
        pDispatch        = (LZDispatchEventFn)dlsym(h, "IOHIDEventSystemClientDispatchEvent");
        pAppend          = (LZAppendEventFn)dlsym(h, "IOHIDEventAppendEvent");
        pSetInt          = (LZSetIntFn)dlsym(h, "IOHIDEventSetIntegerValue");
        pSetFloat        = (LZSetFloatFn)dlsym(h, "IOHIDEventSetFloatValue");
        pSetSender       = (LZSetSenderFn)dlsym(h, "IOHIDEventSetSenderID");
        ok = (pCreateDigitizer && pCreateFinger && pClientCreate && pDispatch &&
              pAppend && pSetInt && pSetFloat);
        LZLog(@"HID 符号解析: %@", ok ? @"OK" : @"缺符号，只能走别的通道");
    });
    return ok;
}


IOHIDEventSystemClientRef LZHIDClient(void) {
    os_unfair_lock_lock(&gLock);
    if (!gClient && pClientCreate) {
        gClient = pClientCreate(kCFAllocatorDefault, NULL);
    }
    os_unfair_lock_unlock(&gLock);
    return gClient;
}


void LZHIDFinger(CGPoint pt, BOOL down, uint32_t fingerIndex) {
    if (!LZHIDLoad()) return;

    IOHIDEventSystemClientRef client = LZHIDClient();
    if (!client) return;

    // 父事件：整只手
    IOHIDEventRef hand = pCreateDigitizer(kCFAllocatorDefault, 0,
                                          kLZHIDDigitizerTransducerTypeHand, 0, 0, 0,
                                          fingerIndex, NULL, NULL, 0, 0);
    if (pSetInt) {
        pSetInt(hand, kLZHIDEventFieldDigitizerIsDisplayIntegrated, 1);
    }

    // 子事件：一根手指。参数顺序沿用 IOHID 私有 ABI
    IOHIDEventRef finger = pCreateFinger(kCFAllocatorDefault, 0,
                                         kLZHIDDigitizerTransducerTypeFinger,
                                         fingerIndex,        // index
                                         fingerIndex + 1,    // identity
                                         1,                  // eventMask: range|touch
                                         (IOFixed)(pt.x * 65536.0),   // x（16.16 定点）
                                         (IOFixed)(pt.y * 65536.0),   // y
                                         0, 1, 0,            // z, pressure, twist
                                         0,                  // range
                                         down ? 1 : 0,       // touch
                                         0, 0, 0, 0);        // quality/density/irregularity/subtype

    pSetFloat(finger, kLZHIDEventFieldDigitizerPressure, down ? 1.0 : 0.0);
    pSetInt(finger, kLZHIDEventFieldDigitizerIsDisplayIntegrated, 1);

    if (hand && finger) pAppend(hand, finger);
    if (pSetSender) pSetSender(hand, 0x8000000817319372ULL);
    pDispatch(client, hand ?: finger);

    if (hand) CFRelease(hand);
    if (finger) CFRelease(finger);
}
