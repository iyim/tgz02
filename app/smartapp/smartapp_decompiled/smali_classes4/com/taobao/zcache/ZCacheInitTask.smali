.class public Lcom/taobao/zcache/ZCacheInitTask;
.super Ljava/lang/Object;
.source "ZCacheInitTask.java"


# static fields
.field private static Instance:Lcom/taobao/zcache/ZCacheInitTask;


# instance fields
.field private inited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/zcache/ZCacheInitTask;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/taobao/zcache/ZCacheInitTask;
    .locals 2

    .line 28
    sget-object v0, Lcom/taobao/zcache/ZCacheInitTask;->Instance:Lcom/taobao/zcache/ZCacheInitTask;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/taobao/zcache/ZCacheInitTask;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/ZCacheInitTask;->Instance:Lcom/taobao/zcache/ZCacheInitTask;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/taobao/zcache/ZCacheInitTask;

    invoke-direct {v1}, Lcom/taobao/zcache/ZCacheInitTask;-><init>()V

    sput-object v1, Lcom/taobao/zcache/ZCacheInitTask;->Instance:Lcom/taobao/zcache/ZCacheInitTask;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/zcache/ZCacheInitTask;->Instance:Lcom/taobao/zcache/ZCacheInitTask;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheInitTask;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVAppParamsManager;->isParamsSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheInitTask;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ZCache"

    const-string v1, "\u672a\u521d\u59cb\u5316ZCache so\uff0c\u9700\u8981\u5148\u521d\u59cb\u5316"

    .line 43
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez v1, :cond_1

    .line 46
    invoke-static {}, Lcom/taobao/tao/Globals;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 48
    :cond_1
    invoke-static {}, Lcom/taobao/zcache/global/ZCacheGlobal;->instance()Lcom/taobao/zcache/global/ZCacheGlobal;

    move-result-object v1

    sget-object v3, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v1, v3}, Lcom/taobao/zcache/global/ZCacheGlobal;->setContext(Landroid/content/Context;)V

    .line 49
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    invoke-static {}, Lcom/taobao/zcache/ZCacheSDK;->initSub()V

    return-void

    .line 55
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/WVAppParamsManager;->getParams()Landroid/taobao/windvane/config/WVAppParams;

    move-result-object v1

    .line 56
    new-instance v3, Lcom/taobao/zcache/ZCacheParams;

    invoke-direct {v3}, Lcom/taobao/zcache/ZCacheParams;-><init>()V

    .line 57
    iget-object v4, v1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "]"

    if-nez v4, :cond_4

    .line 60
    :try_start_1
    iget-object v4, v1, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    iput-object v4, v3, Lcom/taobao/zcache/ZCacheParams;->appKey:Ljava/lang/String;

    .line 61
    iget-object v4, v1, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    iget-object v1, v1, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    iput-object v1, v3, Lcom/taobao/zcache/ZCacheParams;->appVersion:Ljava/lang/String;

    .line 65
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    iput-object v1, v3, Lcom/taobao/zcache/ZCacheParams;->context:Landroid/content/Context;

    .line 66
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/config/EnvEnum;->getKey()I

    move-result v1

    iput v1, v3, Lcom/taobao/zcache/ZCacheParams;->env:I

    .line 67
    invoke-static {v3}, Lcom/taobao/zcache/ZCacheSDK;->init(Lcom/taobao/zcache/ZCacheParams;)V

    .line 71
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    move-result-object v3

    sget v4, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    const-string v1, "init: ZCache\u521d\u59cb\u5316\u6210\u529f\uff0cWVPackageAppWebViewClientFilter\u6ce8\u518c\u6210\u529f"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appVersion cannot empty, par ams is set = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/WVAppParamsManager;->isParamsSet()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appKey cannot empty, params is set = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/WVAppParamsManager;->getInstance()Landroid/taobao/windvane/config/WVAppParamsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/WVAppParamsManager;->isParamsSet()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/taobao/zcache/ZCacheInitTask;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
