.class public Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field private attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

.field private maxTouchCount:I

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 1

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    .line 58
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x105

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 274
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->maxTouchCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->maxTouchCount:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getAttacher()Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTouchCount()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->maxTouchCount:I

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->getSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomable()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 263
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnMatrixChangedListener;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnOutsidePhotoTapListener;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnPhotoTapListener;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnScaleChangedListener;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnSingleFlingListener;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnViewDragListener;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnViewDragListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnViewTapListener;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->attacher:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
