.class public Lcom/taobao/uikit/feature/features/RoundFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "RoundFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/view/View;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/CanvasCallback;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;"
    }
.end annotation


# instance fields
.field private mFastEnable:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathExtraA:Landroid/graphics/Path;

.field private mPathExtraB:Landroid/graphics/Path;

.field private mPathExtraC:Landroid/graphics/Path;

.field private mPathExtraD:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRectOld:Landroid/graphics/Rect;

.field private mRectOut:Landroid/graphics/Rect;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowOffset:I

.field private mShadowOffsetPixel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    return-void
.end method

.method private calcRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 176
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v4, v3

    mul-float v4, v4, v0

    float-to-int v4, v4

    if-gt v4, v2, :cond_0

    sub-int/2addr v2, v4

    .line 185
    div-int/lit8 v0, v2, 0x2

    add-int v2, v0, v4

    goto :goto_0

    :cond_0
    int-to-float v4, v2

    div-float/2addr v4, v0

    float-to-int v0, v4

    sub-int/2addr v3, v0

    .line 191
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    move v1, v3

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    sub-int v4, v2, v0

    .line 195
    iget v5, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffset:I

    mul-int v4, v4, v5

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffsetPixel:I

    .line 196
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOld:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 209
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 210
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOld:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private invalidateHost()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 19

    move-object/from16 v0, p0

    .line 128
    iget-object v1, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v1, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 132
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v2, v1, v9

    if-lez v2, :cond_1

    div-float v2, v9, v10

    goto :goto_0

    :cond_1
    div-float v2, v1, v10

    .line 135
    :goto_0
    iget v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffsetPixel:I

    int-to-float v3, v3

    .line 136
    iget v4, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_2

    cmpg-float v6, v4, v2

    if-gez v6, :cond_2

    sub-float/2addr v2, v4

    add-float/2addr v3, v2

    move/from16 v17, v3

    move v2, v4

    goto :goto_1

    :cond_2
    move/from16 v17, v3

    .line 140
    :goto_1
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOut:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/taobao/uikit/feature/features/RoundFeature;->calcRect(Landroid/graphics/Rect;)V

    .line 141
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v5, v5, v1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraA:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraB:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 145
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraC:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 146
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraD:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 148
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPath:Landroid/graphics/Path;

    div-float v4, v1, v10

    div-float v5, v9, v10

    iget v6, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffsetPixel:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 150
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    cmpl-float v2, v9, v1

    if-lez v2, :cond_3

    .line 152
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraA:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-float v5, v9, v1

    div-float/2addr v5, v10

    add-float v8, v5, v17

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v5, v1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 154
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraB:Landroid/graphics/Path;

    add-float v4, v9, v1

    div-float/2addr v4, v10

    sub-float v10, v4, v17

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v10

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 156
    iget-object v11, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraC:Landroid/graphics/Path;

    const/4 v12, 0x0

    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v13, v8

    move/from16 v14, v17

    move v15, v10

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 158
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraD:Landroid/graphics/Path;

    sub-float v3, v1, v17

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v8

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraA:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-float v2, v1, v9

    div-float/2addr v2, v10

    add-float v18, v2, v17

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v6, v18

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 163
    iget-object v2, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraB:Landroid/graphics/Path;

    add-float v3, v9, v1

    div-float/2addr v3, v10

    sub-float v8, v3, v17

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, v8

    move v5, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 165
    iget-object v11, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraC:Landroid/graphics/Path;

    const/4 v13, 0x0

    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v12, v18

    move v14, v8

    move/from16 v15, v17

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 167
    iget-object v3, v0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraD:Landroid/graphics/Path;

    sub-float v5, v9, v17

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v4, v18

    move v6, v8

    move v7, v9

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraA:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraB:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraC:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraD:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOut:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/RoundFeature;->drawShadow(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 112
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnLayout(ZIIII)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->update()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 97
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectF:Landroid/graphics/RectF;

    const/16 v1, 0xff

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_0
    return-void
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    .line 63
    sget-object v0, Lcom/taobao/uikit/R$styleable;->RoundFeature:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_shadowDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_shadowOffset:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffset:I

    .line 68
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_fastEnable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    .line 69
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_fastColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 71
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    if-nez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectF:Landroid/graphics/RectF;

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOut:Landroid/graphics/Rect;

    .line 86
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPath:Landroid/graphics/Path;

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRectOld:Landroid/graphics/Rect;

    .line 88
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraA:Landroid/graphics/Path;

    .line 89
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraB:Landroid/graphics/Path;

    .line 90
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraC:Landroid/graphics/Path;

    .line 91
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPathExtraD:Landroid/graphics/Path;

    return-void
.end method

.method public getRadius()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    return v0
.end method

.method public setFastColor(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->invalidateHost()V

    return-void
.end method

.method public setFastEnable(Z)V
    .locals 2

    .line 243
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    .line 244
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mFastEnable:Z

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->invalidateHost()V

    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 304
    iget v0, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 305
    iput p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mRadius:F

    .line 306
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->update()V

    .line 307
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->invalidateHost()V

    :cond_0
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->invalidateHost()V

    return-void
.end method

.method public setShadowOffset(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/taobao/uikit/feature/features/RoundFeature;->mShadowOffset:I

    .line 285
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundFeature;->invalidateHost()V

    return-void
.end method
