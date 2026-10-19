# 懒触 v1.0.35 · 逆向还原工程

`懒触连点器可逆向.dylib`（arm64, 776,432 B, md5 `5c0ee4f116d04c205a3091cb00ec52e4`）
的完整逆向产物：**接口 100% 还原 + 核心逻辑按反汇编重建 + 全量符号化汇编留档**。

目的是以后想改这个工具时不用再从二进制里抠 —— 类、方法、ivar、字符串、常量、
每个方法的反汇编都在仓库里，改哪儿看哪儿。

---

## 一、目录

```
lanchu/
├── src/
│   ├── LZLanchu.h        54 个类的 @interface（生成，含 ivar + 偏移 + 属性 + 方法签名）
│   ├── LZRuntime.h       私有 IOHID 符号声明、日志宏
│   ├── LZCore.m          HID 手指事件合成（dlsym 私有符号，不依赖私有 tbd）
│   ├── LZEntry.m         入口，逐条还原自 __mod_init_func(0x9890) / 线程体(0x9994)
│   ├── CQ*.m             核心类实现（配置/引擎/注入/录制/识别/统计/浮窗）
│   └── <中文类名>.m        UI 类实现
├── tools/                逆向工具链（可复跑）
│   ├── m1_header.py      Mach-O 段表 / load command
│   ├── m2_objc.py        ObjC 元数据 → objc.txt / objc.json
│   ├── m3_disasm.py      基础反汇编
│   ├── m4_symbolic.py    符号化反汇编（解析 SEL / 类引用 / CFSTR / 外部符号）
│   └── m5_gen.py         由元数据生成 src/ 下的头与实现骨架
├── analysis/
│   ├── objc.txt          2458 行，全部类的 ivar / 属性 / 方法 + imp 地址
│   ├── objc.json         同上，机器可读
│   ├── header.json       段表
│   └── all.asm           5.5 MB，1418 个方法的符号化反汇编（不在 git 里，本地生成）
└── Makefile / control / entitlements.plist / Lanchu.plist   Theos 工程
```

## 二、还原度（诚实口径）

| 项 | 数量 | 状态 |
|---|---|---|
| 类 | 54 | @interface 100% 还原（含 ivar 名/类型/偏移、属性、协议） |
| 方法条目 | 1418 | 签名 100% 还原（类型编码反解） |
| 方法体 · 自动还原 | 372 | 属性存取器，按「读/写哪个 ivar」直接生成 `return _x;` / `_x = v;` |
| 方法体 · 手工逐条还原 | 2 | `抖动后的点:开启:`、`HID坐标:`（每条汇编写了依据） |
| 方法体 · 骨架 + 汇编 | 1046 | 空实现，方法体内附前 24 条符号化汇编 + 指向 `all.asm` 的定位 |

> 1046 个未还原的绝大多数是 UI 类（悬浮球 / 各种选择视图 / 参数面板）的布局代码。
> 这类代码逐条还原价值低（想改 UI 直接重写更快），所以保留骨架。

## 三、工具链怎么用

```bash
# 换一份新的 dylib：改 tools/m4_symbolic.py 顶部的 PATH，然后
python tools/m1_header.py            # 段表
python tools/m2_objc.py              # → analysis/objc.txt
python tools/m4_symbolic.py --dumpall # → analysis/all.asm
python tools/m5_gen.py               # → src/  （会覆盖手改内容！见下方注意）

# 查任意方法
python tools/m4_symbolic.py CQTaskEngine 跑点击
python tools/m4_symbolic.py --addr 0x19124
python tools/m4_symbolic.py --all CQTouchInjector     # 整类导出到 analysis/asm_<类>.txt
```

`m4` 的输出长这样（可直接读）：

```
0x019124  lbl   _objc_retainAutoreleasedReturnValue
0x019130  bl    #0x6f740   ; [x0 stringByAppendingPathExtension:]
0x019138  bl    #0x6acc0   ; [x0 floatValue]
0x019140  bl    #0x6a120   ; [NSArray arrayWithObjects:count:]
```

