.class public Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/UnetManager;


# static fields
.field public static final DEVELOP_LOG:Z = false

.field private static final INIT_MODE_GET:I = 0x1

.field private static final INIT_MODE_NEW:I = 0x2

.field private static final SUPPORTED_FEATURES:J = 0x600000L

.field private static final SUPPORT_FEATURE_CHECK_FEATURES:J = 0x400000L

.field private static final SUPPORT_FEATURE_DISABLE_REQUEST_HTTP2:J = 0x200000L


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkDelegateBridge:Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

.field private mPendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkManagerImpl:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    .line 36
    new-instance v0, Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    invoke-direct {v0}, Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mNetworkDelegateBridge:Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mPendingCalls:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mNetworkDelegateBridge:Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->runPendingCallsAfterInit()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkHaveManagerImpl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->haveManagerImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down or not init."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haveManagerImpl()Z
    .locals 5

    .line 293
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private runPendingCallsAfterInit()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mPendingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 146
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreResolveDns(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 253
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addPreconnection(Ljava/lang/String;I)V
    .locals 1

    .line 241
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$8;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;I)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public callAfterInitialized(Ljava/lang/Runnable;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mPendingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public createRequest(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    new-instance v1, Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;-><init>(Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCookieList(Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V
    .locals 1

    .line 275
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHostCacheFromHttpDns(Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V
    .locals 1

    .line 219
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHostCacheFromHttpDnsImpl(Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeGetHostCacheFromHttpDns(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;->onHostCacheQueried([Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 232
    invoke-interface {p2, p1}, Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;->onHostCacheQueried([Ljava/lang/String;)V

    return-void
.end method

.method public getNativePointer()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    return-wide v0
.end method

.method public getProxyDelegate()Lcom/alibaba/mbg/unet/IProxyDelegate;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mNetworkDelegateBridge:Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    invoke-virtual {v1}, Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;->getProxyDelegate()Lcom/alibaba/mbg/unet/IProxyDelegate;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSdkManagerImpl()J
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->checkHaveManagerImpl()V

    .line 115
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWorkerExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initNetworkNotifier(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->initNetworkNotifier(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public initSdkManager(Landroid/content/Context;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->ensureInitialized(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeCreateSdkManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    .line 69
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mSdkManagerImpl:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 74
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$1;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Landroid/content/Context;)V

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :goto_0
    monitor-exit v0

    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "Context Adapter creation failed."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initSdkManager ctx must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFeaturesSupported(J)Z
    .locals 3

    const-wide/32 v0, 0x600000

    and-long/2addr v0, p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyActivityPauseOrDestroy()V
    .locals 1

    .line 190
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$5;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyForegoundChange()V
    .locals 1

    .line 203
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$6;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntValueSetting(Ljava/lang/String;I)V
    .locals 1

    .line 177
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListControlValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 164
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setProxyInfoDelegate(Lcom/alibaba/mbg/unet/IProxyDelegate;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->mNetworkDelegateBridge:Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;

    invoke-virtual {v1, p1}, Lcom/alibaba/mbg/unet/internal/SdkNetworkDelegateBridge;->setProxyInfoDelegate(Lcom/alibaba/mbg/unet/IProxyDelegate;)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setStringValueSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$2;-><init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
