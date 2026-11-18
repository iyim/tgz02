.class public Lc/a/a/b/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/e/b$a;
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lc/a/a/b/e/b$a;


# direct methods
.method public constructor <init>(Lc/a/a/b/e/b$a;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/b/e/b;->d:Lc/a/a/b/e/b$a;

    iput p2, p0, Lc/a/a/b/e/b;->b:I

    iput-object p3, p0, Lc/a/a/b/e/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/e/b;->d:Lc/a/a/b/e/b$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Lc/a/a/b/e/b;->b:I

    iget-object v2, p0, Lc/a/a/b/e/b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lc/a/a/b/e/b$a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
