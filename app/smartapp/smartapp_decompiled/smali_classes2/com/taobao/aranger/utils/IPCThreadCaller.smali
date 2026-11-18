.class public Lcom/taobao/aranger/utils/IPCThreadCaller;
.super Ljava/lang/Object;
.source "IPCThreadCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/aranger/utils/IPCThreadCaller$IPCThreadFactory;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.taobao.aranger.utils.IPCThreadCaller"

.field private static volatile sInstance:Lcom/taobao/aranger/utils/IPCThreadCaller;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 10

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/taobao/aranger/utils/IPCThreadCaller;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mUiHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/taobao/aranger/utils/IPCThreadCaller$IPCThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/taobao/aranger/utils/IPCThreadCaller$IPCThreadFactory;-><init>(Lcom/taobao/aranger/utils/IPCThreadCaller$1;)V

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/taobao/aranger/utils/IPCThreadCaller;->getImpl()Lcom/taobao/aranger/utils/IPCThreadCaller;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static getImpl()Lcom/taobao/aranger/utils/IPCThreadCaller;
    .locals 2

    .line 31
    sget-object v0, Lcom/taobao/aranger/utils/IPCThreadCaller;->sInstance:Lcom/taobao/aranger/utils/IPCThreadCaller;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/taobao/aranger/utils/IPCThreadCaller;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/utils/IPCThreadCaller;->sInstance:Lcom/taobao/aranger/utils/IPCThreadCaller;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/taobao/aranger/utils/IPCThreadCaller;

    invoke-direct {v1}, Lcom/taobao/aranger/utils/IPCThreadCaller;-><init>()V

    sput-object v1, Lcom/taobao/aranger/utils/IPCThreadCaller;->sInstance:Lcom/taobao/aranger/utils/IPCThreadCaller;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/aranger/utils/IPCThreadCaller;->sInstance:Lcom/taobao/aranger/utils/IPCThreadCaller;

    return-object v0
.end method

.method public static post(ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 51
    invoke-static {}, Lcom/taobao/aranger/utils/IPCThreadCaller;->getImpl()Lcom/taobao/aranger/utils/IPCThreadCaller;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mUiHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/taobao/aranger/utils/IPCThreadCaller;->getImpl()Lcom/taobao/aranger/utils/IPCThreadCaller;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/aranger/utils/IPCThreadCaller;->mHandler:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
