.class public Lcom/taobao/android/tbsku/image/PhotoView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field private attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/tbsku/image/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/android/tbsku/image/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lcom/taobao/android/tbsku/image/PhotoView;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 1

    .line 53
    new-instance v0, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    .line 56
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/image/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/taobao/android/tbsku/image/PhotoViewAttacher;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->getSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomable()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p2, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {p2}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 116
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 124
    iget-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/taobao/android/tbsku/image/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/taobao/android/tbsku/image/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/taobao/android/tbsku/image/OnPhotoTapListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/taobao/android/tbsku/image/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/taobao/android/tbsku/image/OnScaleChangedListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/taobao/android/tbsku/image/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/taobao/android/tbsku/image/OnSingleFlingListener;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/taobao/android/tbsku/image/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/taobao/android/tbsku/image/OnViewDragListener;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnViewDragListener(Lcom/taobao/android/tbsku/image/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/taobao/android/tbsku/image/OnViewTapListener;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setOnViewTapListener(Lcom/taobao/android/tbsku/image/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    if-nez v0, :cond_0

    .line 98
    iput-object p1, p0, Lcom/taobao/android/tbsku/image/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/android/tbsku/image/PhotoView;->attacher:Lcom/taobao/android/tbsku/image/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/image/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
