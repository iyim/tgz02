.class public Lb/h/k/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/k/z$c;,
        Lb/h/k/z$b;,
        Lb/h/k/z$a;,
        Lb/h/k/z$d;,
        Lb/h/k/z$i;,
        Lb/h/k/z$h;,
        Lb/h/k/z$g;,
        Lb/h/k/z$f;,
        Lb/h/k/z$e;,
        Lb/h/k/z$j;
    }
.end annotation


# static fields
.field public static final b:Lb/h/k/z;


# instance fields
.field public final a:Lb/h/k/z$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lb/h/k/z$i;->o:Lb/h/k/z;

    goto :goto_0

    :cond_0
    sget-object v0, Lb/h/k/z$j;->b:Lb/h/k/z;

    :goto_0
    sput-object v0, Lb/h/k/z;->b:Lb/h/k/z;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/h/k/z$i;

    invoke-direct {v0, p0, p1}, Lb/h/k/z$i;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/h/k/z$h;

    invoke-direct {v0, p0, p1}, Lb/h/k/z$h;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/h/k/z$g;

    invoke-direct {v0, p0, p1}, Lb/h/k/z$g;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lb/h/k/z$f;

    invoke-direct {v0, p0, p1}, Lb/h/k/z$f;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    iget-object p1, p1, Lb/h/k/z;->a:Lb/h/k/z$j;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lb/h/k/z$i;

    if-eqz v0, :cond_0

    new-instance v0, Lb/h/k/z$i;

    move-object v1, p1

    check-cast v1, Lb/h/k/z$i;

    invoke-direct {v0, p0, v1}, Lb/h/k/z$i;-><init>(Lb/h/k/z;Lb/h/k/z$i;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lb/h/k/z$h;

    if-eqz v0, :cond_1

    new-instance v0, Lb/h/k/z$h;

    move-object v1, p1

    check-cast v1, Lb/h/k/z$h;

    invoke-direct {v0, p0, v1}, Lb/h/k/z$h;-><init>(Lb/h/k/z;Lb/h/k/z$h;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Lb/h/k/z$g;

    if-eqz v0, :cond_2

    new-instance v0, Lb/h/k/z$g;

    move-object v1, p1

    check-cast v1, Lb/h/k/z$g;

    invoke-direct {v0, p0, v1}, Lb/h/k/z$g;-><init>(Lb/h/k/z;Lb/h/k/z$g;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v0, p1, Lb/h/k/z$f;

    if-eqz v0, :cond_3

    new-instance v0, Lb/h/k/z$f;

    move-object v1, p1

    check-cast v1, Lb/h/k/z$f;

    invoke-direct {v0, p0, v1}, Lb/h/k/z$f;-><init>(Lb/h/k/z;Lb/h/k/z$f;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lb/h/k/z$e;

    if-eqz v0, :cond_4

    new-instance v0, Lb/h/k/z$e;

    move-object v1, p1

    check-cast v1, Lb/h/k/z$e;

    invoke-direct {v0, p0, v1}, Lb/h/k/z$e;-><init>(Lb/h/k/z;Lb/h/k/z$e;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lb/h/k/z$j;

    invoke-direct {v0, p0}, Lb/h/k/z$j;-><init>(Lb/h/k/z;)V

    :goto_0
    iput-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {p1, p0}, Lb/h/k/z$j;->a(Lb/h/k/z;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lb/h/k/z$j;

    invoke-direct {p1, p0}, Lb/h/k/z$j;-><init>(Lb/h/k/z;)V

    iput-object p1, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    :goto_1
    return-void
.end method

.method public static a(Lb/h/e/b;IIII)Lb/h/e/b;
    .locals 5

    iget v0, p0, Lb/h/e/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lb/h/e/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lb/h/e/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lb/h/e/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/h/e/b;->a(IIII)Lb/h/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;)Lb/h/k/z;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/h/k/z;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/k/z;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/k/z;
    .locals 2

    new-instance v0, Lb/h/k/z;

    if-eqz p0, :cond_1

    invoke-direct {v0, p0}, Lb/h/k/z;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lb/h/k/q;->s(Landroid/view/View;)Lb/h/k/z;

    move-result-object p0

    .line 1
    iget-object v1, v0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v1, p0}, Lb/h/k/z$j;->b(Lb/h/k/z;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 3
    iget-object p1, v0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {p1, p0}, Lb/h/k/z$j;->a(Landroid/view/View;)V

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->d:I

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0, p1}, Lb/h/k/z$j;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->g()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->b:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v0}, Lb/h/k/z$j;->h()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/h/k/z;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb/h/k/z;

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    iget-object p1, p1, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-static {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    instance-of v1, v0, Lb/h/k/z$e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/h/k/z$e;

    iget-object v0, v0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/h/k/z;->a:Lb/h/k/z$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/h/k/z$j;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
