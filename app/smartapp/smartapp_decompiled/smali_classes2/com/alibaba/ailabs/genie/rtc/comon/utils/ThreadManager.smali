.class public Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;
    }
.end annotation


# static fields
.field private static volatile sBackgroundHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sBackgroundThread:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 15
    sput-object p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static declared-synchronized createBackgroundThread()V
    .locals 4

    const-class v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 27
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 30
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static postBackground(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static postBackground(Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->createBackgroundThread()V

    :cond_1
    if-nez p1, :cond_2

    .line 49
    sget-object p1, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$1;-><init>(Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    .line 67
    sget-object p0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 87
    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager;->sBackgroundHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
