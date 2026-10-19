//
//  LZEntry.m — 入口
//
//  还原依据（原 dylib 的 __mod_init_func 里的函数 0x9890）：
//    pthread_attr_set_qos_class_np(QOS_CLASS_USER_INITIATED) → pthread_create
//    线程体 0x9994：最多循环 200 次 × usleep(50ms) 等 UIApplication 就绪，
//    再 usleep(300ms)，然后回主队列安装浮窗。
//
#import "LZLanchu.h"
#import "LZRuntime.h"
#import <pthread.h>
#import <unistd.h>

static CQOverlay *gLZOverlay = nil;

static void *LZEntryThread(void *arg) {
    @autoreleasepool {
        for (int i = 0; i < 200; i++) {
            if ([UIApplication sharedApplication] != nil) break;
            usleep(50 * 1000);
        }
        // 原实现固定再等 300ms，让 rootViewController 完成首帧
        usleep(300 * 1000);

        dispatch_async(dispatch_get_main_queue(), ^{
            if (gLZOverlay) return;
            gLZOverlay = [[CQOverlay alloc] init];
            if (!gLZOverlay) {
                LZLog(@"CQOverlay 构造失败");
                return;
            }
            [gLZOverlay 安装];
            LZLog(@"浮窗已安装（v1.0.35 还原版）");
        });
    }
    return NULL;
}

__attribute__((constructor))
static void LZModuleInit(void) {
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_set_qos_class_np(&attr, QOS_CLASS_USER_INITIATED, 0);

    pthread_t th;
    int rc = pthread_create(&th, &attr, LZEntryThread, NULL);
    if (rc == 0) {
        pthread_detach(th);
    } else {
        LZLog(@"pthread_create 失败: %d", rc);
    }
    pthread_attr_destroy(&attr);
}
