.class public Lcom/taobao/android/dinamicx/AliDinamicX;
.super Ljava/lang/Object;
.source "AliDinamicX.java"


# static fields
.field private static init:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;Z)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/taobao/android/dinamicx/AliDinamicX;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 24
    new-instance v0, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withWebImageInterface(Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 25
    new-instance v0, Lcom/taobao/android/dinamicx/DXAppMonitorImpl;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXAppMonitorImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withAppMonitor(Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 26
    new-instance v0, Lcom/taobao/android/dinamicx/DXRemoteLogImpl;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXRemoteLogImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withRemoteDebugLog(Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 27
    new-instance v0, Lcom/taobao/android/dinamicx/DXHttpLoader;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXHttpLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDxDownloader(Lcom/taobao/android/dinamicx/template/download/IDXDownloader;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 28
    new-instance v0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withUmbrellaImpl(Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    :cond_1
    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, v0, p2}, Lcom/taobao/android/dinamicx/AliDinamicX;->init(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;ZZ)V

    .line 33
    sput-boolean v0, Lcom/taobao/android/dinamicx/AliDinamicX;->init:Z

    return-void
.end method

.method private static init(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;ZZ)V
    .locals 3

    const-string v0, "DinamicException"

    if-eqz p2, :cond_0

    .line 57
    :try_start_0
    invoke-static {p0, p3}, Lcom/taobao/android/dinamicx/AliDinamicX;->initV2(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "AliDinamicX v2 init failed"

    .line 59
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_7

    .line 68
    :try_start_1
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDebug(Z)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    .line 69
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->build()Lcom/taobao/android/dinamicx/DXGlobalInitConfig;

    move-result-object p2

    const/4 p3, 0x0

    .line 76
    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 77
    new-instance p3, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/AliDXImageViewImpl;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withWebImageInterface(Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    const/4 p3, 0x1

    .line 84
    :cond_1
    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    if-nez v1, :cond_2

    .line 85
    new-instance p3, Lcom/taobao/android/dinamicx/DXAppMonitorImpl;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/DXAppMonitorImpl;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withAppMonitor(Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    const/4 p3, 0x1

    .line 92
    :cond_2
    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    if-nez v1, :cond_3

    .line 93
    new-instance p3, Lcom/taobao/android/dinamicx/DXRemoteLogImpl;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/DXRemoteLogImpl;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withRemoteDebugLog(Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    const/4 p3, 0x1

    .line 100
    :cond_3
    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    if-nez v1, :cond_4

    .line 101
    new-instance p3, Lcom/taobao/android/dinamicx/DXHttpLoader;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/DXHttpLoader;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withDxDownloader(Lcom/taobao/android/dinamicx/template/download/IDXDownloader;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    const/4 p3, 0x1

    .line 108
    :cond_4
    iget-object v1, p2, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    if-nez v1, :cond_5

    .line 109
    new-instance p3, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->withUmbrellaImpl(Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;

    const/4 p3, 0x1

    :cond_5
    if-eqz p3, :cond_6

    .line 114
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->build()Lcom/taobao/android/dinamicx/DXGlobalInitConfig;

    move-result-object p2

    .line 117
    :cond_6
    invoke-static {p0, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 119
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "AliDinamicX registerView failed"

    .line 123
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static initV2(Landroid/content/Context;Z)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/android/dinamic/Dinamic;->init(Landroid/content/Context;Z)V

    .line 135
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/dinamicx/HttpLoader;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/HttpLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    .line 139
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/dinamicx/AliImageViewImpl;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/AliImageViewImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerImageInterface(Lcom/taobao/android/dinamic/constructor/DImageViewConstructor$DXWebImageInterface;)V

    .line 143
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/dinamicx/AppMonitorImpl;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/AppMonitorImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerAppMonitor(Lcom/taobao/android/dinamic/dinamic/DinamicAppMonitor;)V

    .line 147
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object p0

    new-instance p1, Lcom/taobao/android/dinamicx/RemoteLogImpl;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/RemoteLogImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerRemoteDebugLog(Lcom/taobao/android/dinamic/log/IDinamicRemoteDebugLog;)V

    return-void
.end method

.method public static initV3(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;Z)V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/taobao/android/dinamicx/AliDinamicX;->init:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, v0, p2}, Lcom/taobao/android/dinamicx/AliDinamicX;->init(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;ZZ)V

    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/taobao/android/dinamicx/AliDinamicX;->init:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
