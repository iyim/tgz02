.class public Lcom/alibaba/mbg/unet/internal/RequestImpl;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/Request;
.implements Lcom/alibaba/mbg/unet/internal/RequestJni$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;,
        Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedInputStream;,
        Lcom/alibaba/mbg/unet/internal/RequestImpl$MyPipedOutputStream;,
        Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;,
        Lcom/alibaba/mbg/unet/internal/RequestImpl$UiThreadExecutor;,
        Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;
    }
.end annotation


# instance fields
.field private mAutoFollowRedirect:Z

.field private mCallback:Lcom/alibaba/mbg/unet/Request$Callback;

.field private mConnectTimeoutMS:I

.field private mDisableCache:Z

.field private mEnableCookie:Z

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mForceMissile:Z

.field private mInitialMethod:Ljava/lang/String;

.field private final mInitialUrl:Ljava/lang/String;

.field private mLoadFlagExt:I

.field private final mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field private mNetException:Lcom/alibaba/mbg/unet/RequestException;

.field private mOnReadCompletedTask:Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;

.field private mReceivedBytesCountFromRedirects:J

.field private final mRequestHeaders:Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

.field private mRequestImpl:J

.field private final mRequestImplLock:Ljava/lang/Object;

.field private mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

.field private mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

.field private mStarted:Z

.field private mSync:Z

.field private mSyncRequestCallback:Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;

.field private final mSyncRequestSignal:Ljava/lang/Object;

.field private mSyncSignalNotified:Z

.field private mTag:Ljava/lang/String;

.field private mTimeoutMS:I

.field private mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

.field private final mUrlChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingOnRead:Z

