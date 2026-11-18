.class public Lc/a/a/a/a/a/a/b;
.super Lc/a/a/b/i/c;
.source ""


# instance fields
.field public e:Lc/a/a/a/a/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/a/a/a/a/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/a/b/i/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc/a/a/a/a/a/a/b;->e:Lc/a/a/a/a/a/a/a;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object p2, p0, Lc/a/a/a/a/a/a/b;->e:Lc/a/a/a/a/a/a/a;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/aligenie/ags/access/AccessService$e$a;

    invoke-virtual {p2}, Lcom/aligenie/ags/access/AccessService$e$a;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "context"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "r"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
