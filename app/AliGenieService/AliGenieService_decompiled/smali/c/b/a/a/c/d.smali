.class public Lc/b/a/a/c/d;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/view/View;

.field public e:Lc/b/a/a/c/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lc/b/a/a/c/d;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lc/b/a/a/b;->view_ripple:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/c/d;->d:Landroid/view/View;

    iget-object p1, p0, Lc/b/a/a/c/d;->d:Landroid/view/View;

    sget v0, Lc/b/a/a/a;->iv_res:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/a/a/c/d;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public a(Lcom/aligenie/ags/access/AccessService;III)V
    .locals 9

    iget-object v0, p0, Lc/b/a/a/c/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/a/c/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "stroke"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v6, "scaleX"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    const-string v7, "scaleY"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, p0, Lc/b/a/a/c/d;->b:Landroid/widget/ImageView;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v8, v1

    const/4 v1, 0x1

    aput-object v5, v8, v1

    aput-object v6, v8, v2

    const/4 v1, 0x3

    aput-object v3, v8, v1

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    new-instance v2, Lc/b/a/a/c/d$a;

    invoke-direct {v2, p0, v0}, Lc/b/a/a/c/d$a;-><init>(Lc/b/a/a/c/d;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1
    iget-object v0, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    new-instance v7, Lc/b/a/a/c/c;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lc/b/a/a/c/c;-><init>(Lc/b/a/a/c/d;ILcom/aligenie/ags/access/AccessService;II)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    iget-object v0, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const-string v0, "Access"

    const-string v1, "onDetachedFromWindow:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/b/a/a/c/d;->c:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setAnimationIsCompletionListener(Lc/b/a/a/c/f$a;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/c/d;->e:Lc/b/a/a/c/f$a;

    return-void
.end method
