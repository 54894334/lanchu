//
//  LZLanchu.h — 懒触 v1.0.35 逆向还原工程（接口层）
//  由 tools/m5_gen.py 从 Mach-O 的 ObjC 元数据直接生成，类名/方法名/ivar 均为原始符号，
//  与二进制里的实际布局一一对应。改功能时按类查这里的方法名即可。
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <os/lock.h>

// IOHID 私有类型（Theos 公开 SDK 里没有这些头，前置声明即可）
typedef struct __IOHIDEvent *IOHIDEventRef;
typedef struct __IOHIDEventSystemClient *IOHIDEventSystemClientRef;

@class CQLogger;
@class CQOCR行;
@class CQOverlay;
@class CQRecorder;
@class CQScreenshot;
@class CQStats;
@class CQStore;
@class CQTaskEngine;
@class CQTechKit;
@class CQTemplateMatcher;
@class CQTextOCR;
@class CQTouchInjector;
@class CQ匹配结果;
@class 任务编辑视图;
@class 副标题单元格;
@class 功能视图;
@class 动作模型;
@class 动作组模型;
@class 动作选择视图;
@class 参数行;
@class 双击选择视图;
@class 取字选择视图;
@class 命中路径编辑器;
@class 多点选择视图;
@class 录制视图;
@class 循环结尾选择视图;
@class 循环选择视图;
@class 悬浮球;
@class 方向箭头视图;
@class 时间选择弹窗;
@class 模板裁切视图;
@class 滑动选择视图;
@class 点击反馈视图;
@class 点击选择视图;
@class 穿透窗口;
@class 穿透窗口控制器;
@class 等待选择视图;
@class 统计视图;
@class 网格格;
@class 自定义弹窗;
@class 自由滑动选择视图;
@class 触摸事件数据;
@class 设置视图;
@class 识图选择视图;
@class 识字选择视图;
@class 识色选择视图;
@class 试跑会话;
@class 试跑选择视图;
@class 输入弹窗视图;
@class 输入选择视图;
@class 配置导入视图;
@class 长按选择视图;
@class 问题反馈视图;
@class 颜色取样视图;

@interface CQLogger : NSObject {
    BOOL                                     _详细;   // off 8
    BOOL                                     _回声到系统日志;   // off 9
}
@property (nonatomic) BOOL 详细;
@property (nonatomic) BOOL 回声到系统日志;
- (void)写入:(id)写入 级别:(unsigned long long)级别;
- (BOOL)详细;
- (void)set详细:(BOOL)set详细;
- (BOOL)回声到系统日志;
- (void)set回声到系统日志:(BOOL)set回声到系统日志;
@end

@interface CQOCR行 : NSObject {
    NSString *                               _文本;   // off 8
    CGRect                                   _框;   // off 16
}
@property (copy, nonatomic) NSString *文本;
@property (nonatomic) CGRect 框;
- (NSString *)文本;
- (void)set文本:(NSString *)set文本;
- (CGRect)框;
- (void)set框:(CGRect)set框;
@end

@interface CQOverlay : NSObject {
    悬浮球 *                                    _球;   // off 8
    穿透窗口 *                                   _浮窗;   // off 16
    NSMutableArray *                         _面板栈;   // off 24
}
@property (strong, nonatomic) 穿透窗口 *浮窗;
@property (strong, nonatomic) 悬浮球 *球;
@property (strong, nonatomic) NSMutableArray *面板栈;
@property (nonatomic, readonly) UIWindow *窗口;
@property (nonatomic, readonly) UIView *根视图;
- (id)init;
- (UIWindow *)窗口;
- (UIView *)根视图;
- (void)安装;
- (void)任务运行状态变更:(id)任务运行状态变更;
- (void)任务进度变更:(id)任务进度变更;
- (void)屏幕变化;
- (void)弹出面板:(id)弹出面板;
- (void)关闭面板;
- (void)关闭全部面板;
- (void)提示:(id)提示;
- (悬浮球 *)球;
- (void)set球:(悬浮球 *)set球;
- (穿透窗口 *)浮窗;
- (void)set浮窗:(穿透窗口 *)set浮窗;
- (NSMutableArray *)面板栈;
- (void)set面板栈:(NSMutableArray *)set面板栈;
@end

@interface CQRecorder : NSObject {
    NSMutableArray *                         _events;   // off 8
    NSMutableDictionary *                    _fingerMap;   // off 16
    NSDate *                                 _startDate;   // off 24
    double                                   _录制时间;   // off 32
    long long                                _nextFingerID;   // off 40
    BOOL                                     _hooked;   // off 48
    BOOL                                     _录制中;   // off 49
    id                                       _状态回调;   // off 56
}
@property (nonatomic, readonly) BOOL 录制中;
@property (nonatomic, readonly) double 录制时长;
@property (nonatomic, readonly) NSArray *事件列表;
@property (copy, nonatomic) id 状态回调;
- (id)init;
- (void)安装;
- (void)开始;
- (id)停止;
- (NSArray *)事件列表;
- (double)录制时长;
- (void)处理事件:(id)处理事件;
- (BOOL)录制中;
- (id)状态回调;
- (void)set状态回调:(id)set状态回调;
@end

@interface CQScreenshot : NSObject {
}
@end

@interface CQStats : NSObject {
    NSMutableDictionary *                    _存;   // off 8
    NSObject<OS_dispatch_queue> *            _q;   // off 16
    BOOL                                     _开启;   // off 24
}
@property (nonatomic) BOOL 开启;
- (id)init;
- (void)set开启:(BOOL)set开启;
- (id)路径;
- (id)读盘;
- (void)异步写盘;
- (void)检查跨天;
- (id)今天字符串;
- (void)记录组:(id)记录组 名称:(id)名称 成功:(BOOL)成功 耗时:(double)耗时;
- (void)累加表:(id)累加表 组ID:(id)组ID 名称:(id)名称 成功:(BOOL)成功 耗时:(double)耗时 时间:(double)时间;
- (id)数组From:(id)数组From;
- (id)组统计;
- (id)汇总;
- (void)清零;
- (BOOL)开启;
@end

@interface CQStore : NSObject {
    BOOL                                     _循环执行;   // off 8
    BOOL                                     _自动旋转;   // off 9
    BOOL                                     _自动缩放;   // off 10
    BOOL                                     _悬浮球自动隐藏;   // off 11
    BOOL                                     _悬浮球贴边隐藏;   // off 12
    BOOL                                     _动作提示;   // off 13
    BOOL                                     _反检测;   // off 14
    BOOL                                     _详细日志;   // off 15
    BOOL                                     _定时开始开;   // off 16
    BOOL                                     _定时停止开;   // off 17
    NSArray *                                _动作列表;   // off 24
    NSArray *                                _组列表;   // off 32
    long long                                _列表版本;   // off 40
    double                                   _悬浮球透明度;   // off 48
    long long                                _悬浮球尺寸;   // off 56
    long long                                _悬浮球形态;   // off 64
    long long                                _注入通道;   // off 72
    long long                                _并发模式;   // off 80
    long long                                _坐标量程;   // off 88
    long long                                _定时开始分;   // off 96
    long long                                _定时停止分;   // off 104
}
@property (copy, nonatomic) NSArray *动作列表;
@property (copy, nonatomic) NSArray *组列表;
@property (nonatomic) long long 列表版本;
@property (nonatomic) BOOL 循环执行;
@property (nonatomic) BOOL 自动旋转;
@property (nonatomic) BOOL 自动缩放;
@property (nonatomic) BOOL 悬浮球自动隐藏;
@property (nonatomic) double 悬浮球透明度;
@property (nonatomic) BOOL 悬浮球贴边隐藏;
@property (nonatomic) BOOL 动作提示;
@property (nonatomic) long long 悬浮球尺寸;
@property (nonatomic) long long 悬浮球形态;
@property (nonatomic) BOOL 反检测;
@property (nonatomic) long long 注入通道;
@property (nonatomic) long long 并发模式;
@property (nonatomic) long long 坐标量程;
@property (nonatomic) BOOL 详细日志;
@property (nonatomic) BOOL 定时开始开;
@property (nonatomic) BOOL 定时停止开;
@property (nonatomic) long long 定时开始分;
@property (nonatomic) long long 定时停止分;
- (id)init;
- (void)set动作列表:(NSArray *)set动作列表;
- (void)set组列表:(NSArray *)set组列表;
- (id)数据目录;
- (id)归档路径;
- (void)保存;
- (void)载入;
- (void)关闭全部动作;
- (id)导出文件名:(id)导出文件名;
- (BOOL)导入路径:(id)导入路径;
- (id)组ById:(id)组ById;
- (id)组内动作:(id)组内动作;
- (BOOL)整理归属;
- (BOOL)需要调度;
- (BOOL)在时间窗:(long long)在时间窗;
- (id)录制组;
- (void)添加录制动作:(id)添加录制动作;
- (void)设置组开关:(id)设置组开关 开:(BOOL)开;
- (void)设置动作开关:(id)设置动作开关 开:(BOOL)开;
- (unsigned long long)索引Of标识:(id)索引Of标识;
- (id)识图跳转显示名:(id)识图跳转显示名;
- (NSArray *)动作列表;
- (NSArray *)组列表;
- (long long)列表版本;
- (void)set列表版本:(long long)set列表版本;
- (BOOL)循环执行;
- (void)set循环执行:(BOOL)set循环执行;
- (BOOL)自动旋转;
- (void)set自动旋转:(BOOL)set自动旋转;
- (BOOL)自动缩放;
- (void)set自动缩放:(BOOL)set自动缩放;
- (BOOL)悬浮球自动隐藏;
- (void)set悬浮球自动隐藏:(BOOL)set悬浮球自动隐藏;
- (double)悬浮球透明度;
- (void)set悬浮球透明度:(double)set悬浮球透明度;
- (BOOL)悬浮球贴边隐藏;
- (void)set悬浮球贴边隐藏:(BOOL)set悬浮球贴边隐藏;
- (BOOL)动作提示;
- (void)set动作提示:(BOOL)set动作提示;
- (long long)悬浮球尺寸;
- (void)set悬浮球尺寸:(long long)set悬浮球尺寸;
- (long long)悬浮球形态;
- (void)set悬浮球形态:(long long)set悬浮球形态;
- (BOOL)反检测;
- (void)set反检测:(BOOL)set反检测;
- (long long)注入通道;
- (void)set注入通道:(long long)set注入通道;
- (long long)并发模式;
- (void)set并发模式:(long long)set并发模式;
- (long long)坐标量程;
- (void)set坐标量程:(long long)set坐标量程;
- (BOOL)详细日志;
- (void)set详细日志:(BOOL)set详细日志;
- (BOOL)定时开始开;
- (void)set定时开始开:(BOOL)set定时开始开;
- (BOOL)定时停止开;
- (void)set定时停止开:(BOOL)set定时停止开;
- (long long)定时开始分;
- (void)set定时开始分:(long long)set定时开始分;
- (long long)定时停止分;
- (void)set定时停止分:(long long)set定时停止分;
@end

@interface CQTaskEngine : NSObject {
    BOOL                                     _运行中;   // off 8
    BOOL                                     _需要停止;   // off 9
    BOOL                                     _等待调度中;   // off 10
    BOOL                                     _动作成功;   // off 11
    NSString *                               _动作备注;   // off 16
    NSMutableDictionary *                    _输入表;   // off 24
    NSSet *                                  _试跑白名单;   // off 32
    NSMutableDictionary *                    _变量表;   // off 40
    NSString *                               _取字暂存;   // off 48
    id                                       _状态回调;   // off 56
}
@property (nonatomic, readonly) BOOL 运行中;
@property (copy, nonatomic) NSString *取字暂存;
@property (copy, nonatomic) id 状态回调;
@property (copy, nonatomic) NSSet *试跑白名单;
- (BOOL)运行中;
- (void)set试跑白名单:(NSSet *)set试跑白名单;
- (NSSet *)试跑白名单;
- (void)启动;
- (void)停止;
- (void)主循环;
- (id)执行单个:(id)执行单个;
- (long long)跳转下标:(id)跳转下标 列表:(id)列表;
- (void)休眠:(double)休眠;
- (BOOL)偏移随机:(id)偏移随机;
- (id)输入取一条:(id)输入取一条 动作:(id)动作;
- (void)跑输入:(id)跑输入;
- (id)跑等待:(id)跑等待;
- (void)跑循环:(id)跑循环;
- (id)跑循环结尾:(id)跑循环结尾;
- (id)动作By标识:(id)动作By标识;
- (double)取值时长:(double)取值时长 动作:(id)动作;
- (id)多点列表:(id)多点列表;
- (void)跑点击:(id)跑点击;
- (void)跑并发点击:(id)跑并发点击 点列表:(id)点列表;
- (void)注入点击:(id)注入点击;
- (void)跑多点:(id)跑多点;
- (void)跑双击:(id)跑双击;
- (void)跑自由滑动:(id)跑自由滑动;
- (void)跑长按:(id)跑长按;
- (void)跑滑动:(id)跑滑动;
- (id)跑识图:(id)跑识图;
- (void)跑录制:(id)跑录制;
- (id)跑识字:(id)跑识字;
- (BOOL)识字尝试:(id)识字尝试 命中框:(CGRect *)命中框;
- (id)识字成功分支:(id)识字成功分支 命中框:(CGRect)命中框;
- (id)识字失败分支:(id)识字失败分支;
- (id)跑识色:(id)跑识色;
- (id)识色成功分支:(id)识色成功分支 命中点:(CGPoint)命中点;
- (id)识色失败分支:(id)识色失败分支;
- (id)跑取字:(id)跑取字;
- (id)取字成功分支:(id)取字成功分支;
- (id)取字失败分支:(id)取字失败分支;
- (NSString *)取字暂存;
- (void)set取字暂存:(NSString *)set取字暂存;
- (id)状态回调;
- (void)set状态回调:(id)set状态回调;
@end

@interface CQTechKit : NSObject {
}
@end

@interface CQTemplateMatcher : NSObject {
}
@end

