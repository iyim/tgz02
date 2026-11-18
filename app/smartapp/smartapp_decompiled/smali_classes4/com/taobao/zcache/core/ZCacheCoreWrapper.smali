.class public Lcom/taobao/zcache/core/ZCacheCoreWrapper;
.super Ljava/lang/Object;
.source "ZCacheCoreWrapper.java"

# interfaces
.implements Lcom/taobao/zcache/core/IZCacheCore;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static initCount:I


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private initState:I

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private proxy:Lcom/taobao/zcache/core/IZCacheProxy;

.field private pushService:Lcom/taobao/zcache/IZCachePushService;

.field private zcacheFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/zcache/core/IZCacheProxy;Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initState:I

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "ZCache proxy cannot be null"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 57
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "ZCache Context cannot be null"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->assetManager:Landroid/content/res/AssetManager;

    const/4 p1, 0x0

    const-string v0, "zcache"

    .line 63
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->zcacheFolder:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->loadSO()V

    return-void
.end method

.method private native clientActivedNative()V
.end method

.method private native clientDeactivedNative()V
.end method

.method private commitMonitor(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/zcache/core/IZCacheProxy;->commitMonitor(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private native getACacheRootPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getEnvNative()I
.end method

.method private getInvalidArgumentError()Lcom/taobao/zcache/Error;
    .locals 3

    .line 642
    new-instance v0, Lcom/taobao/zcache/Error;

    const/4 v1, -0x1

    const-string v2, "invalid argument"

    invoke-direct {v0, v1, v2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private native getLocaleNative()Ljava/lang/String;
.end method

.method private native getResourceNative(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;
.end method

.method private native getResourceNative(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
.end method

.method private native getSessionIDNative()Ljava/lang/String;
.end method

.method private getSoNotLoadedError()Lcom/taobao/zcache/Error;
    .locals 3

    .line 635
    new-instance v0, Lcom/taobao/zcache/Error;

    const/16 v1, 0x2709

    const-string v2, "so not loaded"

    invoke-direct {v0, v1, v2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private initZCacheFolder()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->zcacheFolder:Ljava/lang/String;

    return-object v0
.end method

.method private native installPreloadNative(Ljava/lang/String;)V
.end method

.method private native invokeDevNative(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V
.end method

.method private native isInstalledNative(Lcom/taobao/zcache/PackRequest;)Z
.end method

.method private native isResourceInstalledNative(Lcom/taobao/zcache/ResourceRequest;)Z
.end method

.method private isSoLoaded()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initState:I

    if-nez v0, :cond_0

    sget v0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->loadSO()V

    .line 103
    :cond_0
    iget v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private native loadAppReaderNative(Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;)V
.end method

.method private loadSO()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "zcachecore"

    .line 73
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->assetManager:Landroid/content/res/AssetManager;

    invoke-direct {p0, p0, v1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setProxyNative(Lcom/taobao/zcache/core/ZCacheCoreWrapper;Landroid/content/res/AssetManager;)V

    .line 76
    iput v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"event\":\"loadSO\",\"errorCode\":\"101\", \"errorMsg\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    sget-object v3, Lcom/taobao/zcache/core/LogLevel;->Error:Lcom/taobao/zcache/core/LogLevel;

    const-string v4, "ZCache/Setup"

    invoke-interface {v2, v3, v4, v1}, Lcom/taobao/zcache/core/IZCacheProxy;->log(Lcom/taobao/zcache/core/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    sget v1, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initCount:I

    add-int/2addr v1, v0

    sput v1, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->initCount:I

    goto :goto_2

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :goto_2
    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p1}, Lcom/taobao/zcache/core/LogLevel;->getLogLevel(I)Lcom/taobao/zcache/core/LogLevel;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/zcache/core/IZCacheProxy;->log(Lcom/taobao/zcache/core/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private networkStatus()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheProxy;->networkStatus()Lcom/taobao/zcache/core/NetworkStatus;

    move-result-object v0

    iget v0, v0, Lcom/taobao/zcache/core/NetworkStatus;->value:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onFirstUpdateQueueFinished(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1}, Lcom/taobao/zcache/core/IZCacheProxy;->onFirstUpdateQueueFinished(I)V

    :cond_0
    return-void
.end method

.method private onPackUpdated(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p1}, Lcom/taobao/zcache/core/IZCacheProxy;->onPackUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native onPushMessageNative(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native onSendRequestFinishedNative(JILcom/taobao/zcache/Error;Ljava/lang/String;)V
.end method

.method private native pauseAppNative(Ljava/lang/String;)V
.end method

.method private native prefetchNative(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native removeAllZCacheNative()V
.end method

.method private native removePackNative(Lcom/taobao/zcache/PackRequest;)V
.end method

.method private native resumeAppNative(Ljava/lang/String;)V
.end method

.method private sendRequest(Lcom/taobao/zcache/core/ProxyRequest;J)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/taobao/zcache/core/SendRequestCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/taobao/zcache/core/SendRequestCallback;-><init>(Lcom/taobao/zcache/core/ZCacheCoreWrapper;J)V

    .line 129
    iget-object p2, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->proxy:Lcom/taobao/zcache/core/IZCacheProxy;

    invoke-interface {p2, p1, v0}, Lcom/taobao/zcache/core/IZCacheProxy;->sendRequest(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V

    :cond_0
    return-void
.end method

.method private native setConfigNative(Lcom/taobao/zcache/ZCacheConfig;)V
.end method

.method private native setEnvNative(I)V
.end method

.method private native setInitialPacksNative(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native setLocaleNative(Ljava/lang/String;)V
.end method

.method private native setProxyNative(Lcom/taobao/zcache/core/ZCacheCoreWrapper;Landroid/content/res/AssetManager;)V
.end method

.method private native setupSubProcessNative()V
.end method

.method private native setupWithHTTPNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/taobao/zcache/ZCacheConfig;)V
.end method

.method private native startUpdateQueueNative()V
.end method

.method private subscribePushMessage(Ljava/lang/String;J)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->pushService:Lcom/taobao/zcache/IZCachePushService;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/taobao/zcache/core/PushMessageCallbackImpl;

    invoke-direct {v0, p0, p2, p3}, Lcom/taobao/zcache/core/PushMessageCallbackImpl;-><init>(Lcom/taobao/zcache/core/ZCacheCoreWrapper;J)V

    .line 222
    iget-object p2, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->pushService:Lcom/taobao/zcache/IZCachePushService;

    invoke-interface {p2, p1, v0}, Lcom/taobao/zcache/IZCachePushService;->subscribePushMessage(Ljava/lang/String;Lcom/taobao/zcache/PushMessageCallback;)V

    :cond_0
    return-void
.end method

.method private native syncSubProcessConfigNative()V
.end method

.method private native updateDAINative(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native updatePackNative(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
.end method

.method private verifySign([B[B)Z
    .locals 0

    .line 165
    invoke-static {p1, p2}, Lcom/taobao/zcache/core/RSAUtil;->verifySign([B[B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clientActived()V
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->clientActivedNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clientDeactived()V
    .locals 1

    .line 396
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->clientDeactivedNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getACacheRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getACacheRootPathNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method getEnv()I
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getEnvNative()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getLocale()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getLocaleNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getResourceNative(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getResourceNative(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getSessionIDNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public installPreload(Ljava/lang/String;)V
    .locals 1

    .line 427
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->installPreloadNative(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public invokeDev(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->invokeDevNative(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isInstalled(Lcom/taobao/zcache/PackRequest;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isInstalledNative(Lcom/taobao/zcache/PackRequest;)Z

    move-result p1

    return p1

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getSoNotLoadedError()Lcom/taobao/zcache/Error;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/taobao/zcache/PackRequest;->setError(Lcom/taobao/zcache/Error;)V

    return v0
.end method

.method public isResourceInstalled(Lcom/taobao/zcache/ResourceRequest;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isResourceInstalledNative(Lcom/taobao/zcache/ResourceRequest;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public loadAppReader(Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;)V
    .locals 1

    .line 624
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->loadAppReaderNative(Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method onPushMessage(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->onPushMessageNative(JLjava/util/List;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method onSendRequestFinished(JILcom/taobao/zcache/Error;Ljava/lang/String;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct/range {p0 .. p5}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->onSendRequestFinishedNative(JILcom/taobao/zcache/Error;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pauseApp(Ljava/lang/String;)V
    .locals 1

    .line 597
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->pauseAppNative(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public prefetch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 523
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->prefetchNative(Ljava/util/List;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerPushService(Lcom/taobao/zcache/IZCachePushService;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->pushService:Lcom/taobao/zcache/IZCachePushService;

    return-void
.end method

.method public removeAllZCache()V
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->removeAllZCacheNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removePack(Lcom/taobao/zcache/PackRequest;)V
    .locals 1

    .line 573
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->removePackNative(Lcom/taobao/zcache/PackRequest;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resumeApp(Ljava/lang/String;)V
    .locals 1

    .line 609
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->resumeAppNative(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setConfig(Lcom/taobao/zcache/ZCacheConfig;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setConfigNative(Lcom/taobao/zcache/ZCacheConfig;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEnv(Lcom/taobao/zcache/Environment;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 248
    iget p1, p1, Lcom/taobao/zcache/Environment;->value:I

    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setEnvNative(I)V

    :cond_0
    return-void
.end method

.method public setInitialPacks(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setInitialPacksNative(Ljava/util/Set;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setLocaleNative(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setupSubProcess()V
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setupSubProcessNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setupWithHTTP(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/Environment;Ljava/lang/String;Lcom/taobao/zcache/ZCacheConfig;)V
    .locals 6

    .line 322
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 324
    sget-object p3, Lcom/taobao/zcache/Environment;->Release:Lcom/taobao/zcache/Environment;

    .line 326
    :cond_0
    iget v3, p3, Lcom/taobao/zcache/Environment;->value:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->setupWithHTTPNative(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/taobao/zcache/ZCacheConfig;)V

    :cond_1
    return-void
.end method

.method public startUpdateQueue()V
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->startUpdateQueueNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public syncSubProcessConfig()V
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->syncSubProcessConfigNative()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateDAI(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0, p1}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->updateDAINative(Ljava/util/Set;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updatePack(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getInvalidArgumentError()Lcom/taobao/zcache/Error;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->isSoLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->updatePackNative(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 546
    invoke-direct {p0}, Lcom/taobao/zcache/core/ZCacheCoreWrapper;->getSoNotLoadedError()Lcom/taobao/zcache/Error;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    :cond_3
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
