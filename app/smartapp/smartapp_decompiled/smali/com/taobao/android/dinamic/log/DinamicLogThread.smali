.class public Lcom/taobao/android/dinamic/log/DinamicLogThread;
.super Landroid/os/HandlerThread;
.source "DinamicLogThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;
    }
.end annotation


# static fields
.field private static handlerThread:Landroid/os/HandlerThread; = null

.field private static isInited:Z = false

.field public static threadHandler:Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkInit()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/taobao/android/dinamic/log/DinamicLogThread;->isInited:Z

    return v0
.end method

.method public static declared-synchronized init(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/taobao/android/dinamic/log/DinamicLogThread;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-boolean v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->isInited:Z

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;

    invoke-direct {v1, p0}, Lcom/taobao/android/dinamic/log/DinamicLogThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->handlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 22
    :try_start_1
    sget-object v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catch_0
    :try_start_2
    sget-object v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :catch_1
    :try_start_3
    new-instance v1, Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;

    invoke-direct {v1, p0}, Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->threadHandler:Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;

    const/4 p0, 0x1

    .line 30
    sput-boolean p0, Lcom/taobao/android/dinamic/log/DinamicLogThread;->isInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
