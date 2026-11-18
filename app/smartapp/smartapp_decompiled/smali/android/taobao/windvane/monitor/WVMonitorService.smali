.class public Landroid/taobao/windvane/monitor/WVMonitorService;
.super Ljava/lang/Object;
.source "WVMonitorService.java"


# static fields
.field private static configMonitorInterface:Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

.field private static errorMonitor:Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

.field private static jsBridgeMonitor:Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

.field private static packageMonitorInterface:Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

.field private static performanceMonitor:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

.field private static wvMonitorInterface:Landroid/taobao/windvane/monitor/WVMonitorInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;
    .locals 1

    .line 22
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->configMonitorInterface:Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    return-object v0
.end method

.method public static getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;
    .locals 1

    .line 38
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->errorMonitor:Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    return-object v0
.end method

.method public static getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;
    .locals 1

    .line 46
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->jsBridgeMonitor:Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    return-object v0
.end method

.method public static getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;
    .locals 1

    .line 54
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->packageMonitorInterface:Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    return-object v0
.end method

.method public static getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;
    .locals 1

    .line 30
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->performanceMonitor:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    return-object v0
.end method

.method public static getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;
    .locals 1

    .line 66
    sget-object v0, Landroid/taobao/windvane/monitor/WVMonitorService;->wvMonitorInterface:Landroid/taobao/windvane/monitor/WVMonitorInterface;

    return-object v0
.end method

.method public static registerConfigMonitor(Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;)V
    .locals 0

    .line 26
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->configMonitorInterface:Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerErrorMonitor(Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;)V
    .locals 0

    .line 42
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->errorMonitor:Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerJsBridgeMonitor(Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;)V
    .locals 0

    .line 50
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->jsBridgeMonitor:Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPackageMonitorInterface(Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;)V
    .locals 0

    .line 58
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->packageMonitorInterface:Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPerformanceMonitor(Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;)V
    .locals 0

    .line 34
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->performanceMonitor:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerWVMonitor(Landroid/taobao/windvane/monitor/WVMonitorInterface;)V
    .locals 0

    .line 62
    sput-object p0, Landroid/taobao/windvane/monitor/WVMonitorService;->wvMonitorInterface:Landroid/taobao/windvane/monitor/WVMonitorInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
