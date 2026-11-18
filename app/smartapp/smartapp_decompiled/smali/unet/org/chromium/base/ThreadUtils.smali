.class public Lunet/org/chromium/base/ThreadUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lunet/org/chromium/base/ThreadUtils;->a:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1201
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 150
    :cond_1
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b()Landroid/os/Looper;
    .locals 1

    .line 205
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 173
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static c()Landroid/os/Handler;
    .locals 3

    .line 48
    sget-object v0, Lunet/org/chromium/base/ThreadUtils;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lunet/org/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 50
    sget-boolean v1, Lunet/org/chromium/base/ThreadUtils;->b:Z

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lunet/org/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Did not yet override the UI thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v1, Lunet/org/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 3
    .annotation build Lunet/org/chromium/base/VisibleForTesting;
    .end annotation

    .line 185
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->c()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static isThreadPriorityAudio(I)Z
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 223
    invoke-static {p0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p0

    const/16 v0, -0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setThreadPriorityAudio(I)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const/16 v0, -0x10

    .line 213
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadPriority(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
