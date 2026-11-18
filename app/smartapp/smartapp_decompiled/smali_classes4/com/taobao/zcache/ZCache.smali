.class public Lcom/taobao/zcache/ZCache;
.super Ljava/lang/Object;
.source "ZCache.java"


# static fields
.field private static config:Lcom/taobao/zcache/ZCacheConfig;

.field private static context:Landroid/content/Context;

.field private static env:Lcom/taobao/zcache/Environment;

.field private static locale:Ljava/lang/String;

.field private static final taskQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 362
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/taobao/zcache/ZCache$2;

    invoke-direct {v7}, Lcom/taobao/zcache/ZCache$2;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x14

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/taobao/zcache/ZCache;->taskQueue:Ljava/util/concurrent/ExecutorService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clean()V
    .locals 2

    .line 266
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->removeAllZCache()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clientActived()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->clientActived()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clientDeactived()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->clientDeactived()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getACacheRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 417
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 421
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->getACacheRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 51
    sget-object v0, Lcom/taobao/zcache/ZCache;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getNullContextError()Lcom/taobao/zcache/Error;
    .locals 3

    .line 456
    new-instance v0, Lcom/taobao/zcache/Error;

    const/16 v1, 0x270a

    const-string v2, "context is null"

    invoke-direct {v0, v1, v2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static getResource(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;
    .locals 2
    .param p0    # Lcom/taobao/zcache/ResourceRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 353
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 357
    :cond_1
    invoke-interface {v1, p0}, Lcom/taobao/zcache/core/IZCacheCore;->getResource(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
    .locals 3
    .param p0    # Lcom/taobao/zcache/ResourceRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/zcache/ResourceResponseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 381
    invoke-interface {p1, v0}, Lcom/taobao/zcache/ResourceResponseCallback;->finish(Lcom/taobao/zcache/ResourceResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 384
    :cond_1
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_2

    .line 386
    invoke-interface {p1, v0}, Lcom/taobao/zcache/ResourceResponseCallback;->finish(Lcom/taobao/zcache/ResourceResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 389
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 391
    new-instance v0, Lcom/taobao/zcache/ZCache$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/zcache/ZCache$3;-><init>(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V

    .line 397
    sget-object p0, Lcom/taobao/zcache/ZCache;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getSubProcessUpdateDisabledError()Lcom/taobao/zcache/Error;
    .locals 3

    .line 449
    new-instance v0, Lcom/taobao/zcache/Error;

    const/16 v1, 0x7d4

    const-string v2, "sub process update disabled"

    invoke-direct {v0, v1, v2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static installPreload()V
    .locals 1

    const-string v0, "preload_packageapp.zip"

    .line 190
    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->installPreload(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static installPreload(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 202
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->installPreload(Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isPackInstalled(Lcom/taobao/zcache/PackRequest;)Z
    .locals 2
    .param p0    # Lcom/taobao/zcache/PackRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 301
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    .line 303
    invoke-static {}, Lcom/taobao/zcache/ZCache;->getNullContextError()Lcom/taobao/zcache/Error;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/zcache/PackRequest;->setError(Lcom/taobao/zcache/Error;)V

    return v0

    .line 306
    :cond_1
    invoke-interface {v1, p0}, Lcom/taobao/zcache/core/IZCacheCore;->isInstalled(Lcom/taobao/zcache/PackRequest;)Z

    move-result p0

    return p0
.end method

.method public static isPackInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 285
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 289
    :cond_1
    new-instance v0, Lcom/taobao/zcache/PackRequest;

    invoke-direct {v0, p0}, Lcom/taobao/zcache/PackRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/taobao/zcache/core/IZCacheCore;->isInstalled(Lcom/taobao/zcache/PackRequest;)Z

    move-result p0

    return p0
.end method

.method public static isResourceInstalled(Lcom/taobao/zcache/ResourceRequest;)Z
    .locals 2
    .param p0    # Lcom/taobao/zcache/ResourceRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 336
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 340
    :cond_1
    invoke-interface {v1, p0}, Lcom/taobao/zcache/core/IZCacheCore;->isResourceInstalled(Lcom/taobao/zcache/ResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public static isResourceInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 319
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 323
    :cond_1
    new-instance v0, Lcom/taobao/zcache/ResourceRequest;

    invoke-direct {v0, p0}, Lcom/taobao/zcache/ResourceRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/taobao/zcache/core/IZCacheCore;->isResourceInstalled(Lcom/taobao/zcache/ResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public static prefetch(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->prefetch(Ljava/util/List;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPushService(Lcom/taobao/zcache/IZCachePushService;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"event\":\"registerPushService\",\"ext\":{\"type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZCache/Setup"

    invoke-static {v2, v1}, Lcom/taobao/zcache/log/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->registerPushService(Lcom/taobao/zcache/IZCachePushService;)V

    :cond_1
    return-void
.end method

.method public static registerUpdateListener(Ljava/lang/String;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/zcache/PackUpdateFinishedCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 259
    invoke-static {p0, p1}, Lcom/taobao/zcache/UpdateManager;->registerUpdateListener(Ljava/lang/String;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static removeACache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 434
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-nez v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 438
    :cond_1
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    new-instance v1, Lcom/taobao/zcache/PackRequest;

    invoke-direct {v1, p0, p1}, Lcom/taobao/zcache/PackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/taobao/zcache/core/IZCacheCore;->removePack(Lcom/taobao/zcache/PackRequest;)V

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setConfig(Lcom/taobao/zcache/ZCacheConfig;)V
    .locals 1
    .param p0    # Lcom/taobao/zcache/ZCacheConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    sput-object p0, Lcom/taobao/zcache/ZCache;->config:Lcom/taobao/zcache/ZCacheConfig;

    .line 141
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->setConfig(Lcom/taobao/zcache/ZCacheConfig;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 38
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 39
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Cannot use context which instance of Activity"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 43
    :cond_1
    sput-object p0, Lcom/taobao/zcache/ZCache;->context:Landroid/content/Context;

    .line 44
    sget-object p0, Lcom/taobao/zcache/ZCache;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/taobao/zcache/ZCacheCoreProxy;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static setEnv(Lcom/taobao/zcache/Environment;)V
    .locals 1
    .param p0    # Lcom/taobao/zcache/Environment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 100
    :cond_0
    sput-object p0, Lcom/taobao/zcache/ZCache;->env:Lcom/taobao/zcache/Environment;

    .line 101
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->setEnv(Lcom/taobao/zcache/Environment;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLocale(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    sput-object p0, Lcom/taobao/zcache/ZCache;->locale:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p0}, Lcom/taobao/zcache/core/IZCacheCore;->setLocale(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/taobao/zcache/ZCache;->setContext(Landroid/content/Context;)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    const-string p0, "ZCache/Setup"

    if-nez v0, :cond_1

    const-string p1, "{\"event\":\"setup\",\"errorCode\":\"101\",\"errorMsg\":\"context is null\"}"

    .line 63
    invoke-static {p0, p1}, Lcom/taobao/zcache/log/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v3, Lcom/taobao/zcache/ZCache;->env:Lcom/taobao/zcache/Environment;

    sget-object v4, Lcom/taobao/zcache/ZCache;->locale:Ljava/lang/String;

    sget-object v5, Lcom/taobao/zcache/ZCache;->config:Lcom/taobao/zcache/ZCacheConfig;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/zcache/core/IZCacheCore;->setupWithHTTP(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/Environment;Ljava/lang/String;Lcom/taobao/zcache/ZCacheConfig;)V

    :try_start_0
    const-string p1, "ZCache"

    .line 71
    const-class p2, Lcom/taobao/zcache/ZCacheAPI;

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, "ZCacheDev"

    .line 72
    const-class p2, Lcom/taobao/zcache/ZCacheDev;

    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, "{\"event\":\"initDev\"}"

    .line 73
    invoke-static {p0, p1}, Lcom/taobao/zcache/log/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    new-instance p0, Lcom/taobao/zcache/ZCache$1;

    const-string p1, "ZCache.InstallPreload"

    invoke-direct {p0, p1}, Lcom/taobao/zcache/ZCache$1;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/taobao/zcache/ZCache$1;->start()V

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->setupSubProcess()V

    :goto_0
    return-void
.end method

.method public static startUpdateQueue()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->startUpdateQueue()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static syncSubProcessConfig()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->syncSubProcessConfig()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updatePack(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
    .locals 3
    .param p0    # Lcom/taobao/zcache/PackRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/zcache/PackUpdateFinishedCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 233
    invoke-interface {p1, p0, p0}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/zcache/PackRequest;->getName()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 241
    invoke-static {}, Lcom/taobao/zcache/ZCache;->getNullContextError()Lcom/taobao/zcache/Error;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    :cond_2
    return-void

    .line 246
    :cond_3
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->isMainProcess()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    .line 248
    invoke-static {}, Lcom/taobao/zcache/ZCache;->getSubProcessUpdateDisabledError()Lcom/taobao/zcache/Error;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    :cond_4
    return-void

    .line 252
    :cond_5
    invoke-interface {v1, p0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->updatePack(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V

    return-void
.end method