@interface CQTextOCR : NSObject {
}
@end

@interface CQTouchInjector : NSObject {
    BOOL                                     _启用;   // off 8
    BOOL                                     _显示反馈;   // off 9
    BOOL                                     _上下文已就绪;   // off 10
    BOOL                                     _并发已取消;   // off 11
    BOOL                                     _保活中;   // off 12
    BOOL                                     _已请求建客户端;   // off 13
    BOOL                                     _已装事件观察者;   // off 14
    unsigned int                             _上下文Id;   // off 16
    os_unfair_lock                           _派发锁;   // off 20
    os_unfair_lock                           _客户端锁;   // off 24
    os_unfair_lock                           _计数锁;   // off 28
    double                                   _抖动下限;   // off 32
    double                                   _抖动上限;   // off 40
    unsigned long long                       _通道;   // off 48
    unsigned long long                       _并发模式;   // off 56
    unsigned long long                       _坐标量程;   // off 64
    double                                   _实测系数X;   // off 72
    double                                   _实测系数Y;   // off 80
    long long                                _活跃并发数;   // off 88
    unsigned long long                       _累计派发次数;   // off 96
    void *                                   _client;   // off 104
    double                                   _上下文刷新时刻;   // off 112
    unsigned long long                       _后台任务;   // off 120
    id                                       _后台观察者;   // off 128
    id                                       _前台观察者;   // off 136
}
@property (nonatomic) void *client;
@property (nonatomic) unsigned int 上下文Id;
@property (nonatomic) BOOL 上下文已就绪;
@property (nonatomic) double 上下文刷新时刻;
@property (nonatomic) unsigned long long 累计派发次数;
@property (nonatomic) long long 活跃并发数;
@property (nonatomic) BOOL 并发已取消;
@property (nonatomic) os_unfair_lock 派发锁;
@property (nonatomic) os_unfair_lock 客户端锁;
@property (nonatomic) os_unfair_lock 计数锁;
@property (nonatomic) double 实测系数X;
@property (nonatomic) double 实测系数Y;
@property (nonatomic) BOOL 保活中;
@property (nonatomic) unsigned long long 后台任务;
@property (nonatomic) id 后台观察者;
@property (nonatomic) id 前台观察者;
@property (nonatomic) BOOL 已请求建客户端;
@property (nonatomic) BOOL 已装事件观察者;
@property (nonatomic) BOOL 启用;
@property (nonatomic) BOOL 显示反馈;
@property (nonatomic) double 抖动下限;
@property (nonatomic) double 抖动上限;
@property (nonatomic) unsigned long long 通道;
@property (nonatomic) unsigned long long 并发模式;
@property (nonatomic) unsigned long long 坐标量程;
@property (nonatomic, readonly) NSString *量程说明;
- (id)init;
- (void *)取客户端;
- (void)刷新上下文;
- (unsigned int)取窗口上下文;
- (unsigned int)当前上下文Id;
- (void)预热;
- (void)安排上下文补抓:(long long)安排上下文补抓;
- (void)确保上下文就绪;
- (void)set通道:(unsigned long long)set通道;
- (void)安装事件观察者;
- (void)开启后台保活;
- (void)回前台刷新上下文;
- (void)结束后台保活;
- (void)续后台断言;
- (void)结束后台断言;
- (void)安装事件探针;
- (void)cq原发事件:(id)cq原发事件;
- (CGPoint)抖动后的点:(CGPoint)抖动后的点 开启:(BOOL)开启;
- (NSString *)量程说明;
- (CGPoint)HID坐标:(CGPoint)HID坐标;
- (void)派发:(id)派发 按下:(BOOL)按下;
- (void)派发:(id)派发 按下:(BOOL)按下 起始索引:(unsigned int)起始索引;
- (void)派发HID坐标:(id)派发HID坐标 按下:(BOOL)按下 起始索引:(unsigned int)起始索引 反馈点:(id)反馈点 说明:(id)说明;
- (void)投递:(void *)投递;
- (void)点击:(CGPoint)点击;
- (void)点击:(CGPoint)点击 次数:(long long)次数 偏移随机:(BOOL)偏移随机 间隔:(double)间隔;
- (void)双击:(CGPoint)双击 次数:(long long)次数 偏移随机:(BOOL)偏移随机 间隔:(double)间隔;
- (void)长按:(CGPoint)长按 时长:(double)时长;
- (void)滑动:(CGPoint)滑动 to:(CGPoint)to 时长:(double)时长 帧数:(long long)帧数 随机点数:(BOOL)随机点数;
- (void)多点点击:(id)多点点击 偏移随机:(BOOL)偏移随机;
- (void)自由滑动:(CGPoint)自由滑动 to:(CGPoint)to 长按:(double)长按 时长:(double)时长 帧数:(long long)帧数 随机点数:(BOOL)随机点数;
- (void)连续滑动:(id)连续滑动 长按:(double)长按 段时长:(double)段时长 段帧数:(long long)段帧数 间隔:(double)间隔 随机点数:(BOOL)随机点数;
- (void)回放:(id)回放 循环:(long long)循环;
- (void)并发点击:(id)并发点击 次数:(long long)次数 间隔:(double)间隔 按下时长:(double)按下时长 偏移随机:(BOOL)偏移随机 同步起手:(BOOL)同步起手 完成:(id)完成;
- (void)取消并发;
- (BOOL)启用;
- (void)set启用:(BOOL)set启用;
- (BOOL)显示反馈;
- (void)set显示反馈:(BOOL)set显示反馈;
- (double)抖动下限;
- (void)set抖动下限:(double)set抖动下限;
- (double)抖动上限;
- (void)set抖动上限:(double)set抖动上限;
- (unsigned long long)通道;
- (unsigned long long)并发模式;
- (void)set并发模式:(unsigned long long)set并发模式;
- (unsigned long long)坐标量程;
- (void)set坐标量程:(unsigned long long)set坐标量程;
- (double)实测系数X;
- (void)set实测系数X:(double)set实测系数X;
- (double)实测系数Y;
- (void)set实测系数Y:(double)set实测系数Y;
- (long long)活跃并发数;
- (void)set活跃并发数:(long long)set活跃并发数;
- (unsigned long long)累计派发次数;
- (void)set累计派发次数:(unsigned long long)set累计派发次数;
- (void *)client;
- (void)setClient:(void *)setClient;
- (unsigned int)上下文Id;
- (void)set上下文Id:(unsigned int)set上下文Id;
- (BOOL)上下文已就绪;
- (void)set上下文已就绪:(BOOL)set上下文已就绪;
- (double)上下文刷新时刻;
- (void)set上下文刷新时刻:(double)set上下文刷新时刻;
- (BOOL)并发已取消;
- (void)set并发已取消:(BOOL)set并发已取消;
- (os_unfair_lock)派发锁;
- (void)set派发锁:(os_unfair_lock)set派发锁;
- (os_unfair_lock)客户端锁;
- (void)set客户端锁:(os_unfair_lock)set客户端锁;
- (os_unfair_lock)计数锁;
- (void)set计数锁:(os_unfair_lock)set计数锁;
- (BOOL)保活中;
- (void)set保活中:(BOOL)set保活中;
- (unsigned long long)后台任务;
- (void)set后台任务:(unsigned long long)set后台任务;
- (id)后台观察者;
- (void)set后台观察者:(id)set后台观察者;
- (id)前台观察者;
- (void)set前台观察者:(id)set前台观察者;
- (BOOL)已请求建客户端;
- (void)set已请求建客户端:(BOOL)set已请求建客户端;
- (BOOL)已装事件观察者;
- (void)set已装事件观察者:(BOOL)set已装事件观察者;
@end

@interface CQ匹配结果 : NSObject {
    BOOL                                     _命中;   // off 8
    double                                   _相似度;   // off 16
    CGPoint                                  _中心;   // off 24
    CGRect                                   _矩形;   // off 40
}
@property (nonatomic) double 相似度;
@property (nonatomic) CGPoint 中心;
@property (nonatomic) CGRect 矩形;
@property (nonatomic) BOOL 命中;
- (double)相似度;
- (void)set相似度:(double)set相似度;
- (CGPoint)中心;
- (void)set中心:(CGPoint)set中心;
- (CGRect)矩形;
- (void)set矩形:(CGRect)set矩形;
- (BOOL)命中;
- (void)set命中:(BOOL)set命中;
@end

@interface 任务编辑视图 : NSObject {
    UITableView *                            _表;   // off 8
    UILabel *                                _标题;   // off 16
    UIButton *                               _左按钮;   // off 24
    UIButton *                               _右按钮;   // off 32
    UIButton *                               _新增动作按钮;   // off 40
    UIButton *                               _试跑按钮;   // off 48
    long long                                _层级;   // off 56
    动作组模型 *                                  _当前组;   // off 64
}
@property (strong, nonatomic) UITableView *表;
@property (strong, nonatomic) UILabel *标题;
@property (strong, nonatomic) UIButton *左按钮;
@property (strong, nonatomic) UIButton *右按钮;
@property (strong, nonatomic) UIButton *新增动作按钮;
@property (strong, nonatomic) UIButton *试跑按钮;
@property (nonatomic) long long 层级;
@property (strong, nonatomic) 动作组模型 *当前组;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (void)构建;
- (void)显示;
- (void)关闭;
- (void)layoutSubviews;
- (void)切换层级:(long long)切换层级;
- (void)左按钮点按;
- (void)点试跑;
- (void)点标题重命名;
- (id)显示组列表;
- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection;
- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath;
- (id)成功行为名:(long long)成功行为名;
- (id)组行控件:(id)组行控件;
- (id)动作行控件:(id)动作行控件 录制组:(BOOL)录制组;
- (id)排序按钮:(id)排序按钮 上:(BOOL)上;
- (void)组开关:(id)组开关;
- (void)录制动作开关:(id)录制动作开关;
- (void)排序:(id)排序;
- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath;
- (BOOL)tableView:(id)tableView canEditRowAtIndexPath:(id)canEditRowAtIndexPath;
- (void)tableView:(id)tableView commitEditingStyle:(long long)commitEditingStyle forRowAtIndexPath:(id)forRowAtIndexPath;
- (void)删除组:(id)删除组;
- (void)新增动作;
- (UITableView *)表;
- (void)set表:(UITableView *)set表;
- (UILabel *)标题;
- (void)set标题:(UILabel *)set标题;
- (UIButton *)左按钮;
- (void)set左按钮:(UIButton *)set左按钮;
- (UIButton *)右按钮;
- (void)set右按钮:(UIButton *)set右按钮;
- (UIButton *)新增动作按钮;
- (void)set新增动作按钮:(UIButton *)set新增动作按钮;
- (UIButton *)试跑按钮;
- (void)set试跑按钮:(UIButton *)set试跑按钮;
- (long long)层级;
- (void)set层级:(long long)set层级;
- (动作组模型 *)当前组;
- (void)set当前组:(动作组模型 *)set当前组;
@end

@interface 副标题单元格 : NSObject {
    UIView *                                 _卡片底;   // off 8
}
@property (strong, nonatomic) UIView *卡片底;
- (id)initWithStyle:(long long)initWithStyle reuseIdentifier:(id)reuseIdentifier;
- (void)layoutSubviews;
- (UIView *)卡片底;
- (void)set卡片底:(UIView *)set卡片底;
@end

@interface 功能视图 : NSObject {
    NSMutableArray *                         _按钮列表;   // off 8
}
@property (strong, nonatomic) NSMutableArray *按钮列表;
- (void)构建;
- (void)点按:(id)点按;
- (void)使用方法;
- (void)运行统计;
- (void)新增动作;
- (void)动作列表;
- (void)录制;
- (void)设置;
- (NSMutableArray *)按钮列表;
- (void)set按钮列表:(NSMutableArray *)set按钮列表;
@end

