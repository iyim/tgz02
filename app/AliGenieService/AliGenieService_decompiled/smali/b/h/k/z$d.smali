.class public Lb/h/k/z$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/h/k/z;

.field public b:[Lb/h/e/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/h/k/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/h/k/z;-><init>(Lb/h/k/z;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/h/k/z$d;->a:Lb/h/k/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lb/h/k/z$d;->b:[Lb/h/e/b;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lb/h/k/z$d;->b:[Lb/h/e/b;

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(I)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1
    iget v2, v0, Lb/h/e/b;->a:I

    iget v3, v1, Lb/h/e/b;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Lb/h/e/b;->b:I

    iget v4, v1, Lb/h/e/b;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lb/h/e/b;->c:I

    iget v5, v1, Lb/h/e/b;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v0, v0, Lb/h/e/b;->d:I

    iget v1, v1, Lb/h/e/b;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lb/h/e/b;->a(IIII)Lb/h/e/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lb/h/k/z$d;->d(Lb/h/e/b;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lb/h/k/z$d;->d(Lb/h/e/b;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lb/h/k/z$d;->b:[Lb/h/e/b;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lb/h/k/z$d;->c(Lb/h/e/b;)V

    :cond_3
    iget-object v0, p0, Lb/h/k/z$d;->b:[Lb/h/e/b;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lb/h/k/z$d;->a(Lb/h/e/b;)V

    :cond_4
    iget-object v0, p0, Lb/h/k/z$d;->b:[Lb/h/e/b;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lb/h/k/z$d;->e(Lb/h/e/b;)V

    :cond_5
    return-void
.end method

.method public a(Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method public b()Lb/h/k/z;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method public c(Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method public d(Lb/h/e/b;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public e(Lb/h/e/b;)V
    .locals 0

    return-void
.end method
