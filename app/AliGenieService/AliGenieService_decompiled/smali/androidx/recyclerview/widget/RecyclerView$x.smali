.class public abstract Landroidx/recyclerview/widget/RecyclerView$x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$x$b;,
        Landroidx/recyclerview/widget/RecyclerView$x$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroidx/recyclerview/widget/RecyclerView$n;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Landroidx/recyclerview/widget/RecyclerView$x$a;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$x$a;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$x$b;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$x$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:Z

    move-object v1, p0

    check-cast v1, Lb/q/d/l;

    .line 19
    iput v0, v1, Lb/q/d/l;->p:I

    iput v0, v1, Lb/q/d/l;->o:I

    const/4 v2, 0x0

    iput-object v2, v1, Lb/q/d/l;->k:Landroid/graphics/PointF;

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$y;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public a(II)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->a(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_3

    :cond_2
    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Z

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 3
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v4

    .line 4
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    if-ne v4, v5, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {p0, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    goto :goto_0

    :cond_4
    const-string v4, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    move-object v4, p0

    check-cast v4, Lb/q/d/l;

    .line 5
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$n;->e()I

    move-result v5

    if-nez v5, :cond_6

    .line 6
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    goto/16 :goto_2

    :cond_6
    iget v5, v4, Lb/q/d/l;->o:I

    sub-int p1, v5, p1

    mul-int/2addr v5, p1

    if-gtz v5, :cond_7

    move p1, v1

    :cond_7
    iput p1, v4, Lb/q/d/l;->o:I

    iget p1, v4, Lb/q/d/l;->p:I

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_8

    move p2, v1

    :cond_8
    iput p2, v4, Lb/q/d/l;->p:I

    iget p1, v4, Lb/q/d/l;->o:I

    if-nez p1, :cond_b

    iget p1, v4, Lb/q/d/l;->p:I

    if-nez p1, :cond_b

    .line 7
    iget p1, v4, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    .line 8
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$x;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_9

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_9

    goto :goto_1

    .line 9
    :cond_9
    iget p2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v3, p2

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p2, v5

    iget v3, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->y:F

    .line 10
    iput-object p1, v4, Lb/q/d/l;->k:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, v4, Lb/q/d/l;->o:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v4, Lb/q/d/l;->p:I

    const/16 p1, 0x2710

    invoke-virtual {v4, p1}, Lb/q/d/l;->b(I)I

    move-result p1

    iget p2, v4, Lb/q/d/l;->o:I

    int-to-float p2, p2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    iget v5, v4, Lb/q/d/l;->p:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iget-object v3, v4, Lb/q/d/l;->i:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, p2, v5, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 11
    :cond_a
    :goto_1
    iget p1, v4, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    .line 12
    iput p1, v2, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 13
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    .line 14
    :cond_b
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    .line 15
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    const/4 p2, 0x1

    if-ltz p1, :cond_c

    move v1, p2

    .line 16
    :cond_c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->g:Landroidx/recyclerview/widget/RecyclerView$x$a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:Z

    if-eqz p1, :cond_d

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()V

    :cond_d
    return-void
.end method

.method public abstract a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "An instance of "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->c:Landroidx/recyclerview/widget/RecyclerView$n;

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$y;

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->e:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->d:Z

    .line 17
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->d(I)Landroid/view/View;

    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->f:Landroid/view/View;

    move-object p1, p0

    check-cast p1, Lb/q/d/l;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->a()V

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x;->h:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
