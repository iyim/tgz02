.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;
.super Ljava/lang/Object;
.source "DataRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;
    }
.end annotation


# static fields
.field private static mExecutorService:Ljava/util/concurrent/ExecutorService; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static volatile status:I = -0x1


# instance fields
.field mRequest:Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;

.field mTaskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mRequest:Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mRequest:Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;

    .line 31
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mTaskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    return-void
.end method

.method private static destroy()V
    .locals 1

    .line 65
    sget-object v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 68
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->removeAllTask()V

    const/4 v0, -0x1

    .line 69
    sput v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->status:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static init()V
    .locals 3

    .line 35
    const-class v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;

    monitor-enter v0

    .line 36
    :try_start_0
    sget v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->status:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 37
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 39
    :cond_0
    sget-object v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 40
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->destroy()V

    .line 43
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 45
    sput v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->status:I

    .line 46
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeAllTask()V
    .locals 2

    .line 73
    sget-object v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mRequest:Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mTaskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;->execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 58
    sget v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->init()V

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
