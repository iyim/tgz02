.class public Lc/a/a/b/i/b;
.super Lc/a/a/b/i/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/b/i/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc/a/a/b/i/a;->a(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lc/a/a/b/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/a/a/b/i/b$a;

    invoke-direct {v1, p0, p1, p2}, Lc/a/a/b/i/b$a;-><init>(Lc/a/a/b/i/b;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
