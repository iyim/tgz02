.class final Lcom/uc/sandboxExport/PreStartup$b;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/sandboxExport/PreStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/os/HandlerThread;

.field final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/sandboxExport/PreStartup$b;->a:Ljava/lang/Object;

    .line 589
    new-instance v0, Lcom/uc/sandboxExport/g;

    invoke-direct {v0, p0, p1}, Lcom/uc/sandboxExport/g;-><init>(Lcom/uc/sandboxExport/PreStartup$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    .line 598
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 600
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 602
    :try_start_0
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$b;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :try_start_1
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$b;->a:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 605
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "sandbox.PreStartup"

    const-string v1, "mThread.getLooper() failed"

    .line 607
    invoke-static {v0, v1, p1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$b;->c:Landroid/os/Handler;

    return-void
.end method
