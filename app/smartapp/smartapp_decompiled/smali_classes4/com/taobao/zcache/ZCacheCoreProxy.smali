.class final Lcom/taobao/zcache/ZCacheCoreProxy;
.super Ljava/lang/Object;
.source "ZCacheCoreProxy.java"

# interfaces
.implements Lcom/taobao/zcache/core/IZCacheProxy;


# static fields
.field private static _isMainProcess:Z = false

.field private static zcacheCore:Lcom/taobao/zcache/core/IZCacheCore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static core()Lcom/taobao/zcache/core/IZCacheCore;
    .locals 1

    .line 76
    sget-object v0, Lcom/taobao/zcache/ZCacheCoreProxy;->zcacheCore:Lcom/taobao/zcache/core/IZCacheCore;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 62
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 64
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/taobao/zcache/ZCacheCoreProxy;->_isMainProcess:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 36
    sget-object v0, Lcom/taobao/zcache/ZCacheCoreProxy;->zcacheCore:Lcom/taobao/zcache/core/IZCacheCore;

    if-nez v0, :cond_1

    .line 37
    invoke-static {p0}, Lcom/taobao/zcache/ZCacheCoreProxy;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/taobao/zcache/ZCacheCoreProxy;->_isMainProcess:Z

    .line 39
    sget-boolean v1, Lcom/taobao/zcache/ZCacheCoreProxy;->_isMainProcess:Z

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"event\":\"setContext\",\"errorCode\":\"101\",\"errorMsg\":\"PackageName \\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\" is not equal to main process name \\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\\"\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZCache/Setup"

    .line 42
    invoke-static {v1, v0}, Lcom/taobao/zcache/log/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    new-instance v0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;

    new-instance v1, Lcom/taobao/zcache/ZCacheCoreProxy;

    invoke-direct {v1}, Lcom/taobao/zcache/ZCacheCoreProxy;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;-><init>(Lcom/taobao/zcache/core/IZCacheProxy;Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/zcache/ZCacheCoreProxy;->zcacheCore:Lcom/taobao/zcache/core/IZCacheCore;

    :cond_1
    return-void
.end method


# virtual methods
.method public commitMonitor(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 151
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/taobao/zcache/Monitor;->commitMonitor(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 152
    invoke-static {}, Lcom/taobao/zcache/ZCacheModuleManager;->getIntelligent()Lcom/taobao/zcache/intelligent/IIntelligent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "ZCache.AppVisit"

    .line 154
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v0, p2, p3}, Lcom/taobao/zcache/intelligent/IIntelligent;->commitFirstVisit(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v1, "ZCache.AppUpdate"

    .line 156
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-interface {v0, p2, p3}, Lcom/taobao/zcache/intelligent/IIntelligent;->commitUpdate(Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public log(Lcom/taobao/zcache/core/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    sget-object v0, Lcom/taobao/zcache/ZCacheCoreProxy$1;->$SwitchMap$com$taobao$zcache$core$LogLevel:[I

    invoke-virtual {p1}, Lcom/taobao/zcache/core/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p2, p3}, Lcom/taobao/zcache/log/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p2, p3}, Lcom/taobao/zcache/log/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p2, p3}, Lcom/taobao/zcache/log/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {p2, p3}, Lcom/taobao/zcache/log/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    invoke-static {p2, p3}, Lcom/taobao/zcache/log/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public networkStatus()Lcom/taobao/zcache/core/NetworkStatus;
    .locals 1

    .line 92
    invoke-static {}, Lcom/taobao/zcache/network/NetworkUtils;->networkStatus()Lcom/taobao/zcache/core/NetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method public onFirstUpdateQueueFinished(I)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->getInstance()Lcom/taobao/zcache/config/ZCacheAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->getUpdateImpl()Lcom/taobao/zcache/config/IZCacheUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->getInstance()Lcom/taobao/zcache/config/ZCacheAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/zcache/config/ZCacheAdapterManager;->getUpdateImpl()Lcom/taobao/zcache/config/IZCacheUpdate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/zcache/config/IZCacheUpdate;->firstUpdateCount(I)V

    :cond_0
    return-void
.end method

.method public onPackUpdated(Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/taobao/zcache/UpdateManager;->onPackUpdated(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public sendRequest(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lcom/taobao/zcache/network/DownloadTask;->sendRequest(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
