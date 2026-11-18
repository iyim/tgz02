.class public Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# static fields
.field private static final THREAD_LEAK_CLEANING_MS:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static flushStackLocalLeaks(Landroid/os/Looper;)V
    .locals 3
    .param p0    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil$1;-><init>(Landroid/os/Looper;)V

    .line 57
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static postOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
