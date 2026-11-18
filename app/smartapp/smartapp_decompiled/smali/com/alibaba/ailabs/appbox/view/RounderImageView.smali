.class public Lcom/alibaba/ailabs/appbox/view/RounderImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RounderImageView.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final CENTER:I = 0x1

.field public static final FITXY:I = 0x3

.field public static final TOP:I


# instance fields
.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderSpace:F

.field private borderWidth:F

.field private bottomLeftRadius:F

.field private bottomLeftRadius_x:F

.field private bottomLeftRadius_y:F

.field private bottomRightRadius:F

.field private bottomRightRadius_x:F

.field private bottomRightRadius_y:F

.field private circle:Z

.field private context:Landroid/content/Context;

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private styleType:I

.field private topLeftRadius:F

.field private topLeftRadius_x:F

.field private topLeftRadius_y:F

.field private topRightRadius:F

.field private topRightRadius_x:F

.field private topRightRadius_y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->initAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V
    .locals 4

    .line 304
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    .line 305
    new-array v1, v1, [F

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    .line 307
    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    .line 308
    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    .line 309
    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    .line 310
    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result v2

    const/4 v3, 0x6

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    invoke-direct {p0, v2, p4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->offsetRadius(FF)F

    move-result p4

    const/4 v2, 0x7

    aput p4, v1, v2

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 305
    invoke-virtual {v0, p2, v1, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 312
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 334
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 337
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 339
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 340
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getSrc(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v1, v0, p3

    mul-int v2, p2, p1

    const/4 v3, 0x2

    .line 243
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput p1, v4, v6

    if-ne v1, v2, :cond_0

    .line 246
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v5, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :cond_0
    if-le v1, v2, :cond_1

    .line 250
    div-int/2addr v2, p3

    aput v2, v4, v5

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    .line 255
    div-int/2addr v1, p2

    aput v1, v4, v6

    .line 260
    :cond_2
    :goto_0
    aget p2, v4, v5

    if-le v0, p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 262
    iget p3, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->styleType:I

    if-eqz p3, :cond_f

    if-eq p3, v6, :cond_9

    if-eq p3, v3, :cond_5

    const/4 p2, 0x3

    if-eq p3, p2, :cond_4

    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_4
    const/4 p3, 0x0

    goto/16 :goto_b

    .line 278
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    aget p3, v4, v5

    sub-int p3, v0, p3

    div-int/2addr p3, v3

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 279
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    aget v1, v4, v6

    sub-int v1, p1, v1

    .line 280
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    aget v2, v4, v5

    add-int/2addr v0, v2

    div-int/2addr v0, v3

    goto :goto_4

    :cond_8
    aget v0, v4, v5

    .line 281
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_e

    aget p1, v4, v6

    goto :goto_8

    .line 272
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_a

    aget p3, v4, v5

    sub-int p3, v0, p3

    div-int/2addr p3, v3

    goto :goto_5

    :cond_a
    const/4 p3, 0x0

    .line 273
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    aget v1, v4, v6

    sub-int v1, p1, v1

    div-int/2addr v1, v3

    .line 274
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    aget v2, v4, v5

    add-int/2addr v0, v2

    div-int/2addr v0, v3

    goto :goto_7

    :cond_c
    aget v0, v4, v5

    .line 275
    :goto_7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    aget p1, v4, v6

    goto :goto_8

    :cond_d
    aget p2, v4, v6

    add-int/2addr p1, p2

    div-int/2addr p1, v3

    :cond_e
    :goto_8
    move v5, v1

    goto :goto_b

    .line 265
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    aget p1, v4, v5

    sub-int p1, v0, p1

    div-int/2addr p1, v3

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    .line 267
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_11

    aget p2, v4, v5

    add-int/2addr v0, p2

    div-int/2addr v0, v3

    goto :goto_a

    :cond_11
    aget p2, v4, v5

    move v0, p2

    .line 268
    :goto_a
    aget p2, v4, v6

    move p3, p1

    move p1, p2

    .line 292
    :goto_b
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->context:Landroid/content/Context;

    sget-object v1, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_radiusJS:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->radius:F

    .line 92
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topLeftRadiusJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius:F

    .line 93
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topRightRadiusJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius:F

    .line 94
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomLeftRadiusJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius:F

    .line 95
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomRightRadiusJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius:F

    .line 97
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_scaleTypeJS:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->styleType:I

    .line 99
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_borderWidthJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    .line 100
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_borderSpaceJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderSpace:F

    .line 101
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_borderColorJS:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderColor:I

    .line 104
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topLeftRadius_xJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    .line 105
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topLeftRadius_yJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    .line 106
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topRightRadius_xJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    .line 107
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_topRightRadius_yJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    .line 108
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomLeftRadius_xJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    .line 109
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomLeftRadius_yJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    .line 110
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomRightRadius_xJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    .line 111
    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->JSCircleImageView_bottomRightRadius_yJS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    .line 113
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->initData()V

    return-void
.end method

.method private initRadius()V
    .locals 4

    .line 147
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->radius:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    .line 148
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius:F

    .line 149
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->radius:F

    :cond_1
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius:F

    .line 150
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->radius:F

    :cond_2
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius:F

    .line 151
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->radius:F

    :cond_3
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius:F

    .line 155
    :cond_4
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_5

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius:F

    :cond_5
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    .line 156
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_6

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius:F

    :cond_6
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    .line 158
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius:F

    :cond_7
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    .line 159
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_8

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius:F

    :cond_8
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    .line 161
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_9

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius:F

    :cond_9
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    .line 162
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_a

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius:F

    :cond_a
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    .line 164
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_b

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius:F

    :cond_b
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    .line 165
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius:F

    :cond_c
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    return-void
.end method

.method private offsetRadius(FF)F
    .locals 0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initData()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->initRadius()V

    .line 121
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderSpace:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->circle:Z

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->circle:Z

    if-eqz v0, :cond_2

    .line 138
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getMeasuredWidth()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getMeasuredHeight()I

    move-result v2

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getPaddingLeft()I

    move-result v3

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getPaddingRight()I

    move-result v4

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getPaddingTop()I

    move-result v5

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getPaddingBottom()I

    move-result v6

    .line 183
    iget v7, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 184
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v9, v3

    int-to-float v10, v5

    sub-int v11, v1, v4

    int-to-float v11, v11

    sub-int v12, v2, v6

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    iget v9, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 188
    invoke-virtual {v7, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 190
    iget-object v10, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v10, v9}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    :cond_0
    if-eqz v0, :cond_2

    .line 194
    iget-boolean v7, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->circle:Z

    if-eqz v7, :cond_2

    .line 195
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v5, v5

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-int/2addr v2, v6

    int-to-float v2, v2

    invoke-direct {v7, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderSpace:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float v8, v1, v2

    .line 202
    :cond_1
    invoke-virtual {v7, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p1, v7, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    .line 205
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v7, v3, v8}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    .line 207
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 209
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->getSrc(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 213
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 215
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 392
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderColor:I

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderSpace(F)V
    .locals 0

    .line 388
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderSpace:F

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 383
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderWidth:F

    .line 384
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setBottomLeftRadius(F)V
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomLeftRadius_x(F)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomLeftRadius_y(F)V

    return-void
.end method

.method public setBottomLeftRadius_x(F)V
    .locals 0

    .line 421
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_x:F

    return-void
.end method

.method public setBottomLeftRadius_y(F)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomLeftRadius_y:F

    return-void
.end method

.method public setBottomRightRadius(F)V
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomRightRadius_x(F)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomRightRadius_y(F)V

    return-void
.end method

.method public setBottomRightRadius_x(F)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_x:F

    return-void
.end method

.method public setBottomRightRadius_y(F)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->bottomRightRadius_y:F

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->circle:Z

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopLeftRadius(F)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopRightRadius(F)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomLeftRadius(F)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setBottomRightRadius(F)V

    return-void
.end method

.method public setStyleType(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->styleType:I

    return-void
.end method

.method public setTopLeftRadius(F)V
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopLeftRadius_x(F)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopLeftRadius_y(F)V

    return-void
.end method

.method public setTopLeftRadius_x(F)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_x:F

    return-void
.end method

.method public setTopLeftRadius_y(F)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topLeftRadius_y:F

    return-void
.end method

.method public setTopRightRadius(F)V
    .locals 0

    .line 360
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopRightRadius_x(F)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setTopRightRadius_y(F)V

    return-void
.end method

.method public setTopRightRadius_x(F)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_x:F

    return-void
.end method

.method public setTopRightRadius_y(F)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->topRightRadius_y:F

    return-void
.end method
