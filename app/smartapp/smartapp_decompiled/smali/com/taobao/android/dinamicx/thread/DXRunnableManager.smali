.class public Lcom/taobao/android/dinamicx/thread/DXRunnableManager;
.super Ljava/lang/Object;
.source "DXRunnableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/thread/DXRunnableManager$DXWorkHandlerHolder;
    }
.end annotation


# static fields
.field private static MONITOR_THREAD:Ljava/lang/String; = "monitor_thread"

.field private static RENDER_THREAD:Ljava/lang/String; = "render_thread"


# instance fields
.field private asyncPreRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

.field private asyncRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

.field private asyncRenderScheduledThread:Landroid/os/HandlerThread;

.field private commonExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

.field private downloadExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

.field private mainHandler:Landroid/os/Handler;

.field private monitorHandler:Landroid/os/Handler;

.field private monitorHandlerTread:Landroid/os/HandlerThread;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->mainHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->commonExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    .line 55
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->downloadExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v2, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->MONITOR_THREAD:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->monitorHandlerTread:Landroid/os/HandlerThread;

    .line 59
    iget-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->monitorHandlerTread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->monitorHandlerTread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->monitorHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v2, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->RENDER_THREAD:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderScheduledThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderScheduledThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-direct {v0, v1, v1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(IZ)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    .line 65
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-direct {v0, v1, v1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(IZ)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncPreRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/thread/DXRunnableManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearAsyncRenderTasks()V
    .locals 1

    .line 124
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->clear()V

    return-void
.end method

.method public static getAsyncRenderScheduledThread()Landroid/os/HandlerThread;
    .locals 1

    .line 116
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderScheduledThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;
    .locals 1

    .line 73
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager$DXWorkHandlerHolder;->access$100()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    return-object v0
.end method

.method public static runForDownLoad(Lcom/taobao/android/dinamicx/thread/DXDownLoadRunnable;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->downloadExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runForMonitor(Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->monitorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runForPreRender(Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncPreRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runForPrefetch(Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->asyncRenderExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->commonExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs scheduledAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->commonExecutor:Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static scheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 141
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