@interface 动作模型 : NSObject {
    BOOL                                     _是否开启;   // off 8
    BOOL                                     _识图判断;   // off 9
    BOOL                                     _自由长按;   // off 10
    BOOL                                     _循环每轮清零;   // off 11
    BOOL                                     _输入清空;   // off 12
    BOOL                                     _输入回车;   // off 13
    BOOL                                     _等待模式;   // off 14
    BOOL                                     _击杀特效;   // off 15
    BOOL                                     _自动旋转;   // off 16
    BOOL                                     _自动缩放;   // off 17
    NSString *                               _标识;   // off 24
    NSString *                               _gid;   // off 32
    NSString *                               _名称;   // off 40
    long long                                _类型;   // off 48
    long long                                _次数;   // off 56
    double                                   _开始延迟;   // off 64
    double                                   _结束延迟;   // off 72
    double                                   _连点间隔;   // off 80
    long long                                _自动复杂度;   // off 88
    NSArray *                                _位置偏移;   // off 96
    long long                                _偏移随机数;   // off 104
    long long                                _时长随机开关;   // off 112
    double                                   _时长随机幅度;   // off 120
    long long                                _等待随机;   // off 128
    double                                   _等待秒;   // off 136
    double                                   _等待下限;   // off 144
    double                                   _等待上限;   // off 152
    long long                                _等待结束行为;   // off 160
    NSString *                               _等待跳转;   // off 168
    long long                                _是否随机;   // off 176
    long long                                _位置偏移随机数开关;   // off 184
    double                                   _长按时长;   // off 192
    double                                   _滑动时长;   // off 200
    long long                                _方向;   // off 208
    double                                   _距离;   // off 216
    long long                                _滑动帧数;   // off 224
    UIImage *                                _图片;   // off 232
    double                                   _相似度;   // off 240
    double                                   _识图超时;   // off 248
    double                                   _识图延迟;   // off 256
    long long                                _识图点击;   // off 264
    NSString *                               _识图跳转;   // off 272
    long long                                _识图命中行为;   // off 280
    double                                   _识图长按时长;   // off 288
    double                                   _识图滑动时长;   // off 296
    long long                                _识图滑动帧数;   // off 304
    double                                   _识图滑动时隔;   // off 312
    NSArray *                                _识图路径点;   // off 320
    long long                                _识图判断次数;   // off 328
    long long                                _识图判断失败行为;   // off 336
    NSString *                               _识图判断跳转;   // off 344
    long long                                _识图失败行为;   // off 352
    NSString *                               _识图失败跳转;   // off 360
    NSArray *                                _多点坐标组;   // off 368
    long long                                _自由模式;   // off 376
    NSArray *                                _自由路径点;   // off 384
    double                                   _自由滑动时长;   // off 392
    long long                                _自由滑动帧数;   // off 400
    NSArray *                                _自由坐标组;   // off 408
    long long                                _循环上限;   // off 416
    NSString *                               _循环变量名;   // off 424
    NSString *                               _循环配对标识;   // off 432
    double                                   _识字等待;   // off 440
    long long                                _识字类型;   // off 448
    NSString *                               _识字文本;   // off 456
    long long                                _识字条件;   // off 464
    double                                   _识字数值;   // off 472
    long long                                _识字成功行为;   // off 480
    double                                   _识字长按时长;   // off 488
    double                                   _识字滑动时长;   // off 496
    long long                                _识字滑动帧数;   // off 504
    double                                   _识字滑动时隔;   // off 512
    NSArray *                                _识字路径点;   // off 520
    long long                                _识字失败行为;   // off 528
    NSString *                               _识字跳转;   // off 536
    NSString *                               _识字失败跳转;   // off 544
    double                                   _取字等待;   // off 552
    long long                                _取字存储;   // off 560
    long long                                _取字成功行为;   // off 568
    long long                                _取字失败行为;   // off 576
    NSString *                               _取字跳转;   // off 584
    NSString *                               _取字失败跳转;   // off 592
    long long                                _取字模式;   // off 600
    long long                                _取字高级类型;   // off 608
    NSString *                               _取字目标文本;   // off 616
    NSString *                               _取字替换文本;   // off 624
    NSString *                               _取字正则;   // off 632
    long long                                _取字第几条;   // off 640
    double                                   _输入等待;   // off 648
    NSString *                               _输入文本;   // off 656
    long long                                _输入模式;   // off 664
    long long                                _输入来源;   // off 672
    long long                                _输入暂存取条;   // off 680
    double                                   _识色等待;   // off 688
    long long                                _识色次数;   // off 696
    long long                                _识色容差;   // off 704
    long long                                _识色模式;   // off 712
    NSArray *                                _识色点组;   // off 720
    long long                                _识色成功行为;   // off 728
    double                                   _识色长按时长;   // off 736
    double                                   _识色滑动时长;   // off 744
    long long                                _识色滑动帧数;   // off 752
    double                                   _识色滑动时隔;   // off 760
    NSArray *                                _识色路径点;   // off 768
    long long                                _识色失败行为;   // off 776
    NSString *                               _识色跳转;   // off 784
    NSString *                               _识色失败跳转;   // off 792
    double                                   _等待总超时;   // off 800
    NSData *                                 _录制数据;   // off 808
    double                                   _录制时间;   // off 816
    double                                   _循环次数;   // off 824
    CGPoint                                  _坐标;   // off 832
    CGPoint                                  _起始坐标;   // off 848
    CGPoint                                  _结束坐标;   // off 864
    CGRect                                   _识别区域;   // off 880
}
@property (copy, nonatomic) NSString *标识;
@property (copy, nonatomic) NSString *gid;
@property (copy, nonatomic) NSString *名称;
@property (nonatomic) long long 类型;
@property (nonatomic) BOOL 是否开启;
@property (nonatomic) long long 次数;
@property (nonatomic) double 开始延迟;
@property (nonatomic) double 结束延迟;
@property (nonatomic) double 连点间隔;
@property (nonatomic) long long 自动复杂度;
@property (nonatomic) CGPoint 坐标;
@property (nonatomic) CGPoint 起始坐标;
@property (nonatomic) CGPoint 结束坐标;
@property (copy, nonatomic) NSArray *位置偏移;
@property (nonatomic) long long 偏移随机数;
@property (nonatomic) long long 时长随机开关;
@property (nonatomic) double 时长随机幅度;
@property (nonatomic) long long 等待随机;
@property (nonatomic) double 等待秒;
@property (nonatomic) double 等待下限;
@property (nonatomic) double 等待上限;
@property (nonatomic) long long 等待结束行为;
@property (copy, nonatomic) NSString *等待跳转;
@property (nonatomic) long long 是否随机;
@property (nonatomic) long long 位置偏移随机数开关;
@property (nonatomic) double 长按时长;
@property (nonatomic) double 滑动时长;
@property (nonatomic) long long 方向;
@property (nonatomic) double 距离;
@property (nonatomic) long long 滑动帧数;
@property (strong, nonatomic) UIImage *图片;
@property (nonatomic) double 相似度;
@property (nonatomic) CGRect 识别区域;
@property (nonatomic) double 识图超时;
@property (nonatomic) double 识图延迟;
@property (nonatomic) long long 识图点击;
@property (copy, nonatomic) NSString *识图跳转;
@property (nonatomic) long long 识图命中行为;
@property (nonatomic) double 识图长按时长;
@property (nonatomic) double 识图滑动时长;
@property (nonatomic) long long 识图滑动帧数;
@property (nonatomic) double 识图滑动时隔;
@property (copy, nonatomic) NSArray *识图路径点;
@property (nonatomic) BOOL 识图判断;
@property (nonatomic) long long 识图判断次数;
@property (nonatomic) long long 识图判断失败行为;
@property (copy, nonatomic) NSString *识图判断跳转;
@property (nonatomic) long long 识图失败行为;
@property (copy, nonatomic) NSString *识图失败跳转;
@property (copy, nonatomic) NSArray *多点坐标组;
@property (nonatomic) long long 自由模式;
@property (nonatomic) BOOL 自由长按;
@property (copy, nonatomic) NSArray *自由路径点;
@property (nonatomic) double 自由滑动时长;
@property (nonatomic) long long 自由滑动帧数;
@property (copy, nonatomic) NSArray *自由坐标组;
@property (nonatomic) long long 循环上限;
@property (copy, nonatomic) NSString *循环变量名;
@property (nonatomic) BOOL 循环每轮清零;
@property (copy, nonatomic) NSString *循环配对标识;
@property (nonatomic) double 识字等待;
@property (nonatomic) long long 识字类型;
@property (copy, nonatomic) NSString *识字文本;
@property (nonatomic) long long 识字条件;
@property (nonatomic) double 识字数值;
@property (nonatomic) long long 识字成功行为;
@property (nonatomic) double 识字长按时长;
@property (nonatomic) double 识字滑动时长;
@property (nonatomic) long long 识字滑动帧数;
@property (nonatomic) double 识字滑动时隔;
@property (copy, nonatomic) NSArray *识字路径点;
@property (nonatomic) long long 识字失败行为;
@property (copy, nonatomic) NSString *识字跳转;
@property (copy, nonatomic) NSString *识字失败跳转;
@property (nonatomic) double 取字等待;
@property (nonatomic) long long 取字存储;
@property (nonatomic) long long 取字成功行为;
@property (nonatomic) long long 取字失败行为;
@property (copy, nonatomic) NSString *取字跳转;
@property (copy, nonatomic) NSString *取字失败跳转;
@property (nonatomic) long long 取字模式;
@property (nonatomic) long long 取字高级类型;
@property (copy, nonatomic) NSString *取字目标文本;
@property (copy, nonatomic) NSString *取字替换文本;
@property (copy, nonatomic) NSString *取字正则;
@property (nonatomic) long long 取字第几条;
@property (nonatomic) double 输入等待;
@property (copy, nonatomic) NSString *输入文本;
@property (nonatomic) long long 输入模式;
@property (nonatomic) long long 输入来源;
@property (nonatomic) long long 输入暂存取条;
@property (nonatomic) BOOL 输入清空;
@property (nonatomic) BOOL 输入回车;
@property (nonatomic) double 识色等待;
@property (nonatomic) long long 识色次数;
@property (nonatomic) long long 识色容差;
@property (nonatomic) long long 识色模式;
@property (copy, nonatomic) NSArray *识色点组;
@property (nonatomic) long long 识色成功行为;
@property (nonatomic) double 识色长按时长;
@property (nonatomic) double 识色滑动时长;
@property (nonatomic) long long 识色滑动帧数;
@property (nonatomic) double 识色滑动时隔;
@property (copy, nonatomic) NSArray *识色路径点;
@property (nonatomic) long long 识色失败行为;
@property (copy, nonatomic) NSString *识色跳转;
@property (copy, nonatomic) NSString *识色失败跳转;
@property (nonatomic) BOOL 等待模式;
@property (nonatomic) double 等待总超时;
@property (strong, nonatomic) NSData *录制数据;
@property (nonatomic) double 录制时间;
@property (nonatomic) double 循环次数;
@property (nonatomic) BOOL 击杀特效;
@property (nonatomic) BOOL 自动旋转;
@property (nonatomic) BOOL 自动缩放;
- (id)init;
- (void)确保标识;
- (id)CQ全部跳转目标标识;
- (id)initWithCoder:(id)initWithCoder;
- (void)encodeWithCoder:(id)encodeWithCoder;
- (id)copyWithZone:(void *)copyWithZone;
- (id)description;
- (NSString *)标识;
- (void)set标识:(NSString *)set标识;
- (NSString *)gid;
- (void)setGid:(NSString *)setGid;
- (NSString *)名称;
- (void)set名称:(NSString *)set名称;
- (long long)类型;
- (void)set类型:(long long)set类型;
- (BOOL)是否开启;
- (void)set是否开启:(BOOL)set是否开启;
- (long long)次数;
- (void)set次数:(long long)set次数;
- (double)开始延迟;
- (void)set开始延迟:(double)set开始延迟;
- (double)结束延迟;
- (void)set结束延迟:(double)set结束延迟;
- (double)连点间隔;
- (void)set连点间隔:(double)set连点间隔;
- (long long)自动复杂度;
- (void)set自动复杂度:(long long)set自动复杂度;
- (CGPoint)坐标;
- (void)set坐标:(CGPoint)set坐标;
- (CGPoint)起始坐标;
- (void)set起始坐标:(CGPoint)set起始坐标;
- (CGPoint)结束坐标;
- (void)set结束坐标:(CGPoint)set结束坐标;
- (NSArray *)位置偏移;
- (void)set位置偏移:(NSArray *)set位置偏移;
- (long long)偏移随机数;
- (void)set偏移随机数:(long long)set偏移随机数;
- (long long)时长随机开关;
- (void)set时长随机开关:(long long)set时长随机开关;
- (double)时长随机幅度;
- (void)set时长随机幅度:(double)set时长随机幅度;
- (long long)等待随机;
- (void)set等待随机:(long long)set等待随机;
- (double)等待秒;
- (void)set等待秒:(double)set等待秒;
- (double)等待下限;
- (void)set等待下限:(double)set等待下限;
- (double)等待上限;
- (void)set等待上限:(double)set等待上限;
- (long long)等待结束行为;
- (void)set等待结束行为:(long long)set等待结束行为;
- (NSString *)等待跳转;
- (void)set等待跳转:(NSString *)set等待跳转;
- (long long)是否随机;
- (void)set是否随机:(long long)set是否随机;
- (long long)位置偏移随机数开关;
- (void)set位置偏移随机数开关:(long long)set位置偏移随机数开关;
- (double)长按时长;
- (void)set长按时长:(double)set长按时长;
- (double)滑动时长;
- (void)set滑动时长:(double)set滑动时长;
- (long long)方向;
- (void)set方向:(long long)set方向;
- (double)距离;
- (void)set距离:(double)set距离;
- (long long)滑动帧数;
- (void)set滑动帧数:(long long)set滑动帧数;
- (UIImage *)图片;
- (void)set图片:(UIImage *)set图片;
- (double)相似度;
- (void)set相似度:(double)set相似度;
- (CGRect)识别区域;
- (void)set识别区域:(CGRect)set识别区域;
- (double)识图超时;
- (void)set识图超时:(double)set识图超时;
- (double)识图延迟;
- (void)set识图延迟:(double)set识图延迟;
- (long long)识图点击;
- (void)set识图点击:(long long)set识图点击;
- (NSString *)识图跳转;
- (void)set识图跳转:(NSString *)set识图跳转;
- (long long)识图命中行为;
- (void)set识图命中行为:(long long)set识图命中行为;
- (double)识图长按时长;
- (void)set识图长按时长:(double)set识图长按时长;
- (double)识图滑动时长;
- (void)set识图滑动时长:(double)set识图滑动时长;
- (long long)识图滑动帧数;
- (void)set识图滑动帧数:(long long)set识图滑动帧数;
- (double)识图滑动时隔;
- (void)set识图滑动时隔:(double)set识图滑动时隔;
- (NSArray *)识图路径点;
- (void)set识图路径点:(NSArray *)set识图路径点;
- (BOOL)识图判断;
- (void)set识图判断:(BOOL)set识图判断;
- (long long)识图判断次数;
- (void)set识图判断次数:(long long)set识图判断次数;
- (long long)识图判断失败行为;
- (void)set识图判断失败行为:(long long)set识图判断失败行为;
- (NSString *)识图判断跳转;
- (void)set识图判断跳转:(NSString *)set识图判断跳转;
- (long long)识图失败行为;
- (void)set识图失败行为:(long long)set识图失败行为;
- (NSString *)识图失败跳转;
- (void)set识图失败跳转:(NSString *)set识图失败跳转;
- (NSArray *)多点坐标组;
- (void)set多点坐标组:(NSArray *)set多点坐标组;
- (long long)自由模式;
- (void)set自由模式:(long long)set自由模式;
- (BOOL)自由长按;
- (void)set自由长按:(BOOL)set自由长按;
- (NSArray *)自由路径点;
- (void)set自由路径点:(NSArray *)set自由路径点;
- (double)自由滑动时长;
- (void)set自由滑动时长:(double)set自由滑动时长;
- (long long)自由滑动帧数;
- (void)set自由滑动帧数:(long long)set自由滑动帧数;
- (NSArray *)自由坐标组;
- (void)set自由坐标组:(NSArray *)set自由坐标组;
- (long long)循环上限;
- (void)set循环上限:(long long)set循环上限;
- (NSString *)循环变量名;
- (void)set循环变量名:(NSString *)set循环变量名;
- (BOOL)循环每轮清零;
- (void)set循环每轮清零:(BOOL)set循环每轮清零;
- (NSString *)循环配对标识;
- (void)set循环配对标识:(NSString *)set循环配对标识;
- (double)识字等待;
- (void)set识字等待:(double)set识字等待;
- (long long)识字类型;
- (void)set识字类型:(long long)set识字类型;
- (NSString *)识字文本;
- (void)set识字文本:(NSString *)set识字文本;
- (long long)识字条件;
- (void)set识字条件:(long long)set识字条件;
- (double)识字数值;
- (void)set识字数值:(double)set识字数值;
- (long long)识字成功行为;
- (void)set识字成功行为:(long long)set识字成功行为;
- (double)识字长按时长;
- (void)set识字长按时长:(double)set识字长按时长;
- (double)识字滑动时长;
- (void)set识字滑动时长:(double)set识字滑动时长;
- (long long)识字滑动帧数;
- (void)set识字滑动帧数:(long long)set识字滑动帧数;
- (double)识字滑动时隔;
- (void)set识字滑动时隔:(double)set识字滑动时隔;
- (NSArray *)识字路径点;
- (void)set识字路径点:(NSArray *)set识字路径点;
- (long long)识字失败行为;
- (void)set识字失败行为:(long long)set识字失败行为;
- (NSString *)识字跳转;
- (void)set识字跳转:(NSString *)set识字跳转;
- (NSString *)识字失败跳转;
- (void)set识字失败跳转:(NSString *)set识字失败跳转;
- (double)取字等待;
- (void)set取字等待:(double)set取字等待;
- (long long)取字存储;
- (void)set取字存储:(long long)set取字存储;
- (long long)取字成功行为;
- (void)set取字成功行为:(long long)set取字成功行为;
- (long long)取字失败行为;
- (void)set取字失败行为:(long long)set取字失败行为;
- (NSString *)取字跳转;
- (void)set取字跳转:(NSString *)set取字跳转;
- (NSString *)取字失败跳转;
- (void)set取字失败跳转:(NSString *)set取字失败跳转;
- (long long)取字模式;
- (void)set取字模式:(long long)set取字模式;
- (long long)取字高级类型;
- (void)set取字高级类型:(long long)set取字高级类型;
- (NSString *)取字目标文本;
- (void)set取字目标文本:(NSString *)set取字目标文本;
- (NSString *)取字替换文本;
- (void)set取字替换文本:(NSString *)set取字替换文本;
- (NSString *)取字正则;
- (void)set取字正则:(NSString *)set取字正则;
- (long long)取字第几条;
- (void)set取字第几条:(long long)set取字第几条;
- (double)输入等待;
- (void)set输入等待:(double)set输入等待;
- (NSString *)输入文本;
- (void)set输入文本:(NSString *)set输入文本;
- (long long)输入模式;
- (void)set输入模式:(long long)set输入模式;
- (long long)输入来源;
- (void)set输入来源:(long long)set输入来源;
- (long long)输入暂存取条;
- (void)set输入暂存取条:(long long)set输入暂存取条;
- (BOOL)输入清空;
- (void)set输入清空:(BOOL)set输入清空;
- (BOOL)输入回车;
- (void)set输入回车:(BOOL)set输入回车;
- (double)识色等待;
- (void)set识色等待:(double)set识色等待;
- (long long)识色次数;
- (void)set识色次数:(long long)set识色次数;
- (long long)识色容差;
- (void)set识色容差:(long long)set识色容差;
- (long long)识色模式;
- (void)set识色模式:(long long)set识色模式;
- (NSArray *)识色点组;
- (void)set识色点组:(NSArray *)set识色点组;
- (long long)识色成功行为;
- (void)set识色成功行为:(long long)set识色成功行为;
- (double)识色长按时长;
- (void)set识色长按时长:(double)set识色长按时长;
- (double)识色滑动时长;
- (void)set识色滑动时长:(double)set识色滑动时长;
- (long long)识色滑动帧数;
- (void)set识色滑动帧数:(long long)set识色滑动帧数;
- (double)识色滑动时隔;
- (void)set识色滑动时隔:(double)set识色滑动时隔;
- (NSArray *)识色路径点;
- (void)set识色路径点:(NSArray *)set识色路径点;
- (long long)识色失败行为;
- (void)set识色失败行为:(long long)set识色失败行为;
- (NSString *)识色跳转;
- (void)set识色跳转:(NSString *)set识色跳转;
- (NSString *)识色失败跳转;
- (void)set识色失败跳转:(NSString *)set识色失败跳转;
- (BOOL)等待模式;
- (void)set等待模式:(BOOL)set等待模式;
- (double)等待总超时;
- (void)set等待总超时:(double)set等待总超时;
- (NSData *)录制数据;
- (void)set录制数据:(NSData *)set录制数据;
- (double)录制时间;
- (void)set录制时间:(double)set录制时间;
- (double)循环次数;
- (void)set循环次数:(double)set循环次数;
- (BOOL)击杀特效;
- (void)set击杀特效:(BOOL)set击杀特效;
- (BOOL)自动旋转;
- (void)set自动旋转:(BOOL)set自动旋转;
- (BOOL)自动缩放;
- (void)set自动缩放:(BOOL)set自动缩放;
@end

