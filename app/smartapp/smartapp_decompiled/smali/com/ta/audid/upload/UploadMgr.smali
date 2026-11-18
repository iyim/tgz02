.class public Lcom/ta/audid/upload/UploadMgr;
.super Ljava/lang/Object;
.source "UploadMgr.java"


# static fields
.field private static final DEFAULT_DELAY:I = 0xea60

.field private static final DEFAULT_INTERVAL:I = 0x2bf20

.field private static mInstance:Lcom/ta/audid/upload/UploadMgr;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUploadFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/ta/audid/upload/UploadMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/audid/upload/UploadMgr;
    .locals 2

    const-class v0, Lcom/ta/audid/upload/UploadMgr;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/ta/audid/upload/UploadMgr;->mInstance:Lcom/ta/audid/upload/UploadMgr;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/ta/audid/upload/UploadMgr;

    invoke-direct {v1, p0}, Lcom/ta/audid/upload/UploadMgr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/audid/upload/UploadMgr;->mInstance:Lcom/ta/audid/upload/UploadMgr;

    .line 24
    :cond_0
    sget-object p0, Lcom/ta/audid/upload/UploadMgr;->mInstance:Lcom/ta/audid/upload/UploadMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private startIntervalMode()V
    .locals 7

    .line 47
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance v2, Lcom/ta/audid/upload/UtdidUploadTask;

    iget-object v3, p0, Lcom/ta/audid/upload/UploadMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ta/audid/upload/UtdidUploadTask;-><init>(Landroid/content/Context;)V

    const-wide/32 v3, 0xea60

    const-wide/32 v5, 0x2bf20

    invoke-virtual/range {v0 .. v6}, Lcom/ta/audid/utils/TaskExecutor;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;JJ)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/ta/audid/upload/UploadMgr;->startIntervalMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ta/audid/upload/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
