.class public Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVNativeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private detectYearClass(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2

    .line 42
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/utils/YearClass;->get(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceYear"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method private getCurrentUsage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6

    .line 66
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 67
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/utils/DeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 71
    invoke-static {}, Landroid/taobao/windvane/jsbridge/utils/DeviceInfo;->getProcessCpuRate()F

    move-result v1

    .line 72
    sget-object v4, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v4}, Landroid/taobao/windvane/jsbridge/utils/DeviceInfo;->getFreeMemorySize(Landroid/content/Context;)J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-float v2, v4

    sub-float v2, v0, v2

    div-float v3, v2, v0

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "cpuUsage"

    invoke-virtual {p1, v4, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "memoryUsage"

    invoke-virtual {p1, v3, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "totalMemory"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "usedMemory"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method private getPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7

    const-string p1, "memScore"

    const-string v0, "cpuScore"

    const-string v1, "deviceScore"

    .line 99
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 101
    :try_start_0
    invoke-static {}, Lcom/taobao/application/common/ApmManager;->getAppPreferences()Lcom/taobao/application/common/IAppPreferences;

    move-result-object v3

    const-string v4, "isApm"

    const/4 v5, 0x0

    .line 102
    invoke-interface {v3, v4, v5}, Lcom/taobao/application/common/IAppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const/4 v4, -0x1

    .line 106
    invoke-interface {v3, v1, v4}, Lcom/taobao/application/common/IAppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 107
    invoke-interface {v3, v0, v4}, Lcom/taobao/application/common/IAppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 108
    invoke-interface {v3, p1, v4}, Lcom/taobao/application/common/IAppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {v2, v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method private isSimulator(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 84
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 86
    :try_start_0
    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;->isSimulator()Z

    move-result v0

    const-string v1, "WVNativeDetector"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current phone is simulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isSimulator"

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "errMsg"

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    const-string v0, "getDeviceYear"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->detectYearClass(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string v0, "getCurrentUsage"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-direct {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->getCurrentUsage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const-string v0, "getModelInfo"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->getModelInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v0, "isSimulator"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-direct {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->isSimulator(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_3
    const-string v0, "getPerformanceInfo"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    invoke-direct {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;->getPerformanceInfo(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getModelInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "brand"

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method