@interface 动作组模型 : NSObject {
    BOOL                                     _专属;   // off 8
    BOOL                                     _是否开启;   // off 9
    NSString *                               _标识;   // off 16
    NSString *                               _名称;   // off 24
}
@property (copy, nonatomic) NSString *标识;
@property (copy, nonatomic) NSString *名称;
@property (nonatomic) BOOL 专属;
@property (nonatomic) BOOL 是否开启;
- (id)initWithCoder:(id)initWithCoder;
- (void)encodeWithCoder:(id)encodeWithCoder;
- (id)description;
- (NSString *)标识;
- (void)set标识:(NSString *)set标识;
- (NSString *)名称;
- (void)set名称:(NSString *)set名称;
- (BOOL)专属;
- (void)set专属:(BOOL)set专属;
- (BOOL)是否开启;
- (void)set是否开启:(BOOL)set是否开启;
@end

@interface 动作选择视图 : NSObject {
    BOOL                                     _最小化;   // off 8
    BOOL                                     _面板位置已重定;   // off 9
    BOOL                                     _内容已搬运;   // off 10
    id                                       _完成回调;   // off 16
    id                                       _隐式归组回调;   // off 24
    UIView *                                 _标记视图;   // off 32
    UISegmentedControl *                     _时长随机段;   // off 40
    参数行 *                                    _随机幅度行;   // off 48
    UIView *                                 _面板;   // off 56
    UILabel *                                _坐标标签;   // off 64
    NSMutableArray *                         _行列表;   // off 72
    动作模型 *                                   _编辑动作;   // off 80
    动作模型 *                                   _原动作;   // off 88
    UIView *                                 _把手栏;   // off 96
    UIButton *                               _最小化按钮;   // off 104
    UITextField *                            _名称输入框;   // off 112
    UIScrollView *                           _内容滚动;   // off 120
    CGPoint                                  _拖动偏移;   // off 128
    CGPoint                                  _面板中心自定;   // off 144
}
@property (nonatomic) CGPoint 拖动偏移;
@property (strong, nonatomic) UISegmentedControl *时长随机段;
@property (weak, nonatomic) 参数行 *随机幅度行;
@property (strong, nonatomic) UIView *标记视图;
@property (strong, nonatomic) UIView *面板;
@property (strong, nonatomic) UILabel *坐标标签;
@property (strong, nonatomic) NSMutableArray *行列表;
@property (strong, nonatomic) 动作模型 *编辑动作;
@property (strong, nonatomic) 动作模型 *原动作;
@property (strong, nonatomic) UIView *把手栏;
@property (strong, nonatomic) UIButton *最小化按钮;
@property (nonatomic) BOOL 最小化;
@property (nonatomic) BOOL 面板位置已重定;
@property (nonatomic) CGPoint 面板中心自定;
@property (strong, nonatomic) UITextField *名称输入框;
@property (strong, nonatomic) UIScrollView *内容滚动;
@property (nonatomic) BOOL 内容已搬运;
@property (nonatomic, readonly) 动作模型 *动作;
@property (copy, nonatomic) id 完成回调;
@property (copy, nonatomic) id 隐式归组回调;
- (id)initWith动作:(id)initWith动作;
- (动作模型 *)动作;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (id)新建标记视图;
- (void)摆放标记:(CGPoint)摆放标记;
- (void)更新标记;
- (void)拖动:(id)拖动;
- (void)刷新准星;
- (BOOL)显示标记;
- (id)坐标文本;
- (void)构建参数;
- (id)添加参数:(id)添加参数;
- (BOOL)含时长字段;
- (double)时长随机附加高度;
- (void)构建时长随机控件;
- (void)时长随机段变化:(id)时长随机段变化;
- (void)布局时长随机:(double *)布局时长随机 宽:(double)宽;
- (double)面板附加高度;
- (id)内容区域;
- (double)面板把手栏高;
- (double)面板最小化总高;
- (double)面板行区起点;
- (unsigned long long)可见参数行数;
- (double)面板行区高;
- (double)面板名称行高;
- (void)布局参数区;
- (void)切换最小化;
- (void)拖动面板:(id)拖动面板;
- (void)layoutSubviews;
- (void)取消;
- (void)确定;
- (void)名称回车;
- (void)显示;
- (void)设置界面隐藏:(BOOL)设置界面隐藏;
- (void)选跳转目标:(id)选跳转目标;
- (void)摆放行:(id)摆放行 显:(BOOL)显 y:(double *)y 宽:(double)宽;
- (id)完成回调;
- (void)set完成回调:(id)set完成回调;
- (id)隐式归组回调;
- (void)set隐式归组回调:(id)set隐式归组回调;
- (UIView *)标记视图;
- (void)set标记视图:(UIView *)set标记视图;
- (CGPoint)拖动偏移;
- (void)set拖动偏移:(CGPoint)set拖动偏移;
- (UISegmentedControl *)时长随机段;
- (void)set时长随机段:(UISegmentedControl *)set时长随机段;
- (参数行 *)随机幅度行;
- (void)set随机幅度行:(参数行 *)set随机幅度行;
- (UIView *)面板;
- (void)set面板:(UIView *)set面板;
- (UILabel *)坐标标签;
- (void)set坐标标签:(UILabel *)set坐标标签;
- (NSMutableArray *)行列表;
- (void)set行列表:(NSMutableArray *)set行列表;
- (动作模型 *)编辑动作;
- (void)set编辑动作:(动作模型 *)set编辑动作;
- (动作模型 *)原动作;
- (void)set原动作:(动作模型 *)set原动作;
- (UIView *)把手栏;
- (void)set把手栏:(UIView *)set把手栏;
- (UIButton *)最小化按钮;
- (void)set最小化按钮:(UIButton *)set最小化按钮;
- (BOOL)最小化;
- (void)set最小化:(BOOL)set最小化;
- (BOOL)面板位置已重定;
- (void)set面板位置已重定:(BOOL)set面板位置已重定;
- (CGPoint)面板中心自定;
- (void)set面板中心自定:(CGPoint)set面板中心自定;
- (UITextField *)名称输入框;
- (void)set名称输入框:(UITextField *)set名称输入框;
- (UIScrollView *)内容滚动;
- (void)set内容滚动:(UIScrollView *)set内容滚动;
- (BOOL)内容已搬运;
- (void)set内容已搬运:(BOOL)set内容已搬运;
@end

@interface 参数行 : NSObject {
    long long                                _小数位;   // off 8
    BOOL                                     _隐藏;   // off 16
    UILabel *                                _标题;   // off 24
    UILabel *                                _数值;   // off 32
    UIStepper *                              _步进;   // off 40
    id                                       _变化;   // off 48
    NSString *                               _零显示;   // off 56
}
@property (strong, nonatomic) UILabel *标题;
@property (strong, nonatomic) UILabel *数值;
@property (strong, nonatomic) UIStepper *步进;
@property (copy, nonatomic) NSString *零显示;
@property (copy, nonatomic) id 变化;
@property (nonatomic) BOOL 隐藏;
- (void)布局宽:(double)布局宽;
- (void)值变化:(id)值变化;
- (void)刷新:(double)刷新;
- (void)赋值:(double)赋值;
- (UILabel *)标题;
- (void)set标题:(UILabel *)set标题;
- (UILabel *)数值;
- (void)set数值:(UILabel *)set数值;
- (UIStepper *)步进;
- (void)set步进:(UIStepper *)set步进;
- (id)变化;
- (void)set变化:(id)set变化;
- (BOOL)隐藏;
- (void)set隐藏:(BOOL)set隐藏;
- (NSString *)零显示;
- (void)set零显示:(NSString *)set零显示;
@end

@interface 双击选择视图 : 动作选择视图 {
}
- (void)构建参数;
- (BOOL)含时长字段;
- (double)面板附加高度;
@end

