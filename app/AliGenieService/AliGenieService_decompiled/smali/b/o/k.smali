.class public Lb/o/k;
.super Lb/o/q;
.source ""


# annotations
.annotation runtime Lb/o/q$b;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/o/q<",
        "Lb/o/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/o/r;


# direct methods
.method public constructor <init>(Lb/o/r;)V
    .locals 0

    invoke-direct {p0}, Lb/o/q;-><init>()V

    iput-object p1, p0, Lb/o/k;->a:Lb/o/r;

    return-void
.end method


# virtual methods
.method public a()Lb/o/i;
    .locals 1

    .line 1
    new-instance v0, Lb/o/j;

    invoke-direct {v0, p0}, Lb/o/j;-><init>(Lb/o/q;)V

    return-object v0
.end method

.method public a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)Lb/o/i;
    .locals 2

    check-cast p1, Lb/o/j;

    .line 2
    iget v0, p1, Lb/o/j;->k:I

    if-nez v0, :cond_2

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "no start destination defined via app:startDestination for "

    invoke-static {p3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 4
    iget p4, p1, Lb/o/i;->d:I

    if-eqz p4, :cond_1

    .line 5
    iget-object v0, p1, Lb/o/i;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lb/o/i;->e:Ljava/lang/String;

    :cond_0
    iget-object p1, p1, Lb/o/i;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "the root navigation"

    .line 6
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/o/j;->a(IZ)Lb/o/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 7
    iget-object p2, p1, Lb/o/j;->l:Ljava/lang/String;

    if-nez p2, :cond_3

    iget p2, p1, Lb/o/j;->k:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lb/o/j;->l:Ljava/lang/String;

    :cond_3
    iget-object p1, p1, Lb/o/j;->l:Ljava/lang/String;

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "navigation destination "

    const-string p4, " is not a direct child of this NavGraph"

    invoke-static {p3, p1, p4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    iget-object p1, p0, Lb/o/k;->a:Lb/o/r;

    .line 9
    iget-object v1, v0, Lb/o/i;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1}, Lb/o/r;->a(Ljava/lang/String;)Lb/o/q;

    move-result-object p1

    invoke-virtual {v0, p2}, Lb/o/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3, p4}, Lb/o/q;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)Lb/o/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
