//
//  LZEntry.m — 入口，逐条还原自原二进制的 __mod_init_func（0x9890）
//
//  原始流程（把 0x9890 的汇编翻译过来）：
//    1. NSLog 打印 banner
//    2. @autoreleasepool
//    3. 判断一次运行环境（func_0x12348），按结果选不同的提示文案
//    4. pthread_attr_init + qos_class = QOS_CLASS_USER_INITIATED(0x11) + DETACHED
//    5. pthread_create 起线程 → 0x9994
//
//  0x9994（线程体）：
//    最多等 200 次 × 50ms 等 [UIApplication sharedApplication] 就绪
//    再 usleep(300ms)
//    dispatch_async(主队列, ^{ 真正的安装块 })
//
#import "LZLanchu.h"
#import "LZRuntime.h"
#import <pthread.h>

static CQOverlay *gOverlay = nil;

/// 主线程安装块（对应原二进制 0xd0aac 那个 block 的外层）
static void LZInstallOnMain(void) {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        LZLog(@"开始安装浮窗");
        gOverlay = [[CQOverlay alloc] init];
        [gOverlay 安装];
        LZLog(@"安装完成：球=%@ 浮窗=%@", [gOverlay 球], [gOverlay 浮窗]);
    });
}

static void *LZWaitThread(void *arg) {
    @autoreleasepool {
        int retry = 200;
        while (retry-- > 0) {
            UIApplication *app = [UIApplication sharedApplication];
            if (app) break;
            usleep(50 * 1000);
        }
        usleep(300 * 1000);
        dispatch_async(dispatch_get_main_queue(), ^{
            LZInstallOnMain();
        });
    }
    return NULL;
}

__attribute__((constructor))
static void LZEntry(void) {
    @autoreleasepool {
        NSString *mode = LZHIDLoad() ? @"HID 可用" : @"HID 不可用（仅进程内通道）";
        LZLog(@"懒触 v1.0.35 逆向还原版已装载 · %@", mode);
    }

    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_set_qos_class_np(&attr, QOS_CLASS_USER_INITIATED, 0);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);

    pthread_t th;
    pthread_create(&th, &attr, LZWaitThread, NULL);
    pthread_attr_destroy(&attr);
}