@interface 取字选择视图 : 动作选择视图 {
    UISegmentedControl *                     _模式段;   // off 160
    UISegmentedControl *                     _高级段;   // off 168
    UITextField *                            _目标框;   // off 176
    UITextField *                            _替换框;   // off 184
    UITextField *                            _正则框;   // off 192
    UITextField *                            _第几条框;   // off 200
    UISegmentedControl *                     _存储段;   // off 208
    UIButton *                               _框选按钮;   // off 216
    UIButton *                               _测试按钮;   // off 224
    UISegmentedControl *                     _成功段;   // off 232
    UIButton *                               _成功跳按钮;   // off 240
    UISegmentedControl *                     _失败段;   // off 248
    UIButton *                               _失败跳按钮;   // off 256
    参数行 *                                    _区域宽行;   // off 264
    参数行 *                                    _区域高行;   // off 272
}
@property (strong, nonatomic) UISegmentedControl *模式段;
@property (strong, nonatomic) UISegmentedControl *高级段;
@property (strong, nonatomic) UITextField *目标框;
@property (strong, nonatomic) UITextField *替换框;
@property (strong, nonatomic) UITextField *正则框;
@property (strong, nonatomic) UITextField *第几条框;
@property (strong, nonatomic) UISegmentedControl *存储段;
@property (strong, nonatomic) UIButton *框选按钮;
@property (strong, nonatomic) UIButton *测试按钮;
@property (strong, nonatomic) UISegmentedControl *成功段;
@property (strong, nonatomic) UIButton *成功跳按钮;
@property (strong, nonatomic) UISegmentedControl *失败段;
@property (strong, nonatomic) UIButton *失败跳按钮;
@property (weak, nonatomic) 参数行 *区域宽行;
@property (weak, nonatomic) 参数行 *区域高行;
- (BOOL)显示标记;
- (id)新建标记视图;
- (void)构建参数;
- (void)配段:(id)配段;
- (double)面板附加高度;
- (void)布局参数区;
- (id)新建按钮;
- (id)新建输入框:(id)新建输入框;
- (void)收起键盘;
- (void)模式段变化:(id)模式段变化;
- (void)高级段变化:(id)高级段变化;
- (void)目标框变化:(id)目标框变化;
- (void)替换框变化:(id)替换框变化;
- (void)正则框变化:(id)正则框变化;
- (void)第几条框变化:(id)第几条框变化;
- (void)存储段变化:(id)存储段变化;
- (void)成功段变化:(id)成功段变化;
- (void)失败段变化:(id)失败段变化;
- (void)选择成功跳转;
- (void)选择失败跳转;
- (void)刷新跳转按钮;
- (void)框选识别区;
- (void)测试提取;
- (UISegmentedControl *)模式段;
- (void)set模式段:(UISegmentedControl *)set模式段;
- (UISegmentedControl *)高级段;
- (void)set高级段:(UISegmentedControl *)set高级段;
- (UITextField *)目标框;
- (void)set目标框:(UITextField *)set目标框;
- (UITextField *)替换框;
- (void)set替换框:(UITextField *)set替换框;
- (UITextField *)正则框;
- (void)set正则框:(UITextField *)set正则框;
- (UITextField *)第几条框;
- (void)set第几条框:(UITextField *)set第几条框;
- (UISegmentedControl *)存储段;
- (void)set存储段:(UISegmentedControl *)set存储段;
- (UIButton *)框选按钮;
- (void)set框选按钮:(UIButton *)set框选按钮;
- (UIButton *)测试按钮;
- (void)set测试按钮:(UIButton *)set测试按钮;
- (UISegmentedControl *)成功段;
- (void)set成功段:(UISegmentedControl *)set成功段;
- (UIButton *)成功跳按钮;
- (void)set成功跳按钮:(UIButton *)set成功跳按钮;
- (UISegmentedControl *)失败段;
- (void)set失败段:(UISegmentedControl *)set失败段;
- (UIButton *)失败跳按钮;
- (void)set失败跳按钮:(UIButton *)set失败跳按钮;
- (参数行 *)区域宽行;
- (void)set区域宽行:(参数行 *)set区域宽行;
- (参数行 *)区域高行;
- (void)set区域高行:(参数行 *)set区域高行;
@end

@interface 命中路径编辑器 : NSObject {
    NSMutableArray *                         _点们;   // off 8
    NSMutableArray *                         _标签们;   // off 16
    NSMutableArray *                         _线们;   // off 24
    UITableView *                            _表;   // off 32
    BOOL                                     _起点已被用户拖动;   // off 40
    UIView *                                 _宿主;   // off 48
    UIView *                                 _面板;   // off 56
    UIView *                                 _容器;   // off 64
    NSArray *                                _路径点;   // off 72
    id                                       _变化;   // off 80
    CGPoint                                  _起点参考;   // off 88
    CGRect                                   _列表区;   // off 104
}
@property (weak, nonatomic) UIView *宿主;
@property (weak, nonatomic) UIView *面板;
@property (weak, nonatomic) UIView *容器;
@property (copy, nonatomic) NSArray *路径点;
@property (copy, nonatomic) id 变化;
@property (nonatomic) CGPoint 起点参考;
@property (nonatomic) BOOL 起点已被用户拖动;
@property (nonatomic) CGRect 列表区;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (id)init;
- (void)set路径点:(NSArray *)set路径点;
- (void)布局;
- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection;
- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath;
- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath;
- (id)点字母:(long long)点字母;
- (void)添加点;
- (void)删除点:(long long)删除点;
- (void)提交:(id)提交;
- (void)刷新;
- (void)重建列表;
- (id)命中测试:(CGPoint)命中测试 事件:(id)事件;
- (void)重建标记;
- (void)摆放标记;
- (void)拖动:(id)拖动;
- (void)清理;
- (UIView *)宿主;
- (void)set宿主:(UIView *)set宿主;
- (UIView *)面板;
- (void)set面板:(UIView *)set面板;
- (UIView *)容器;
- (void)set容器:(UIView *)set容器;
- (NSArray *)路径点;
- (id)变化;
- (void)set变化:(id)set变化;
- (CGPoint)起点参考;
- (void)set起点参考:(CGPoint)set起点参考;
- (BOOL)起点已被用户拖动;
- (void)set起点已被用户拖动:(BOOL)set起点已被用户拖动;
- (CGRect)列表区;
- (void)set列表区:(CGRect)set列表区;
@end

@interface 多点选择视图 : 动作选择视图 {
    NSMutableArray *                         _标记们;   // off 160
    NSMutableArray *                         _标签们;   // off 168
}
@property (strong, nonatomic) NSMutableArray *标记们;
@property (strong, nonatomic) NSMutableArray *标签们;
- (void)构建参数;
- (BOOL)显示标记;
- (id)新建标记视图;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (void)拖动点:(id)拖动点;
- (id)新建点标记:(long long)新建点标记;
- (void)重设数量:(long long)重设数量;
- (void)同步标记;
- (void)摆放点标记:(long long)摆放点标记;
- (void)刷新准星;
- (NSMutableArray *)标记们;
- (void)set标记们:(NSMutableArray *)set标记们;
- (NSMutableArray *)标签们;
- (void)set标签们:(NSMutableArray *)set标签们;
@end

@interface 录制视图 : NSObject {
    UILabel *                                _状态;   // off 8
    UILabel *                                _统计;   // off 16
    UIButton *                               _主按钮;   // off 24
    UIView *                                 _状态灯;   // off 32
    NSTimer *                                _刷新;   // off 40
}
- (void)构建;
- (void)刷新状态灯;
- (void)显示;
- (void)willMoveToSuperview:(id)willMoveToSuperview;
- (void)刷新;
- (void)切换;
- (void)保存;
@end

@interface 循环结尾选择视图 : 动作选择视图 {
    UILabel *                                _配对标签;   // off 160
}
@property (strong, nonatomic) UILabel *配对标签;
- (BOOL)显示标记;
- (id)新建标记视图;
- (void)构建参数;
- (double)面板附加高度;
- (void)布局参数区;
- (void)刷新;
- (UILabel *)配对标签;
- (void)set配对标签:(UILabel *)set配对标签;
@end

@interface 循环选择视图 : 动作选择视图 {
    UILabel *                                _配对标签;   // off 160
    参数行 *                                    _清零行;   // off 168
}
@property (strong, nonatomic) UILabel *配对标签;
@property (strong, nonatomic) 参数行 *清零行;
- (BOOL)显示标记;
- (id)新建标记视图;
- (void)构建参数;
- (double)面板附加高度;
- (void)布局参数区;
- (void)刷新配对:(BOOL)刷新配对;
- (UILabel *)配对标签;
- (void)set配对标签:(UILabel *)set配对标签;
- (参数行 *)清零行;
- (void)set清零行:(参数行 *)set清零行;
@end

@interface 悬浮球 : NSObject {
    BOOL                                     _自动隐藏;   // off 8
    BOOL                                     _贴边隐藏;   // off 9
    BOOL                                     _已贴边;   // off 10
    BOOL                                     _拉手态;   // off 11
    BOOL                                     _运行中;   // off 12
    BOOL                                     _已运行过;   // off 13
    BOOL                                     _已移动;   // off 14
    BOOL                                     _闪现中;   // off 15
    BOOL                                     _本次由拉手拖出;   // off 16
    id                                       _点击回调;   // off 24
    id                                       _长按回调;   // off 32
    double                                   _隐藏透明度;   // off 40
    double                                   _直径;   // off 48
    long long                                _形态;   // off 56
    UIPanGestureRecognizer *                 _拖动手势;   // off 64
    NSTimer *                                _隐藏计时器;   // off 72
    UILabel *                                _名称标签;   // off 80
    UILabel *                                _副标签;   // off 88
    CAShapeLayer *                           _图标层;   // off 96
    long long                                _闪现代号;   // off 104
    CAShapeLayer *                           _箭头层;   // off 112
    CAShapeLayer *                           _进度底环;   // off 120
    CAShapeLayer *                           _进度环;   // off 128
    NSTimer *                                _计时器;   // off 136
    CGPoint                                  _拖动起点;   // off 144
}
@property (strong, nonatomic) UIPanGestureRecognizer *拖动手势;
@property (strong, nonatomic) NSTimer *隐藏计时器;
@property (nonatomic) CGPoint 拖动起点;
@property (nonatomic) BOOL 已移动;
@property (strong, nonatomic) UILabel *名称标签;
@property (strong, nonatomic) UILabel *副标签;
@property (strong, nonatomic) CAShapeLayer *图标层;
@property (nonatomic) long long 闪现代号;
@property (nonatomic) BOOL 闪现中;
@property (strong, nonatomic) CAShapeLayer *箭头层;
@property (nonatomic) BOOL 本次由拉手拖出;
@property (strong, nonatomic) CAShapeLayer *进度底环;
@property (strong, nonatomic) CAShapeLayer *进度环;
@property (nonatomic) BOOL 拉手态;
@property (strong, nonatomic) NSTimer *计时器;
@property (copy, nonatomic) id 点击回调;
@property (copy, nonatomic) id 长按回调;
@property (nonatomic) BOOL 自动隐藏;
@property (nonatomic) double 隐藏透明度;
@property (nonatomic) BOOL 贴边隐藏;
@property (nonatomic) BOOL 已贴边;
@property (nonatomic) double 直径;
@property (nonatomic) long long 形态;
@property (nonatomic) BOOL 运行中;
@property (nonatomic) BOOL 已运行过;
- (double)半径;
- (double)缩放比;
- (id)initWithFrame:(CGRect)initWithFrame;
- (void)layoutSubviews;
- (void)应用外观;
- (void)布局进度层;
- (void)显示进度:(double)显示进度;
- (void)set运行中:(BOOL)set运行中;
- (void)set已运行过:(BOOL)set已运行过;
- (void)刷新显示;
- (void)_绘播放图标;
- (void)_绘停止图标;
- (void)开始计时;
- (void)停止计时;
- (void)刷新计时文本;
- (id)计时文本;
- (void)闪现名称:(id)闪现名称;
- (void)单击;
- (void)长按:(id)长按;
- (void)拖动:(id)拖动;
- (void)吸附;
- (void)变形为拉手:(BOOL)变形为拉手;
- (void)恢复圆形;
- (void)_绘拉手箭头:(BOOL)_绘拉手箭头;
- (void)滑回贴边;
- (void)重新吸附;
- (void)排隐藏;
- (void)唤醒;
- (void)didMoveToSuperview;
- (id)点击回调;
- (void)set点击回调:(id)set点击回调;
- (id)长按回调;
- (void)set长按回调:(id)set长按回调;
- (BOOL)自动隐藏;
- (void)set自动隐藏:(BOOL)set自动隐藏;
- (double)隐藏透明度;
- (void)set隐藏透明度:(double)set隐藏透明度;
- (BOOL)贴边隐藏;
- (void)set贴边隐藏:(BOOL)set贴边隐藏;
- (BOOL)已贴边;
- (void)set已贴边:(BOOL)set已贴边;
- (BOOL)拉手态;
- (void)set拉手态:(BOOL)set拉手态;
- (double)直径;
- (void)set直径:(double)set直径;
- (long long)形态;
- (void)set形态:(long long)set形态;
- (BOOL)运行中;
- (BOOL)已运行过;
- (UIPanGestureRecognizer *)拖动手势;
- (void)set拖动手势:(UIPanGestureRecognizer *)set拖动手势;
- (NSTimer *)隐藏计时器;
- (void)set隐藏计时器:(NSTimer *)set隐藏计时器;
- (CGPoint)拖动起点;
- (void)set拖动起点:(CGPoint)set拖动起点;
- (BOOL)已移动;
- (void)set已移动:(BOOL)set已移动;
- (UILabel *)名称标签;
- (void)set名称标签:(UILabel *)set名称标签;
- (UILabel *)副标签;
- (void)set副标签:(UILabel *)set副标签;
- (CAShapeLayer *)图标层;
- (void)set图标层:(CAShapeLayer *)set图标层;
- (long long)闪现代号;
- (void)set闪现代号:(long long)set闪现代号;
- (BOOL)闪现中;
- (void)set闪现中:(BOOL)set闪现中;
- (CAShapeLayer *)箭头层;
- (void)set箭头层:(CAShapeLayer *)set箭头层;
- (BOOL)本次由拉手拖出;
- (void)set本次由拉手拖出:(BOOL)set本次由拉手拖出;
- (CAShapeLayer *)进度底环;
- (void)set进度底环:(CAShapeLayer *)set进度底环;
- (CAShapeLayer *)进度环;
- (void)set进度环:(CAShapeLayer *)set进度环;
- (NSTimer *)计时器;
- (void)set计时器:(NSTimer *)set计时器;
@end

