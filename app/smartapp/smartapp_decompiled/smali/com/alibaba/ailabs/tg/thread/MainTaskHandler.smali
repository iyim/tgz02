.class public final Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;
.super Ljava/lang/Object;
.source "MainTaskHandler.java"


# static fields
.field private static volatile sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static get()Landroid/os/Handler;
    .locals 3

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->sHandler:Landroid/os/Handler;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->get()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->get()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
