.class public Lc/d/a/a/h0/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/h0/m$c;,
        Lc/d/a/a/h0/m$b;
    }
.end annotation


# static fields
.field public static e:Lc/d/a/a/h0/m;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public c:Lc/d/a/a/h0/m$c;

.field public d:Lc/d/a/a/h0/m$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/d/a/a/h0/m$a;

    invoke-direct {v2, p0}, Lc/d/a/a/h0/m$a;-><init>(Lc/d/a/a/h0/m;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    return-void
.end method

.method public static b()Lc/d/a/a/h0/m;
    .locals 1

    sget-object v0, Lc/d/a/a/h0/m;->e:Lc/d/a/a/h0/m;

    if-nez v0, :cond_0

    new-instance v0, Lc/d/a/a/h0/m;

    invoke-direct {v0}, Lc/d/a/a/h0/m;-><init>()V

    sput-object v0, Lc/d/a/a/h0/m;->e:Lc/d/a/a/h0/m;

    :cond_0
    sget-object v0, Lc/d/a/a/h0/m;->e:Lc/d/a/a/h0/m;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    iget-object v1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    iget-object v1, v1, Lc/d/a/a/h0/m$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/h0/m$b;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    .line 2
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILc/d/a/a/h0/m$b;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    iput p1, p2, Lc/d/a/a/h0/m$c;->b:I

    iget-object p1, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    iget-object p2, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$c;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lc/d/a/a/h0/m;->c(Lc/d/a/a/h0/m$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    iput p1, p2, Lc/d/a/a/h0/m$c;->b:I

    goto :goto_0

    :cond_1
    new-instance v1, Lc/d/a/a/h0/m$c;

    invoke-direct {v1, p1, p2}, Lc/d/a/a/h0/m$c;-><init>(ILc/d/a/a/h0/m$b;)V

    iput-object v1, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    :goto_0
    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lc/d/a/a/h0/m;->a(Lc/d/a/a/h0/m$c;I)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p0}, Lc/d/a/a/h0/m;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/d/a/a/h0/m$b;I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lc/d/a/a/h0/m;->a(Lc/d/a/a/h0/m$c;I)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->c(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/d/a/a/h0/m$c;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lc/d/a/a/h0/m;->a(Lc/d/a/a/h0/m$c;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/d/a/a/h0/m$b;)Z
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->c(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lc/d/a/a/h0/m$c;I)Z
    .locals 3

    iget-object v0, p1, Lc/d/a/a/h0/m$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/h0/m$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    .line 1
    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/os/Handler;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_0
    return v1
.end method

.method public final b(Lc/d/a/a/h0/m$c;)V
    .locals 4

    iget v0, p1, Lc/d/a/a/h0/m$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xabe

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v1, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final b(Lc/d/a/a/h0/m$b;)Z
    .locals 3

    iget-object v0, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lc/d/a/a/h0/m$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final c(Lc/d/a/a/h0/m$b;)Z
    .locals 3

    iget-object v0, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lc/d/a/a/h0/m$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public d(Lc/d/a/a/h0/m$b;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    iget-object p1, p0, Lc/d/a/a/h0/m;->d:Lc/d/a/a/h0/m$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/d/a/a/h0/m;->a()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lc/d/a/a/h0/m$b;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$c;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Lc/d/a/a/h0/m$b;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    iget-boolean p1, p1, Lc/d/a/a/h0/m$c;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lc/d/a/a/h0/m$c;->c:Z

    iget-object p1, p0, Lc/d/a/a/h0/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Lc/d/a/a/h0/m$b;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    iget-boolean p1, p1, Lc/d/a/a/h0/m$c;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lc/d/a/a/h0/m$c;->c:Z

    iget-object p1, p0, Lc/d/a/a/h0/m;->c:Lc/d/a/a/h0/m$c;

    invoke-virtual {p0, p1}, Lc/d/a/a/h0/m;->b(Lc/d/a/a/h0/m$c;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