@interface 方向箭头视图 : NSObject {
    CAShapeLayer *                           _杆;   // off 8
    CAShapeLayer *                           _头;   // off 16
    CAShapeLayer *                           _尾;   // off 24
    long long                                _方向;   // off 32
    double                                   _长度;   // off 40
}
@property (nonatomic) long long 方向;
@property (nonatomic) double 长度;
- (id)initWithFrame:(CGRect)initWithFrame;
- (void)set方向:(long long)set方向;
- (void)set长度:(double)set长度;
- (void)layoutSubviews;
- (void)重画;
- (long long)方向;
- (double)长度;
@end

@interface 时间选择弹窗 : NSObject {
    UIDatePicker *                           _picker;   // off 8
    id                                       _回调;   // off 16
}
- (void)确定;
- (void)取消;
- (void)收起;
- (id)描述;
@end

@interface 模板裁切视图 : NSObject {
    UIImage *                                _截图;   // off 8
    NSMutableArray *                         _遮罩;   // off 16
    UIView *                                 _框;   // off 24
    NSMutableArray *                         _角;   // off 32
    UILabel *                                _尺寸;   // off 40
    CGRect                                   _选区;   // off 48
    CGPoint                                  _起点;   // off 80
    long long                                _模式;   // off 96
    UIView *                                 _按钮条;   // off 104
    id                                       _完成;   // off 112
    id                                       _取消;   // off 120
}
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (id)initWithFrame:(CGRect)initWithFrame 截图:(id)截图;
- (void)刷新选区;
- (long long)命中角:(CGPoint)命中角;
- (BOOL)gestureRecognizer:(id)gestureRecognizer shouldReceiveTouch:(id)shouldReceiveTouch;
- (void)拖按钮条:(id)拖按钮条;
- (void)拖:(id)拖;
- (void)确认裁切;
- (void)取消裁切;
@end

@interface 滑动选择视图 : 动作选择视图 {
    UISegmentedControl *                     _方向段;   // off 160
    方向箭头视图 *                                 _箭头;   // off 168
}
- (void)构建参数;
- (void)方向变化:(id)方向变化;
- (BOOL)含时长字段;
- (double)面板附加高度;
- (void)布局参数区;
- (id)新建标记视图;
- (void)摆放标记:(CGPoint)摆放标记;
- (void)更新标记;
- (void)同步起止;
- (void)刷新准星;
- (id)坐标文本;
@end

@interface 点击反馈视图 : NSObject {
}
@end

@interface 点击选择视图 : 动作选择视图 {
}
- (void)构建参数;
- (BOOL)含时长字段;
- (double)面板附加高度;
@end

@interface 穿透窗口 : NSObject {
    NSMutableArray *                         _响应视图;   // off 8
}
@property (strong, nonatomic) NSMutableArray *响应视图;
- (id)initWithFrame:(CGRect)initWithFrame;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (NSMutableArray *)响应视图;
- (void)set响应视图:(NSMutableArray *)set响应视图;
@end

@interface 穿透窗口控制器 : NSObject {
}
- (void)viewDidLoad;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (unsigned long long)supportedInterfaceOrientations;
@end

@interface 等待选择视图 : 动作选择视图 {
    UISegmentedControl *                     _模式段;   // off 160
    参数行 *                                    _固定行;   // off 168
    参数行 *                                    _下限行;   // off 176
    参数行 *                                    _上限行;   // off 184
    UISegmentedControl *                     _结束段;   // off 192
    UIButton *                               _跳转按钮;   // off 200
}
@property (strong, nonatomic) UISegmentedControl *模式段;
@property (strong, nonatomic) 参数行 *固定行;
@property (strong, nonatomic) 参数行 *下限行;
@property (strong, nonatomic) 参数行 *上限行;
@property (strong, nonatomic) UISegmentedControl *结束段;
@property (strong, nonatomic) UIButton *跳转按钮;
- (BOOL)显示标记;
- (id)新建标记视图;
- (void)构建参数;
- (void)模式段变化:(id)模式段变化;
- (void)结束段变化:(id)结束段变化;
- (void)选择等待跳转;
- (void)刷新跳转按钮;
- (void)配段:(id)配段;
- (id)新建按钮;
- (id)等待动作名By标识:(id)等待动作名By标识;
- (double)面板附加高度;
- (void)布局参数区;
- (UISegmentedControl *)模式段;
- (void)set模式段:(UISegmentedControl *)set模式段;
- (参数行 *)固定行;
- (void)set固定行:(参数行 *)set固定行;
- (参数行 *)下限行;
- (void)set下限行:(参数行 *)set下限行;
- (参数行 *)上限行;
- (void)set上限行:(参数行 *)set上限行;
- (UISegmentedControl *)结束段;
- (void)set结束段:(UISegmentedControl *)set结束段;
- (UIButton *)跳转按钮;
- (void)set跳转按钮:(UIButton *)set跳转按钮;
@end

@interface 统计视图 : NSObject {
    UILabel *                                _今日值;   // off 8
    UILabel *                                _累计值;   // off 16
    UIScrollView *                           _列表;   // off 24
    UILabel *                                _空态;   // off 32
    UIButton *                               _明细按钮;   // off 40
    UIButton *                               _清零按钮;   // off 48
    NSArray *                                _数据;   // off 56
    long long                                _选中行;   // off 64
}
@property (strong, nonatomic) UILabel *今日值;
@property (strong, nonatomic) UILabel *累计值;
@property (strong, nonatomic) UIScrollView *列表;
@property (strong, nonatomic) UILabel *空态;
@property (strong, nonatomic) UIButton *明细按钮;
@property (strong, nonatomic) UIButton *清零按钮;
@property (strong, nonatomic) NSArray *数据;
@property (nonatomic) long long 选中行;
- (id)initWithFrame:(CGRect)initWithFrame;
- (void)构建;
- (void)刷新;
- (id)建行:(long long)建行 宽:(double)宽 y:(double)y 高:(double)高;
- (void)点行:(id)点行;
- (void)查看明细;
- (void)清零;
- (void)关闭自己;
- (UILabel *)今日值;
- (void)set今日值:(UILabel *)set今日值;
- (UILabel *)累计值;
- (void)set累计值:(UILabel *)set累计值;
- (UIScrollView *)列表;
- (void)set列表:(UIScrollView *)set列表;
- (UILabel *)空态;
- (void)set空态:(UILabel *)set空态;
- (UIButton *)明细按钮;
- (void)set明细按钮:(UIButton *)set明细按钮;
- (UIButton *)清零按钮;
- (void)set清零按钮:(UIButton *)set清零按钮;
- (NSArray *)数据;
- (void)set数据:(NSArray *)set数据;
- (long long)选中行;
- (void)set选中行:(long long)set选中行;
@end

@interface 网格格 : NSObject {
}
- (id)initWithFrame:(CGRect)initWithFrame;
- (void)setHighlighted:(BOOL)setHighlighted;
- (void)添加图标:(id)添加图标 文字:(id)文字;
@end

@interface 自定义弹窗 : NSObject {
    id                                       _回调;   // off 8
    id                                       _回调2;   // off 16
}
- (void)按钮点击:(id)按钮点击;
- (void)分组项点击:(id)分组项点击;
- (id)描述;
@end

@interface 自由滑动选择视图 : 动作选择视图 {
    NSMutableArray *                         _点们;   // off 160
    NSMutableArray *                         _标签们;   // off 168
    NSMutableArray *                         _连线们;   // off 176
    UISegmentedControl *                     _模式段;   // off 184
    UIButton *                               _添加组按钮;   // off 192
    UIView *                                 _组列表容器;   // off 200
    long long                                _当前组;   // off 208
}
@property (strong, nonatomic) NSMutableArray *点们;
@property (strong, nonatomic) NSMutableArray *标签们;
@property (strong, nonatomic) NSMutableArray *连线们;
@property (strong, nonatomic) UISegmentedControl *模式段;
@property (strong, nonatomic) UIButton *添加组按钮;
@property (strong, nonatomic) UIView *组列表容器;
@property (nonatomic) long long 当前组;
- (void)构建参数;
- (void)模式变化:(id)模式变化;
- (void)更新模式相关UI;
- (void)添加一项;
- (void)添加路径点;
- (void)删除一组:(id)删除一组;
- (void)选中组:(id)选中组;
- (BOOL)显示标记;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (void)拖动点:(id)拖动点;
- (id)新建点标记:(long long)新建点标记;
- (long long)点总数;
- (long long)连线总数;
- (void)同步标记;
- (void)摆放点标记:(long long)摆放点标记;
- (void)摆放连线;
- (void)摆放线:(id)摆放线 a:(CGPoint)a b:(CGPoint)b 显示:(BOOL)显示;
- (id)点字母:(long long)点字母;
- (void)刷新准星;
- (void)重建组列表;
- (id)圈码:(unsigned long long)圈码;
- (long long)列表行数;
- (double)面板附加高度;
- (void)布局参数区;
- (NSMutableArray *)点们;
- (void)set点们:(NSMutableArray *)set点们;
- (NSMutableArray *)标签们;
- (void)set标签们:(NSMutableArray *)set标签们;
- (NSMutableArray *)连线们;
- (void)set连线们:(NSMutableArray *)set连线们;
- (UISegmentedControl *)模式段;
- (void)set模式段:(UISegmentedControl *)set模式段;
- (UIButton *)添加组按钮;
- (void)set添加组按钮:(UIButton *)set添加组按钮;
- (UIView *)组列表容器;
- (void)set组列表容器:(UIView *)set组列表容器;
- (long long)当前组;
- (void)set当前组:(long long)set当前组;
@end

@interface 触摸事件数据 : NSObject {
    double                                   _时间戳;   // off 8
    long long                                _事件类型;   // off 16
    long long                                _手指ID;   // off 24
    CGPoint                                  _位置;   // off 32
}
@property (nonatomic) double 时间戳;
@property (nonatomic) long long 事件类型;
@property (nonatomic) long long 手指ID;
@property (nonatomic) CGPoint 位置;
- (id)initWithCoder:(id)initWithCoder;
- (void)encodeWithCoder:(id)encodeWithCoder;
- (id)copyWithZone:(void *)copyWithZone;
- (id)description;
- (double)时间戳;
- (void)set时间戳:(double)set时间戳;
- (long long)事件类型;
- (void)set事件类型:(long long)set事件类型;
- (long long)手指ID;
- (void)set手指ID:(long long)set手指ID;
- (CGPoint)位置;
- (void)set位置:(CGPoint)set位置;
@end

@interface 设置视图 : NSObject {
    UISwitch *                               _循环;   // off 8
    UISwitch *                               _自动隐藏;   // off 16
    UISwitch *                               _贴边隐藏;   // off 24
    UISwitch *                               _动作提示;   // off 32
    UISwitch *                               _反馈;   // off 40
    UISwitch *                               _详细日志;   // off 48
    UISwitch *                               _定时开始开关;   // off 56
    UIButton *                               _定时开始按钮;   // off 64
    UISwitch *                               _定时停止开关;   // off 72
    UIButton *                               _定时停止按钮;   // off 80
    UISlider *                               _透明;   // off 88
    UISegmentedControl *                     _通道段;   // off 96
    UISegmentedControl *                     _并发段;   // off 104
    UISegmentedControl *                     _量程段;   // off 112
    UISegmentedControl *                     _尺寸段;   // off 120
    UISegmentedControl *                     _形状段;   // off 128
    UILabel *                                _通道标题;   // off 136
    UILabel *                                _并发标题;   // off 144
    UILabel *                                _量程标题;   // off 152
    NSArray *                                _高级区子视图;   // off 160
}
- (id)添加开关:(id)添加开关 y:(double)y on:(BOOL)on;
- (id)添加开关:(id)添加开关 y:(double)y on:(BOOL)on 进高级区:(BOOL)进高级区;
- (void)美化开关:(id)美化开关;
- (id)添加紧凑开关:(id)添加紧凑开关 y:(double)y on:(BOOL)on;
- (id)添加时间按钮:(SEL)添加时间按钮 y:(double)y 分:(long long)分;
- (void)美化分段:(id)美化分段;
- (id)格式化时分:(long long)格式化时分;
- (id)时分转日期:(long long)时分转日期;
- (long long)日期转时分:(id)日期转时分;
- (void)选定时开始:(id)选定时开始;
- (void)选定时停止:(id)选定时停止;
- (id)添加可解锁开关:(id)添加可解锁开关 y:(double)y on:(BOOL)on;
- (void)构建;
- (void)点击入口被点击:(id)点击入口被点击;
- (void)包成滚动容器;
- (void)添加分组标题:(id)添加分组标题 y:(double)y;
- (id)添加分组标题:(id)添加分组标题 y:(double)y 入收:(BOOL)入收;
- (void)收进高级区:(id)收进高级区;
- (void)尺寸变化:(id)尺寸变化;
- (void)形状变化:(id)形状变化;
- (void)量程变化:(id)量程变化;
- (void)通道变化:(id)通道变化;
- (void)并发变化:(id)并发变化;
- (void)开关变化:(id)开关变化;
- (void)透明变化:(id)透明变化;
- (void)透明预览结束;
- (void)打开官网;
- (void)显示启动诊断;
- (void)显示能力自检;
- (void)显示更新详情;
- (void)导入配置;
- (void)导出配置;
- (void)清空;
@end

