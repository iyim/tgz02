.class public Lc/a/a/a/a/a/a/c;
.super Lc/a/a/b/i/b;
.source ""


# static fields
.field public static e:Lc/a/a/a/a/a/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/a/a/b/i/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lc/a/a/a/a/a/a/c;
    .locals 2

    sget-object v0, Lc/a/a/a/a/a/a/c;->e:Lc/a/a/a/a/a/a/c;

    if-nez v0, :cond_1

    const-class v0, Lc/a/a/a/a/a/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a/a/a/a/a/a/c;->e:Lc/a/a/a/a/a/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lc/a/a/a/a/a/a/c;

    invoke-direct {v1, p0}, Lc/a/a/a/a/a/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/a/a/a/a/a/a/c;->e:Lc/a/a/a/a/a/a/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lc/a/a/a/a/a/a/c;->e:Lc/a/a/a/a/a/a/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {p1, v0}, Lc/a/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/b/d;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lc/a/a/b/d;->a:Lc/a/a/b/f/a;

    const-string v0, "com.ailabas.alibaba.genie.system.context"

    invoke-virtual {p1, v0}, Lc/a/a/b/f/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
