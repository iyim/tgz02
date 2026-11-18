.class public Landroid/taobao/windvane/extra/uc/WVThread;
.super Landroid/os/HandlerThread;
.source "WVThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->start()V

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->start()V

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->start()V

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->start()V

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public quit()Z
    .locals 2

    .line 39
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