@interface 识图选择视图 : 动作选择视图 {
    UIImageView *                            _预览;   // off 160
    参数行 *                                    _宽行;   // off 168
    参数行 *                                    _高行;   // off 176
    UISegmentedControl *                     _命中段;   // off 184
    UIButton *                               _跳转按钮;   // off 192
    命中路径编辑器 *                                _路径编辑器;   // off 200
    参数行 *                                    _命中长按行;   // off 208
    参数行 *                                    _命中滑时行;   // off 216
    参数行 *                                    _命中帧数行;   // off 224
    参数行 *                                    _命中时隔行;   // off 232
    UISegmentedControl *                     _判断段;   // off 240
    UISegmentedControl *                     _失败段;   // off 248
    UIButton *                               _失败跳按钮;   // off 256
    UISegmentedControl *                     _识失败段;   // off 264
    UIButton *                               _识失败跳按钮;   // off 272
}
@property (strong, nonatomic) UIImageView *预览;
@property (strong, nonatomic) 参数行 *宽行;
@property (strong, nonatomic) 参数行 *高行;
@property (strong, nonatomic) UISegmentedControl *命中段;
@property (strong, nonatomic) UIButton *跳转按钮;
@property (strong, nonatomic) 命中路径编辑器 *路径编辑器;
@property (strong, nonatomic) 参数行 *命中长按行;
@property (strong, nonatomic) 参数行 *命中滑时行;
@property (strong, nonatomic) 参数行 *命中帧数行;
@property (strong, nonatomic) 参数行 *命中时隔行;
@property (strong, nonatomic) UISegmentedControl *判断段;
@property (strong, nonatomic) UISegmentedControl *失败段;
@property (strong, nonatomic) UIButton *失败跳按钮;
@property (strong, nonatomic) UISegmentedControl *识失败段;
@property (strong, nonatomic) UIButton *识失败跳按钮;
- (BOOL)显示标记;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (void)同步起点参考;
- (id)新建标记视图;
- (void)构建参数;
- (double)面板附加高度;
- (void)布局参数区;
- (void)命中段变化:(id)命中段变化;
- (void)选择跳转目标;
- (void)刷新跳转按钮;
- (void)判断段变化:(id)判断段变化;
- (void)失败段变化:(id)失败段变化;
- (void)选择失败跳转;
- (void)刷新失败跳按钮;
- (void)识失败段变化:(id)识失败段变化;
- (void)选择识失败跳转;
- (void)刷新识失败跳按钮;
- (void)裁切模板;
- (void)刷新预览;
- (void)刷新区域行;
- (void)测试匹配;
- (UIImageView *)预览;
- (void)set预览:(UIImageView *)set预览;
- (参数行 *)宽行;
- (void)set宽行:(参数行 *)set宽行;
- (参数行 *)高行;
- (void)set高行:(参数行 *)set高行;
- (UISegmentedControl *)命中段;
- (void)set命中段:(UISegmentedControl *)set命中段;
- (UIButton *)跳转按钮;
- (void)set跳转按钮:(UIButton *)set跳转按钮;
- (命中路径编辑器 *)路径编辑器;
- (void)set路径编辑器:(命中路径编辑器 *)set路径编辑器;
- (参数行 *)命中长按行;
- (void)set命中长按行:(参数行 *)set命中长按行;
- (参数行 *)命中滑时行;
- (void)set命中滑时行:(参数行 *)set命中滑时行;
- (参数行 *)命中帧数行;
- (void)set命中帧数行:(参数行 *)set命中帧数行;
- (参数行 *)命中时隔行;
- (void)set命中时隔行:(参数行 *)set命中时隔行;
- (UISegmentedControl *)判断段;
- (void)set判断段:(UISegmentedControl *)set判断段;
- (UISegmentedControl *)失败段;
- (void)set失败段:(UISegmentedControl *)set失败段;
- (UIButton *)失败跳按钮;
- (void)set失败跳按钮:(UIButton *)set失败跳按钮;
- (UISegmentedControl *)识失败段;
- (void)set识失败段:(UISegmentedControl *)set识失败段;
- (UIButton *)识失败跳按钮;
- (void)set识失败跳按钮:(UIButton *)set识失败跳按钮;
@end

@interface 识字选择视图 : 动作选择视图 {
    UISegmentedControl *                     _类型段;   // off 160
    UITextField *                            _文本框;   // off 168
    UIButton *                               _条件按钮;   // off 176
    UITextField *                            _数值框;   // off 184
    UIButton *                               _框选按钮;   // off 192
    UIButton *                               _测试按钮;   // off 200
    UISegmentedControl *                     _成功段;   // off 208
    UIButton *                               _成功跳按钮;   // off 216
    UISegmentedControl *                     _失败段;   // off 224
    UIButton *                               _失败跳按钮;   // off 232
    参数行 *                                    _区域宽行;   // off 240
    参数行 *                                    _区域高行;   // off 248
    参数行 *                                    _成功长按行;   // off 256
    参数行 *                                    _成功滑时行;   // off 264
    参数行 *                                    _成功帧数行;   // off 272
    参数行 *                                    _成功时隔行;   // off 280
    命中路径编辑器 *                                _路径编辑器;   // off 288
    UISegmentedControl *                     _等待段;   // off 296
    参数行 *                                    _等待超时行;   // off 304
}
@property (strong, nonatomic) UISegmentedControl *类型段;
@property (strong, nonatomic) UITextField *文本框;
@property (strong, nonatomic) UIButton *条件按钮;
@property (strong, nonatomic) UITextField *数值框;
@property (strong, nonatomic) UIButton *框选按钮;
@property (strong, nonatomic) UIButton *测试按钮;
@property (strong, nonatomic) UISegmentedControl *成功段;
@property (strong, nonatomic) UIButton *成功跳按钮;
@property (strong, nonatomic) UISegmentedControl *失败段;
@property (strong, nonatomic) UIButton *失败跳按钮;
@property (weak, nonatomic) 参数行 *区域宽行;
@property (weak, nonatomic) 参数行 *区域高行;
@property (strong, nonatomic) 参数行 *成功长按行;
@property (strong, nonatomic) 参数行 *成功滑时行;
@property (strong, nonatomic) 参数行 *成功帧数行;
@property (strong, nonatomic) 参数行 *成功时隔行;
@property (strong, nonatomic) 命中路径编辑器 *路径编辑器;
@property (strong, nonatomic) UISegmentedControl *等待段;
@property (weak, nonatomic) 参数行 *等待超时行;
- (BOOL)显示标记;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (void)同步起点参考;
- (id)新建标记视图;
- (void)构建参数;
- (void)配段:(id)配段;
- (double)面板附加高度;
- (void)布局参数区;
- (id)新建输入框:(id)新建输入框;
- (void)收起键盘;
- (id)新建按钮;
- (void)类型段变化:(id)类型段变化;
- (void)文本框变化:(id)文本框变化;
- (void)数值框变化:(id)数值框变化;
- (void)选择条件;
- (void)刷新条件按钮;
- (void)成功段变化:(id)成功段变化;
- (void)失败段变化:(id)失败段变化;
- (void)等待段变化:(id)等待段变化;
- (void)选择成功跳转;
- (void)选择失败跳转;
- (void)刷新跳转按钮;
- (void)框选识别区;
- (void)测试识别;
- (UISegmentedControl *)类型段;
- (void)set类型段:(UISegmentedControl *)set类型段;
- (UITextField *)文本框;
- (void)set文本框:(UITextField *)set文本框;
- (UIButton *)条件按钮;
- (void)set条件按钮:(UIButton *)set条件按钮;
- (UITextField *)数值框;
- (void)set数值框:(UITextField *)set数值框;
- (UIButton *)框选按钮;
- (void)set框选按钮:(UIButton *)set框选按钮;
- (UIButton *)测试按钮;
- (void)set测试按钮:(UIButton *)set测试按钮;
- (UISegmentedControl *)成功段;
- (void)set成功段:(UISegmentedControl *)set成功段;
- (UIButton *)成功跳按钮;
- (void)set成功跳按钮:(UIButton *)set成功跳按钮;
- (UISegmentedControl *)失败段;
- (void)set失败段:(UISegmentedControl *)set失败段;
- (UIButton *)失败跳按钮;
- (void)set失败跳按钮:(UIButton *)set失败跳按钮;
- (参数行 *)区域宽行;
- (void)set区域宽行:(参数行 *)set区域宽行;
- (参数行 *)区域高行;
- (void)set区域高行:(参数行 *)set区域高行;
- (参数行 *)成功长按行;
- (void)set成功长按行:(参数行 *)set成功长按行;
- (参数行 *)成功滑时行;
- (void)set成功滑时行:(参数行 *)set成功滑时行;
- (参数行 *)成功帧数行;
- (void)set成功帧数行:(参数行 *)set成功帧数行;
- (参数行 *)成功时隔行;
- (void)set成功时隔行:(参数行 *)set成功时隔行;
- (命中路径编辑器 *)路径编辑器;
- (void)set路径编辑器:(命中路径编辑器 *)set路径编辑器;
- (UISegmentedControl *)等待段;
- (void)set等待段:(UISegmentedControl *)set等待段;
- (参数行 *)等待超时行;
- (void)set等待超时行:(参数行 *)set等待超时行;
@end

@interface 识色选择视图 : 动作选择视图 {
    UISegmentedControl *                     _模式段;   // off 160
    UIButton *                               _框选按钮;   // off 168
    UIButton *                               _取色按钮;   // off 176
    UIView *                                 _色点条;   // off 184
    UIButton *                               _测试按钮;   // off 192
    UISegmentedControl *                     _成功段;   // off 200
    UIButton *                               _成功跳按钮;   // off 208
    UISegmentedControl *                     _失败段;   // off 216
    UIButton *                               _失败跳按钮;   // off 224
    参数行 *                                    _区域宽行;   // off 232
    参数行 *                                    _区域高行;   // off 240
    参数行 *                                    _成功长按行;   // off 248
    参数行 *                                    _成功滑时行;   // off 256
    参数行 *                                    _成功帧数行;   // off 264
    参数行 *                                    _成功时隔行;   // off 272
    命中路径编辑器 *                                _路径编辑器;   // off 280
    UISegmentedControl *                     _等待段;   // off 288
    参数行 *                                    _等待超时行;   // off 296
}
@property (strong, nonatomic) UISegmentedControl *模式段;
@property (strong, nonatomic) UIButton *框选按钮;
@property (strong, nonatomic) UIButton *取色按钮;
@property (strong, nonatomic) UIView *色点条;
@property (strong, nonatomic) UIButton *测试按钮;
@property (strong, nonatomic) UISegmentedControl *成功段;
@property (strong, nonatomic) UIButton *成功跳按钮;
@property (strong, nonatomic) UISegmentedControl *失败段;
@property (strong, nonatomic) UIButton *失败跳按钮;
@property (weak, nonatomic) 参数行 *区域宽行;
@property (weak, nonatomic) 参数行 *区域高行;
@property (strong, nonatomic) 参数行 *成功长按行;
@property (strong, nonatomic) 参数行 *成功滑时行;
@property (strong, nonatomic) 参数行 *成功帧数行;
@property (strong, nonatomic) 参数行 *成功时隔行;
@property (strong, nonatomic) 命中路径编辑器 *路径编辑器;
@property (strong, nonatomic) UISegmentedControl *等待段;
@property (weak, nonatomic) 参数行 *等待超时行;
- (BOOL)显示标记;
- (id)hitTest:(CGPoint)hitTest withEvent:(id)withEvent;
- (void)同步起点参考;
- (id)新建标记视图;
- (void)构建参数;
- (void)配段:(id)配段;
- (double)面板附加高度;
- (void)布局参数区;
- (id)新建按钮;
- (void)模式段变化:(id)模式段变化;
- (void)成功段变化:(id)成功段变化;
- (void)失败段变化:(id)失败段变化;
- (void)选择成功跳转;
- (void)选择失败跳转;
- (void)等待段变化:(id)等待段变化;
- (void)刷新跳转按钮;
- (void)框选识别区;
- (void)选取色点;
- (void)刷新取色按钮;
- (void)刷新色点条;
- (void)测试识别;
- (UISegmentedControl *)模式段;
- (void)set模式段:(UISegmentedControl *)set模式段;
- (UIButton *)框选按钮;
- (void)set框选按钮:(UIButton *)set框选按钮;
- (UIButton *)取色按钮;
- (void)set取色按钮:(UIButton *)set取色按钮;
- (UIView *)色点条;
- (void)set色点条:(UIView *)set色点条;
- (UIButton *)测试按钮;
- (void)set测试按钮:(UIButton *)set测试按钮;
- (UISegmentedControl *)成功段;
- (void)set成功段:(UISegmentedControl *)set成功段;
- (UIButton *)成功跳按钮;
- (void)set成功跳按钮:(UIButton *)set成功跳按钮;
- (UISegmentedControl *)失败段;
- (void)set失败段:(UISegmentedControl *)set失败段;
- (UIButton *)失败跳按钮;
- (void)set失败跳按钮:(UIButton *)set失败跳按钮;
- (参数行 *)区域宽行;
- (void)set区域宽行:(参数行 *)set区域宽行;
- (参数行 *)区域高行;
- (void)set区域高行:(参数行 *)set区域高行;
- (参数行 *)成功长按行;
- (void)set成功长按行:(参数行 *)set成功长按行;
- (参数行 *)成功滑时行;
- (void)set成功滑时行:(参数行 *)set成功滑时行;
- (参数行 *)成功帧数行;
- (void)set成功帧数行:(参数行 *)set成功帧数行;
- (参数行 *)成功时隔行;
- (void)set成功时隔行:(参数行 *)set成功时隔行;
- (命中路径编辑器 *)路径编辑器;
- (void)set路径编辑器:(命中路径编辑器 *)set路径编辑器;
- (UISegmentedControl *)等待段;
- (void)set等待段:(UISegmentedControl *)set等待段;
- (参数行 *)等待超时行;
- (void)set等待超时行:(参数行 *)set等待超时行;
@end

@interface 试跑会话 : NSObject {
    BOOL                                     _原循环;   // off 8
    BOOL                                     _原开始;   // off 9
    BOOL                                     _原停止;   // off 10
    NSArray *                                _组开备份;   // off 16
    id                                       _结束时;   // off 24
    id                                       _观察者;   // off 32
}
@property (copy, nonatomic) NSArray *组开备份;
@property (nonatomic) BOOL 原循环;
@property (nonatomic) BOOL 原开始;
@property (nonatomic) BOOL 原停止;
@property (copy, nonatomic) id 结束时;
@property (strong, nonatomic) id 观察者;
- (void)收尾;
- (NSArray *)组开备份;
- (void)set组开备份:(NSArray *)set组开备份;
- (BOOL)原循环;
- (void)set原循环:(BOOL)set原循环;
- (BOOL)原开始;
- (void)set原开始:(BOOL)set原开始;
- (BOOL)原停止;
- (void)set原停止:(BOOL)set原停止;
- (id)结束时;
- (void)set结束时:(id)set结束时;
- (id)观察者;
- (void)set观察者:(id)set观察者;
@end

