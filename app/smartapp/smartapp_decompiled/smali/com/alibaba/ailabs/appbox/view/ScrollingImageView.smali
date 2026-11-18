.class public Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;
.super Landroid/view/View;
.source "ScrollingImageView.java"


# static fields
.field public static BITMAP_LOADER:Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;


# instance fields
.field private arrayIndex:I

.field private bitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private clipBounds:Landroid/graphics/Rect;

.field private isStarted:Z

.field private maxBitmapHeight:I

.field private offset:F

.field private scene:[I

.field private speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->BITMAP_LOADER:Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    .line 39
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->maxBitmapHeight:I

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->clipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    .line 48
    sget-object v1, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    :try_start_0
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_initialState:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 52
    sget v1, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_speed:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->speed:F

    .line 53
    sget v1, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_sceneLength:I

    const/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 54
    sget v2, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_randomness:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 55
    new-array v3, v0, [I

    if-lez v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isInEditMode()Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    sget v2, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_src:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    :goto_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 62
    sget v2, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_src:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    aget v8, v3, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 70
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    const/4 v4, 0x0

    .line 72
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 74
    array-length v6, v3

    if-lez v6, :cond_3

    array-length v6, v3

    if-ge v4, v6, :cond_3

    .line 75
    aget v6, v3, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    .line 78
    :goto_3
    sget-object v7, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->BITMAP_LOADER:Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_4

    .line 80
    iget-object v9, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->maxBitmapHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->maxBitmapHeight:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 86
    :cond_5
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 87
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    .line 88
    :goto_5
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 89
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 92
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :catchall_0
    move-exception p2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_7
    if-ne v2, v4, :cond_9

    .line 95
    sget-object v1, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->BITMAP_LOADER:Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/appbox/R$styleable;->ParallaxView_src:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageViewBitmapLoader;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 97
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    .line 98
    new-array v1, v5, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    .line 99
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->maxBitmapHeight:I

    goto :goto_6

    .line 101
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :cond_9
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p2, :cond_a

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->start()V

    :cond_a
    return-void

    :catchall_1
    move-exception p2

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method

.method private getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getBitmapLeft(FF)F
    .locals 2

    .line 154
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->speed:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->clipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    sub-float/2addr v0, p2

    return v0

    :cond_0
    return p2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->bitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->clipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 129
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 130
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    .line 131
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    const/4 v1, 0x0

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->clipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 136
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->arrayIndex:I

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->scene:[I

    array-length v4, v4

    rem-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 138
    invoke-direct {p0, v4, v0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->getBitmapLeft(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v5, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-float/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->speed:F

    cmpl-float v0, p1, v3

    if-eqz v0, :cond_3

    .line 143
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->offset:F

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->postInvalidateOnAnimation()V

    nop

    :cond_3
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->maxBitmapHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->speed:F

    .line 183
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->isStarted:Z

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/ScrollingImageView;->invalidate()V

    :cond_0
    return-void
.end method
