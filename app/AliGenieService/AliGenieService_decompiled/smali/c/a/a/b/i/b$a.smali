.class public Lc/a/a/b/i/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/b/i/b;->a(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lc/a/a/b/i/b;


# direct methods
.method public constructor <init>(Lc/a/a/b/i/b;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/i/b$a;->d:Lc/a/a/b/i/b;

    iput p2, p0, Lc/a/a/b/i/b$a;->b:I

    iput-object p3, p0, Lc/a/a/b/i/b$a;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/a/a/b/i/b$a;->d:Lc/a/a/b/i/b;

    iget v1, p0, Lc/a/a/b/i/b$a;->b:I

    iget-object v2, p0, Lc/a/a/b/i/b$a;->c:Landroid/os/Bundle;

    .line 1
    iget-object v3, v0, Lc/a/a/b/i/a;->d:Landroid/os/IBinder;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lc/a/a/b/i/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lc/a/a/b/i/b;->a(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lc/a/a/b/i/a;->a(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {v3}, Lc/a/a/b/a$a;->a(Landroid/os/IBinder;)Lc/a/a/b/a;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 3
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    invoke-interface {v3, v1, v2}, Lc/a/a/b/a;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
