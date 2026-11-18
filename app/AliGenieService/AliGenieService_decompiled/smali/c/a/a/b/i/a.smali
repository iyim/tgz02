.class public Lc/a/a/b/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public b:I

.field public c:Landroid/content/Context;

.field public d:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f8e9daa

    iput v0, p0, Lc/a/a/b/i/a;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/b/i/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "d"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "e"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "b"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/i/a;->d:Landroid/os/IBinder;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/i/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    invoke-virtual {p0}, Lc/a/a/b/i/a;->d()V

    invoke-virtual {p0}, Lc/a/a/b/i/a;->a()V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/a/a/b/i/a;->b:I

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method
