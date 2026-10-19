//
//  LZCore.m — 还原工程公共层实现
//
//  原 dylib 只导入了 8 个 IOHID 私有符号，全部可以 dlsym 拿到，不需要任何
//  SpringBoard 私有服务、也不需要链接私有 tbd。这里就是那 8 个。
//
#import "LZRuntime.h"
#import <dlfcn.h>
#import <mach/mach_time.h>

static LZCreateDigitizerEventFn pCreateHand;
static LZCreateFingerEventFn    pCreateFinger;
static LZAppendEventFn          pAppend;
static LZSetIntFn               pSetInt;
static LZSetFloatFn             pSetFloat;
static LZSetSenderFn            pSetSender;
static LZClientCreateFn         pClientCreate;
static LZDispatchEventFn        pDispatch;

static IOHIDEventSystemClientRef gClient = NULL;
static BOOL gTried = NO;
static BOOL gReady = NO;

BOOL LZHIDLoad(void) {
    if (gTried) return gReady;
    gTried = YES;

    void *h = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", RTLD_NOW | RTLD_GLOBAL);
    if (!h) {
        LZLog(@"dlopen(IOKit) 失败: %s", dlerror());
        return NO;
    }

    pCreateHand   = (LZCreateDigitizerEventFn)dlsym(h, "IOHIDEventCreateDigitizerEvent");
    pCreateFinger = (LZCreateFingerEventFn)dlsym(h, "IOHIDEventCreateDigitizerFingerEvent");
    pAppend       = (LZAppendEventFn)dlsym(h, "IOHIDEventAppendEvent");
    pSetInt       = (LZSetIntFn)dlsym(h, "IOHIDEventSetIntegerValue");
    pSetFloat     = (LZSetFloatFn)dlsym(h, "IOHIDEventSetFloatValue");
    pSetSender    = (LZSetSenderFn)dlsym(h, "IOHIDEventSetSenderID");
    pClientCreate = (LZClientCreateFn)dlsym(h, "IOHIDEventSystemClientCreate");
    pDispatch     = (LZDispatchEventFn)dlsym(h, "IOHIDEventSystemClientDispatchEvent");

    gReady = (pCreateHand && pCreateFinger && pAppend && pSetInt &&
              pSetFloat && pClientCreate && pDispatch);
    if (!gReady) {
        LZLog(@"IOHID 符号不全: hand=%p finger=%p append=%p int=%p float=%p client=%p dispatch=%p",
              pCreateHand, pCreateFinger, pAppend, pSetInt, pSetFloat, pClientCreate, pDispatch);
    }
    return gReady;
}

IOHIDEventSystemClientRef LZHIDClient(void) {
    if (!LZHIDLoad()) return NULL;
    if (gClient) return gClient;
    gClient = pClientCreate(kCFAllocatorDefault);
    if (!gClient) LZLog(@"IOHIDEventSystemClientCreate 返回空（多半是 entitlements 没签上）");
    return gClient;
}

static inline double LZHIDNow(void) {
    // AbsoluteTime 就是 mach_absolute_time 的 ticks；IOHID 内部会自己换算
    return (double)mach_absolute_time();
}

void LZHIDFinger(CGPoint pt, BOOL down, uint32_t fingerIndex) {
    if (!LZHIDLoad()) return;
    IOHIDEventSystemClientRef client = LZHIDClient();
    if (!client) return;

    int64_t ts = (int64_t)LZHIDNow();

#if kLZNormalizeHIDPoint
    CGRect sc = [UIScreen mainScreen].bounds;
    double x = (sc.size.width  > 0) ? pt.x / sc.size.width  : 0;
    double y = (sc.size.height > 0) ? pt.y / sc.size.height : 0;
#else
    double x = pt.x;
    double y = pt.y;
#endif

    // 父事件：Digitizer / Hand。eventMask=3 表示 range|touch 都置位
    IOHIDEventRef hand = pCreateHand(kCFAllocatorDefault, ts,
                                     kLZHIDDigitizerTransducerTypeHand,
                                     0, 0, 3, 0,
                                     0, 0, 0, 0, 0,
                                     (Boolean)1, (Boolean)1, 0);
    if (!hand) { LZLog(@"建 Hand 事件失败"); return; }

    // 子事件：具体手指。identity 用 index+1，避免和 0 号冲突
    IOHIDEventRef finger = pCreateFinger(kCFAllocatorDefault, ts,
                                         fingerIndex, fingerIndex + 1,
                                         3, 0, 0,
                                         (Boolean)1, (Boolean)(down ? 1 : 0), 0);
    if (!finger) {
        CFRelease(hand);
        LZLog(@"建 Finger 事件失败");
        return;
    }

    pSetFloat(finger, kLZHIDEventFieldDigitizerX, x);
    pSetFloat(finger, kLZHIDEventFieldDigitizerY, y);
    // 这条是关键：不置 IsDisplayIntegrated，事件能建出来但会被系统丢掉
    pSetInt(finger, kLZHIDEventFieldDigitizerIsDisplayIntegrated, 1);
    pSetInt(hand,   kLZHIDEventFieldDigitizerIsDisplayIntegrated, 1);

    if (pAppend) pAppend(hand, finger, 0);

    pDispatch(client, hand);

    CFRelease(finger);
    CFRelease(hand);
}