.field private mWaitingOnRedirect:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mDisableCache:Z

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mForceMissile:Z

    .line 41
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mLoadFlagExt:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTimeoutMS:I

    .line 45
    iput v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mConnectTimeoutMS:I

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRedirect:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRead:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUrlChain:Ljava/util/List;

    const-string v1, "GET"

    .line 71
    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    .line 72
    new-instance v1, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestHeaders:Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

    .line 83
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSync:Z

    .line 84
    iput-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestCallback:Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mAutoFollowRedirect:Z

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestSignal:Ljava/lang/Object;

    .line 87
    iput-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mNetException:Lcom/alibaba/mbg/unet/RequestException;

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncSignalNotified:Z

    .line 89
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mEnableCookie:Z

    .line 131
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialUrl:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUrlChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    .line 138
    new-instance p1, Lcom/alibaba/mbg/unet/internal/RequestJni;

    invoke-direct {p1, p0}, Lcom/alibaba/mbg/unet/internal/RequestJni;-><init>(Lcom/alibaba/mbg/unet/internal/RequestJni$Callback;)V

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/mbg/unet/internal/RequestImpl;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->startInternalLocked()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->followRedirectImpl()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->cancelImpl()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1400(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->destroyRequestAdapter(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mAutoFollowRedirect:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->notifySyncRequestFinish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1702(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/RequestException;)Lcom/alibaba/mbg/unet/RequestException;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mNetException:Lcom/alibaba/mbg/unet/RequestException;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRedirect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/mbg/unet/internal/RequestImpl;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRead:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/ResponseImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/Request$Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mCallback:Lcom/alibaba/mbg/unet/Request$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/lang/Exception;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->onCallbackException(Ljava/lang/Exception;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->startImpl(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/UploadDataStream;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    return-object p0
.end method

.method private cancelImpl()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 521
    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->destroyRequestAdapter(Z)V

    .line 522
    monitor-exit v0

    return-void

    .line 517
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 522
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkNotStarted()V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    monitor-exit v0

    return-void

    .line 577
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request is already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyRequestAdapter(Z)V
    .locals 7

    .line 583
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 585
    monitor-exit v0

    return-void

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v5, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v5, v6, p1}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeDestroy(JZ)V

    .line 591
    iput-wide v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    .line 592
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private failWithException(Lcom/alibaba/mbg/unet/RequestException;)V
    .locals 1

    .line 631
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$5;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/RequestException;)V

    .line 648
    invoke-direct {p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private followRedirectImpl()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRedirect:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 464
    iput-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRedirect:Z

    .line 466
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    monitor-exit v0

    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeFollowDeferredRedirect(J)V

    .line 471
    monitor-exit v0

    return-void

    .line 462
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No redirect to follow."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private formatMetricInfo(Lcom/alibaba/mbg/unet/internal/ResponseImpl;)V
    .locals 4

    .line 596
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeGetMetricInfoArray(J)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setMetricInfoArray([Ljava/lang/String;)V

    .line 600
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isDoneLocked()Z
    .locals 5

    .line 533
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifySyncRequestFinish()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncSignalNotified:Z

    if-eqz v1, :cond_0

    .line 657
    monitor-exit v0

    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const/4 v1, 0x1

    .line 662
    iput-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncSignalNotified:Z

    .line 663
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCallbackException(Ljava/lang/Exception;)V
    .locals 3

    .line 612
    new-instance v0, Lcom/alibaba/mbg/unet/internal/SdkException;

    const-string v1, "Exception received from UrlRequest.Callback"

    const/4 v2, -0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/mbg/unet/internal/SdkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 614
    invoke-direct {p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->failWithException(Lcom/alibaba/mbg/unet/RequestException;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private postTaskToExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 555
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->destroyRequestAdapter(Z)V

    :goto_0
    return-void
.end method

.method private prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;
    .locals 8

    .line 563
    new-instance v4, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V

    const/4 v0, 0x0

    .line 564
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 565
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v2, p3, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p3, v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 568
    :cond_0
    new-instance p3, Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUrlChain:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p3

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, p3}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->formatMetricInfo(Lcom/alibaba/mbg/unet/internal/ResponseImpl;)V

    return-object p3
.end method

.method private startImpl(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 6

    .line 346
    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mCallback:Lcom/alibaba/mbg/unet/Request$Callback;

    .line 347
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 348
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter p1

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->checkNotStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :try_start_1
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeCreateRequestImpl(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    .line 361
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 362
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetHttpMethod(JLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid http method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 368
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestHeaders:Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

    invoke-virtual {p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeAddRequestHeader(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 374
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 378
    :cond_4
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 379
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    .line 380
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$2;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :try_start_2
    monitor-exit p1

    return-void

    .line 406
    :cond_5
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mStarted:Z

    .line 407
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->startInternalLocked()V

    .line 408
    monitor-exit p1

    return-void

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->destroyRequestAdapter(Z)V

    .line 403
    throw p2

    :catchall_0
    move-exception p2

    .line 408
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private startInternalLocked()V
    .locals 4

    .line 422
    iget-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mDisableCache:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeDisableCache(J)V

    .line 426
    :cond_0
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mLoadFlagExt:I

    if-eqz v0, :cond_1

    .line 427
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetLoadFlagExt(JI)V

    .line 430
    :cond_1
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTimeoutMS:I

    if-lez v0, :cond_2

    .line 431
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetRequestTimeoutMS(JI)V

    .line 434
    :cond_2
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mConnectTimeoutMS:I

    if-lez v0, :cond_3

    .line 435
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetConnectTimeoutMS(JI)V

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    iget-boolean v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mEnableCookie:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetCookieEnable(JZ)V

    .line 440
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeSetLogTag(JLjava/lang/String;)V

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeStart(J)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->checkNotStarted()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestHeaders:Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 504
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$4;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$4;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 511
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public disableCache()Lcom/alibaba/mbg/unet/Request;
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->checkNotStarted()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mDisableCache:Z

    return-object p0
.end method

.method public followRedirect()V
    .locals 2

    .line 449
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$3;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$3;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 456
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 218
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isForceMissile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCanceled()V
    .locals 1

    .line 1587
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 1598
    invoke-direct {p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onError(IILjava/lang/String;J)V
    .locals 2

    .line 1570
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    if-eqz p2, :cond_0

    .line 1571
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    add-long/2addr v0, p4

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setReceivedBytesCount(J)V

    .line 1578
    :cond_0
    new-instance p2, Lcom/alibaba/mbg/unet/internal/SdkException;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p1}, Lcom/alibaba/mbg/unet/internal/SdkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1579
    invoke-direct {p0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->failWithException(Lcom/alibaba/mbg/unet/RequestException;)V

    return-void
.end method

.method public onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    add-long/2addr v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setReceivedBytesCount(J)V

    .line 1505
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    const/4 p6, 0x0

    if-ne p5, p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    if-eq p5, p4, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    iget-object p4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mOnReadCompletedTask:Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;

    if-nez p4, :cond_1

    .line 1511
    new-instance p4, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;

    invoke-direct {p4, p0, p6}, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V

    iput-object p4, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mOnReadCompletedTask:Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;

    :cond_1
    add-int/2addr p3, p2

    .line 1516
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1517
    iget-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mOnReadCompletedTask:Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;

    iput-object p1, p2, Lcom/alibaba/mbg/unet/internal/RequestImpl$OnReadCompletedRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 1518
    invoke-direct {p0, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 1506
    :cond_2
    :goto_0
    new-instance p1, Lcom/alibaba/mbg/unet/internal/SdkException;

    const/4 p2, -0x3

    const-string p3, "ByteBuffer modified externally during read"

    invoke-direct {p1, p3, p6, p2}, Lcom/alibaba/mbg/unet/internal/SdkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->failWithException(Lcom/alibaba/mbg/unet/RequestException;)V

    return-void
.end method

.method public onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 9

    move-object v7, p0

    move-object v8, p1

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    .line 1407
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object v0

    .line 1409
    iget-wide v1, v7, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    add-long v1, v1, p8

    iput-wide v1, v7, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    .line 1410
    iget-wide v1, v7, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setReceivedBytesCount(J)V

    .line 1415
    iget-object v1, v7, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUrlChain:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1417
    new-instance v1, Lcom/alibaba/mbg/unet/internal/RequestImpl$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$6;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/ResponseImpl;Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1448
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->prepareResponseInfoOnNetworkThread(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    .line 1450
    new-instance p1, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;

    invoke-direct {p1, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$7;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 1480
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSucceeded(J)V
    .locals 3

    .line 1532
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mReceivedBytesCountFromRedirects:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/ResponseImpl;->setReceivedBytesCount(J)V

    .line 1533
    new-instance p1, Lcom/alibaba/mbg/unet/internal/RequestImpl$8;

    invoke-direct {p1, p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$8;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    .line 1555
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method onUploadException(Ljava/lang/Throwable;)V
    .locals 3

    .line 622
    new-instance v0, Lcom/alibaba/mbg/unet/internal/SdkException;

    const-string v1, "Exception received from UploadDataProvider"

    const/4 v2, -0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/mbg/unet/internal/SdkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 624
    invoke-direct {p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->failWithException(Lcom/alibaba/mbg/unet/RequestException;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public readNew(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 481
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/Preconditions;->checkHasRemaining(Ljava/nio/ByteBuffer;)V

    .line 482
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/Preconditions;->checkDirect(Ljava/nio/ByteBuffer;)V

    .line 483
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRead:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRead:Z

    .line 489
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->isDoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    monitor-exit v0

    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestJni:Lcom/alibaba/mbg/unet/internal/RequestJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mRequestImpl:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/mbg/unet/internal/RequestJni;->nativeReadData(JLjava/nio/ByteBuffer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 499
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mWaitingOnRead:Z

    .line 497
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native read"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected read attempt."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAutoFollowRedirect(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mAutoFollowRedirect:Z

    return-void
.end method

.method public setConnectTimeout(I)Lcom/alibaba/mbg/unet/Request;
    .locals 0

    .line 233
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mConnectTimeoutMS:I

    return-object p0
.end method

.method public setCookieEnable(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mEnableCookie:Z

    return-void
.end method

.method public setForceMissile()Lcom/alibaba/mbg/unet/Request;
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->checkNotStarted()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mForceMissile:Z

    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->checkNotStarted()V

    if-nez p1, :cond_0

    return-object p0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setLoadFlagExt(I)Lcom/alibaba/mbg/unet/Request;
    .locals 0

    .line 183
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mLoadFlagExt:I

    return-object p0
.end method

.method public setLogTag(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestTimeout(I)Lcom/alibaba/mbg/unet/Request;
    .locals 0

    .line 227
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mTimeoutMS:I

    return-object p0
.end method

.method public setUploadDataProvider(Ljava/io/InputStream;J)Lcom/alibaba/mbg/unet/Request;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "POST"

    .line 291
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {p1, p2, p3}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders;->create(Ljava/io/InputStream;J)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    return-object p0
.end method

.method public setUploadDataProvider(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "unet"

    const-string v0, "SdkRequest setUploadDataProvider Invalid UploadDataProvider:"

    .line 260
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 264
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "POST"

    .line 272
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    .line 274
    :cond_2
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 275
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders;->create(Ljava/io/File;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    return-object p0
.end method

.method public setUploadDataProvider([B)Lcom/alibaba/mbg/unet/Request;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "POST"

    .line 246
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mInitialMethod:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    .line 250
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders;->create([B)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mUploadDataStream:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    return-object p0
.end method

.method public start()Lcom/alibaba/mbg/unet/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/mbg/unet/RequestException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSync:Z

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mNetException:Lcom/alibaba/mbg/unet/RequestException;

    .line 309
    new-instance v1, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestCallback:Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;

    .line 310
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mManager:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestCallback:Lcom/alibaba/mbg/unet/internal/RequestImpl$SyncRequestCallback;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mSyncRequestSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mNetException:Lcom/alibaba/mbg/unet/RequestException;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mResponseInfo:Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    return-object v0

    .line 324
    :cond_0
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 316
    :try_start_2
    new-instance v2, Lcom/alibaba/mbg/unet/internal/SdkException;

    const-string/jumbo v3, "sync request InterruptedException."

    const/4 v4, -0x5

    invoke-direct {v2, v3, v1, v4}, Lcom/alibaba/mbg/unet/internal/SdkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 318
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 1

    .line 413
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mCallback:Lcom/alibaba/mbg/unet/Request$Callback;

    .line 414
    new-instance p1, Lcom/alibaba/mbg/unet/internal/RequestImpl$UiThreadExecutor;

    invoke-direct {p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl$UiThreadExecutor;-><init>()V

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl;->mCallback:Lcom/alibaba/mbg/unet/Request$Callback;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    return-void
.end method

.method public start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 1

    .line 331
    new-instance v0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;-><init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    .line 338
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->getClientNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