@interface 试跑选择视图 : NSObject {
    BOOL                                     _已默认全选;   // off 8
    id                                       _结束回调;   // off 16
    UITableView *                            _表;   // off 24
    UILabel *                                _标题;   // off 32
    UILabel *                                _副标题;   // off 40
    UIButton *                               _单选按钮;   // off 48
    UIButton *                               _连跑按钮;   // off 56
    NSArray *                                _动作;   // off 64
    NSMutableSet *                           _选中;   // off 72
    动作组模型 *                                  _组;   // off 80
}
@property (strong, nonatomic) UITableView *表;
@property (strong, nonatomic) UILabel *标题;
@property (strong, nonatomic) UILabel *副标题;
@property (strong, nonatomic) UIButton *单选按钮;
@property (strong, nonatomic) UIButton *连跑按钮;
@property (copy, nonatomic) NSArray *动作;
@property (strong, nonatomic) NSMutableSet *选中;
@property (strong, nonatomic) 动作组模型 *组;
@property (nonatomic) BOOL 已默认全选;
@property (copy, nonatomic) id 结束回调;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (void)设置组:(id)设置组;
- (id)initWithFrame:(CGRect)initWithFrame;
- (void)构建;
- (void)刷新;
- (id)当前组;
- (id)选中动作按序;
- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection;
- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath;
- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath;
- (void)全选;
- (void)试跑选中;
- (void)从首项连跑;
- (void)执行试跑:(id)执行试跑 说明:(id)说明;
- (void)关闭自己;
- (id)结束回调;
- (void)set结束回调:(id)set结束回调;
- (UITableView *)表;
- (void)set表:(UITableView *)set表;
- (UILabel *)标题;
- (void)set标题:(UILabel *)set标题;
- (UILabel *)副标题;
- (void)set副标题:(UILabel *)set副标题;
- (UIButton *)单选按钮;
- (void)set单选按钮:(UIButton *)set单选按钮;
- (UIButton *)连跑按钮;
- (void)set连跑按钮:(UIButton *)set连跑按钮;
- (NSArray *)动作;
- (void)set动作:(NSArray *)set动作;
- (NSMutableSet *)选中;
- (void)set选中:(NSMutableSet *)set选中;
- (动作组模型 *)组;
- (void)set组:(动作组模型 *)set组;
- (BOOL)已默认全选;
- (void)set已默认全选:(BOOL)set已默认全选;
@end

@interface 输入弹窗视图 : NSObject {
    UITextField *                            _输入框;   // off 8
    id                                       _回调;   // off 16
}
- (void)取消;
- (void)完成输入;
- (void)收起;
- (id)描述;
@end

@interface 输入选择视图 : 动作选择视图 {
    UISegmentedControl *                     _来源段;   // off 160
    UISegmentedControl *                     _暂存段;   // off 168
    UISegmentedControl *                     _模式段;   // off 176
    UITextView *                             _文本框;   // off 184
    UILabel *                                _占位标签;   // off 192
    UILabel *                                _来源提示;   // off 200
    UILabel *                                _清空标签;   // off 208
    UISwitch *                               _清空开关;   // off 216
    UILabel *                                _回车标签;   // off 224
    UISwitch *                               _回车开关;   // off 232
}
@property (strong, nonatomic) UISegmentedControl *来源段;
@property (strong, nonatomic) UISegmentedControl *暂存段;
@property (strong, nonatomic) UISegmentedControl *模式段;
@property (strong, nonatomic) UITextView *文本框;
@property (strong, nonatomic) UILabel *占位标签;
@property (strong, nonatomic) UILabel *来源提示;
@property (strong, nonatomic) UILabel *清空标签;
@property (strong, nonatomic) UISwitch *清空开关;
@property (strong, nonatomic) UILabel *回车标签;
@property (strong, nonatomic) UISwitch *回车开关;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (BOOL)显示标记;
- (id)新建标记视图;
- (void)构建参数;
- (double)面板附加高度;
- (void)布局参数区;
- (void)刷新来源显隐;
- (void)来源段变化:(id)来源段变化;
- (void)暂存段变化:(id)暂存段变化;
- (void)模式段变化:(id)模式段变化;
- (void)清空开关变化:(id)清空开关变化;
- (void)回车开关变化:(id)回车开关变化;
- (void)配段:(id)配段;
- (id)行标签:(id)行标签;
- (id)行开关:(BOOL)行开关 动作:(SEL)动作;
- (void)收起键盘;
- (void)textViewDidChange:(id)textViewDidChange;
- (UISegmentedControl *)来源段;
- (void)set来源段:(UISegmentedControl *)set来源段;
- (UISegmentedControl *)暂存段;
- (void)set暂存段:(UISegmentedControl *)set暂存段;
- (UISegmentedControl *)模式段;
- (void)set模式段:(UISegmentedControl *)set模式段;
- (UITextView *)文本框;
- (void)set文本框:(UITextView *)set文本框;
- (UILabel *)占位标签;
- (void)set占位标签:(UILabel *)set占位标签;
- (UILabel *)来源提示;
- (void)set来源提示:(UILabel *)set来源提示;
- (UILabel *)清空标签;
- (void)set清空标签:(UILabel *)set清空标签;
- (UISwitch *)清空开关;
- (void)set清空开关:(UISwitch *)set清空开关;
- (UILabel *)回车标签;
- (void)set回车标签:(UILabel *)set回车标签;
- (UISwitch *)回车开关;
- (void)set回车开关:(UISwitch *)set回车开关;
@end

@interface 配置导入视图 : NSObject {
    UITableView *                            _表;   // off 8
    NSMutableArray *                         _文件列表;   // off 16
}
@property (strong, nonatomic) UITableView *表;
@property (strong, nonatomic) NSMutableArray *文件列表;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (void)构建;
- (void)显示;
- (void)关闭;
- (NSMutableArray *)文件列表;
- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection;
- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath;
- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)didSelectRowAtIndexPath;
- (BOOL)tableView:(id)tableView canEditRowAtIndexPath:(id)canEditRowAtIndexPath;
- (void)tableView:(id)tableView commitEditingStyle:(long long)commitEditingStyle forRowAtIndexPath:(id)forRowAtIndexPath;
- (UITableView *)表;
- (void)set表:(UITableView *)set表;
- (void)set文件列表:(NSMutableArray *)set文件列表;
@end

@interface 长按选择视图 : 动作选择视图 {
}
- (void)构建参数;
- (BOOL)含时长字段;
- (double)面板附加高度;
@end

@interface 问题反馈视图 : NSObject {
    UISegmentedControl *                     _页签;   // off 8
    UIView *                                 _提交页;   // off 16
    UIView *                                 _工单页;   // off 24
    UISegmentedControl *                     _分类段;   // off 32
    UITextField *                            _主题输入;   // off 40
    UITextView *                             _描述输入;   // off 48
    UILabel *                                _描述占位;   // off 56
    UILabel *                                _字数提示;   // off 64
    UITextField *                            _联系方式输入;   // off 72
    UIButton *                               _取消按钮;   // off 80
    UIButton *                               _提交按钮;   // off 88
    UILabel *                                _备用提示;   // off 96
    UIScrollView *                           _提交滚动;   // off 104
    UILabel *                                _分类标签;   // off 112
    UILabel *                                _主题标签;   // off 120
    UILabel *                                _描述标签;   // off 128
    UILabel *                                _联系标签;   // off 136
    UITableView *                            _列表;   // off 144
    UILabel *                                _列表空态;   // off 152
    NSArray *                                _工单;   // off 160
    UIRefreshControl *                       _刷新;   // off 168
    UITextField *                            _工单号输入;   // off 176
    UIButton *                               _查询按钮;   // off 184
    NSString *                               _查询中的号;   // off 192
    double                                   _键盘位移;   // off 200
}
@property (strong, nonatomic) UISegmentedControl *页签;
@property (strong, nonatomic) UIView *提交页;
@property (strong, nonatomic) UIView *工单页;
@property (strong, nonatomic) UISegmentedControl *分类段;
@property (strong, nonatomic) UITextField *主题输入;
@property (strong, nonatomic) UITextView *描述输入;
@property (strong, nonatomic) UILabel *描述占位;
@property (strong, nonatomic) UILabel *字数提示;
@property (strong, nonatomic) UITextField *联系方式输入;
@property (strong, nonatomic) UIButton *取消按钮;
@property (strong, nonatomic) UIButton *提交按钮;
@property (strong, nonatomic) UILabel *备用提示;
@property (strong, nonatomic) UIScrollView *提交滚动;
@property (strong, nonatomic) UILabel *分类标签;
@property (strong, nonatomic) UILabel *主题标签;
@property (strong, nonatomic) UILabel *描述标签;
@property (strong, nonatomic) UILabel *联系标签;
@property (strong, nonatomic) UITableView *列表;
@property (strong, nonatomic) UILabel *列表空态;
@property (strong, nonatomic) NSArray *工单;
@property (strong, nonatomic) UIRefreshControl *刷新;
@property (strong, nonatomic) UITextField *工单号输入;
@property (strong, nonatomic) UIButton *查询按钮;
@property (copy, nonatomic) NSString *查询中的号;
@property (nonatomic) double 键盘位移;
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (void)显示;
- (void)关闭;
- (void)layoutSubviews;
- (void)dealloc;
- (void)构建;
- (void)构建提交页;
- (void)构建工单页;
- (void)切页签;
- (id)键盘工具栏;
- (void)收起键盘;
- (void)点空白关闭键盘;
- (BOOL)gestureRecognizer:(id)gestureRecognizer shouldReceiveTouch:(id)shouldReceiveTouch;
- (void)键盘显示:(id)键盘显示;
- (void)键盘隐藏:(id)键盘隐藏;
- (void)恢复位移;
- (id)添加标签:(id)添加标签 y:(double)y 到:(id)到;
- (id)添加输入框WithY:(double)添加输入框WithY placeholder:(id)placeholder 到:(id)到;
- (void)textViewDidChange:(id)textViewDidChange;
- (void)提交;
- (void)提交查询;
- (void)上报单条已读到服务端:(id)上报单条已读到服务端;
- (void)拉取工单;
- (void)上报已读到服务端;
- (id)URL编码:(id)URL编码;
- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)numberOfRowsInSection;
- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)cellForRowAtIndexPath;
- (id)状态文本:(long long)状态文本;
- (id)渲染工单:(id)渲染工单;
- (UISegmentedControl *)页签;
- (void)set页签:(UISegmentedControl *)set页签;
- (UIView *)提交页;
- (void)set提交页:(UIView *)set提交页;
- (UIView *)工单页;
- (void)set工单页:(UIView *)set工单页;
- (UISegmentedControl *)分类段;
- (void)set分类段:(UISegmentedControl *)set分类段;
- (UITextField *)主题输入;
- (void)set主题输入:(UITextField *)set主题输入;
- (UITextView *)描述输入;
- (void)set描述输入:(UITextView *)set描述输入;
- (UILabel *)描述占位;
- (void)set描述占位:(UILabel *)set描述占位;
- (UILabel *)字数提示;
- (void)set字数提示:(UILabel *)set字数提示;
- (UITextField *)联系方式输入;
- (void)set联系方式输入:(UITextField *)set联系方式输入;
- (UIButton *)取消按钮;
- (void)set取消按钮:(UIButton *)set取消按钮;
- (UIButton *)提交按钮;
- (void)set提交按钮:(UIButton *)set提交按钮;
- (UILabel *)备用提示;
- (void)set备用提示:(UILabel *)set备用提示;
- (UIScrollView *)提交滚动;
- (void)set提交滚动:(UIScrollView *)set提交滚动;
- (UILabel *)分类标签;
- (void)set分类标签:(UILabel *)set分类标签;
- (UILabel *)主题标签;
- (void)set主题标签:(UILabel *)set主题标签;
- (UILabel *)描述标签;
- (void)set描述标签:(UILabel *)set描述标签;
- (UILabel *)联系标签;
- (void)set联系标签:(UILabel *)set联系标签;
- (UITableView *)列表;
- (void)set列表:(UITableView *)set列表;
- (UILabel *)列表空态;
- (void)set列表空态:(UILabel *)set列表空态;
- (NSArray *)工单;
- (void)set工单:(NSArray *)set工单;
- (UIRefreshControl *)刷新;
- (void)set刷新:(UIRefreshControl *)set刷新;
- (UITextField *)工单号输入;
- (void)set工单号输入:(UITextField *)set工单号输入;
- (UIButton *)查询按钮;
- (void)set查询按钮:(UIButton *)set查询按钮;
- (NSString *)查询中的号;
- (void)set查询中的号:(NSString *)set查询中的号;
- (double)键盘位移;
- (void)set键盘位移:(double)set键盘位移;
@end

@interface 颜色取样视图 : NSObject {
    UIImage *                                _截图;   // off 8
    UIView *                                 _框;   // off 16
    NSMutableArray *                         _点组;   // off 24
    NSMutableArray *                         _点标;   // off 32
    UIView *                                 _按钮条;   // off 40
    id                                       _完成;   // off 48
    id                                       _取消;   // off 56
    long long                                _拖动序号;   // off 64
    CGPoint                                  _拖动偏移;   // off 72
}
@property (atomic, readonly) unsigned long long hash;
@property (atomic, readonly) Class superclass;
@property (copy, atomic, readonly) NSString *description;
@property (copy, atomic, readonly) NSString *debugDescription;
- (id)initWithFrame:(CGRect)initWithFrame 截图:(id)截图 区域:(CGRect)区域 点组:(id)点组;
- (CGPoint)点位:(id)点位;
- (void)刷新点标;
- (BOOL)gestureRecognizer:(id)gestureRecognizer shouldReceiveTouch:(id)shouldReceiveTouch;
- (void)拖按钮条:(id)拖按钮条;
- (void)点按:(id)点按;
- (void)清空色点;
- (void)拖动色点:(id)拖动色点;
- (void)确认取样;
- (void)取消取样;
@end
