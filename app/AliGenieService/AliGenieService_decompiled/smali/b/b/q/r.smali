.class public Lb/b/q/r;
.super Landroid/widget/RatingBar;
.source ""


# instance fields
.field public final b:Lb/b/q/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lb/b/a;->ratingBarStyle:I

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/q/r0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/q/p;

    invoke-direct {p1, p0}, Lb/b/q/p;-><init>(Landroid/widget/ProgressBar;)V

    iput-object p1, p0, Lb/b/q/r;->b:Lb/b/q/p;

    iget-object p1, p0, Lb/b/q/r;->b:Lb/b/q/p;

    invoke-virtual {p1, p2, v0}, Lb/b/q/p;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    iget-object p2, p0, Lb/b/q/r;->b:Lb/b/q/p;

    .line 1
    iget-object p2, p2, Lb/b/q/p;->b:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
