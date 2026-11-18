.class public Lb/h/k/z$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final b:Lb/h/k/z;


# instance fields
.field public final a:Lb/h/k/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/h/k/z$c;

    invoke-direct {v0}, Lb/h/k/z$c;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/h/k/z$b;

    invoke-direct {v0}, Lb/h/k/z$b;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lb/h/k/z$a;

    invoke-direct {v0}, Lb/h/k/z$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {v0}, Lb/h/k/z$d;->b()Lb/h/k/z;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->a()Lb/h/k/z;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->b()Lb/h/k/z;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->c()Lb/h/k/z;

    move-result-object v0

    .line 6
    sput-object v0, Lb/h/k/z$j;->b:Lb/h/k/z;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/k/z$j;->a:Lb/h/k/z;

    return-void
.end method


# virtual methods
.method public a()Lb/h/k/z;
    .locals 1

    iget-object v0, p0, Lb/h/k/z$j;->a:Lb/h/k/z;

    return-object v0
.end method

.method public a(IIII)Lb/h/k/z;
    .locals 0

    sget-object p1, Lb/h/k/z$j;->b:Lb/h/k/z;

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method public a(Lb/h/k/z;)V
    .locals 0

    return-void
.end method

.method public b()Lb/h/k/z;
    .locals 1

    iget-object v0, p0, Lb/h/k/z$j;->a:Lb/h/k/z;

    return-object v0
.end method

.method public b(Lb/h/k/z;)V
    .locals 0

    return-void
.end method

.method public c()Lb/h/k/z;
    .locals 1

    iget-object v0, p0, Lb/h/k/z$j;->a:Lb/h/k/z;

    return-object v0
.end method

.method public d()Lb/h/k/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lb/h/e/b;
    .locals 1

    invoke-virtual {p0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/h/k/z$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/h/k/z$j;

    invoke-virtual {p0}, Lb/h/k/z$j;->i()Z

    move-result v1

    invoke-virtual {p1}, Lb/h/k/z$j;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lb/h/k/z$j;->h()Z

    move-result v1

    invoke-virtual {p1}, Lb/h/k/z$j;->h()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lb/h/k/z$j;->f()Lb/h/e/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/k/z$j;->f()Lb/h/e/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lb/h/k/z$j;->d()Lb/h/k/c;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/k/z$j;->d()Lb/h/k/c;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lb/h/e/b;
    .locals 1

    sget-object v0, Lb/h/e/b;->e:Lb/h/e/b;

    return-object v0
.end method

.method public g()Lb/h/e/b;
    .locals 1

    sget-object v0, Lb/h/e/b;->e:Lb/h/e/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lb/h/k/z$j;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/k/z$j;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/k/z$j;->f()Lb/h/e/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/k/z$j;->d()Lb/h/k/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