**注意**：`m5_gen.py` 会整目录重写 `src/*.m`。手工还原过的方法会被覆盖，
所以要批量重跑生成器时，先把 `src/` 里手改过的文件另存（或只对新版二进制跑，
再把手工实现贴回去）。

## 四、想改功能，去哪找

| 想改什么 | 看哪个类 / 方法 |
|---|---|
| 点击怎么打的 | `CQTouchInjector` `点击:` `点击:次数:偏移随机:间隔:` `派发:按下:起始索引:` `派发HID坐标:按下:起始索引:反馈点:说明:` |
| 长按 / 滑动 | `长按:时长:` `滑动:to:时长:帧数:随机点数:` `自由滑动:to:长按:时长:帧数:随机点数:` `连续滑动:...` |
| 坐标换算不对 | `HID坐标:` + `坐标量程`（0 系数 / 1 归一化 / 2 原样 / 3 百分比×屏幕） |
| 点击抖动 | `抖动后的点:开启:`（乘法抖动，`_抖动下限`~`_抖动上限`） |
| 动作怎么执行 | `CQTaskEngine` `主循环` `执行单个:` `跑点击:` `跑识图:` `跑识字:` `跑识色:` `跑取字:` `跑循环:` `跑等待:` `跑录制:` |
| 配置存哪 | `CQStore` `数据目录` `归档路径` `保存` `载入` |
| 录制 | `CQRecorder` `开始` `停止` `处理事件:` |
| 找图 / OCR | `CQTemplateMatcher`（Vision）、`CQTextOCR`、`CQScreenshot`、`CQOCR行` |
| 悬浮球 / 面板 | `CQOverlay` `悬浮球` `自定义弹窗` `设置视图` |
| 统计 | `CQStats` `记录组:名称:成功:耗时:` `累加表:组ID:名称:成功:耗时:时间:` |
| 授权 / 设备指纹 | 搜 `lanchu.license` `lanchu.device.seed` `lanchu-stable` `lanchu-session` |

## 五、逆向时确认的关键事实

- **注入通道**：只用了标准 IOHID 私有函数（`IOHIDEventSystemClientCreate/DispatchEvent`、
  `IOHIDEventCreateDigitizerEvent/FingerEvent`、`AppendEvent`、`SetIntegerValue/SetFloatValue/SetSenderID`），
  没有私有 SpringBoard 服务、没有 XPC 后门。
- **坐标量程 `坐标量程`**：0=按实测系数缩放，1=归一化(0~1)，2=原样透传，3=百分比×屏幕尺寸。
- **抖动**：`下限 + rand(0~1)×(上限-下限)` 作为**乘数**，不是加偏移。
- **唯一外联**：`https://mm64.cn/lanchu`（授权 + 反馈），没有第二个域名。
- **数据目录**：`/var/mobile/Library/lanchu/`（`seed` 设备种子、`fb_read`），统计 `CQstats.plist`。
- **通知名**：`CQTaskEngineDidStartNotification` / `DidStop` / `Step`。
- **串行队列**：`com.lanchu.task.execution`（任务）、`com.lanchu.touch.concurrent`（并发点击）。
- **入口**：`__mod_init_func → 0x9890`，起一条 `QOS_CLASS_USER_INITIATED` 分离线程，
  最多等 200×50ms 等 `UIApplication sharedApplication`，再 300ms 后回主队列安装浮窗。

## 六、编译

```bash
# 本地（需要 Theos）
make package FINALPACKAGE=1

# 没有 Mac：GitHub Actions
node ../gh_deploy.js --src=lanchu --repo=lanchu
```

产物 `Lanchu.dylib`（arm64 + arm64e），注入方式与原版一致（TrollFools / ESign 注入目标 App 重签）。
HID 通道需要宿主带 `entitlements.plist` 里的 `com.apple.private.hid.client.event-dispatch`，
没有就只能走进程内通道。
