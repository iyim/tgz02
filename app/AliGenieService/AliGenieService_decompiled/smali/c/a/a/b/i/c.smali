.class public Lc/a/a/b/i/c;
.super Lc/a/a/b/i/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/i/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/a/b/i/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lc/a/a/b/i/a;->b:I

    new-instance p1, Lc/a/a/b/i/c$a;

    invoke-direct {p1, p0}, Lc/a/a/b/i/c$a;-><init>(Lc/a/a/b/i/c;)V

    iput-object p1, p0, Lc/a/a/b/i/a;->d:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const p0, 0x0

    throw p0
.end method
