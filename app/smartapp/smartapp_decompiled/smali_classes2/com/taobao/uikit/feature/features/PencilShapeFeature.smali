.class public Lcom/taobao/uikit/feature/features/PencilShapeFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "PencilShapeFeature.java"

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


# static fields
.field private static final sDefaultRadius:F = 6.0f

.field private static final sTopRatio:F = 0.2f


# instance fields
.field protected mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPath1:Landroid/graphics/Path;

.field private mRadiusX:F

.field private mRadiusY:F

.field private mRectF:Landroid/graphics/RectF;

.field private mTopRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 23
    iput v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 27
    iput v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusX:F

    .line 29
    iput v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusY:F

    return-void
.end method

.method private invalidateHost()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
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

    .line 77
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath1:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

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

    .line 92
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 95
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 97
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    int-to-float p1, p1

    iget p5, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    mul-float p5, p5, p1

    invoke-virtual {p3, p5, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 99
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    div-int/lit8 p5, p2, 0x2

    int-to-float p5, p5

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    iget p5, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    mul-float p5, p5, p1

    int-to-float p2, p2

    invoke-virtual {p3, p5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    iget p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    mul-float p1, p1, p3

    invoke-virtual {p2, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 111
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath1:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusX:F

    iget p4, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusY:F

    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 112
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath1:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRectF:Landroid/graphics/RectF;

    const/16 v1, 0xff

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

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
    .locals 0

    if-eqz p2, :cond_0

    .line 43
    sget-object p3, Lcom/taobao/uikit/R$styleable;->PencilShapeFeature:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    sget p2, Lcom/taobao/uikit/R$styleable;->PencilShapeFeature_uik_radiusX:I

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusX:F

    .line 49
    sget p2, Lcom/taobao/uikit/R$styleable;->PencilShapeFeature_uik_radiusY:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusY:F

    .line 53
    sget p2, Lcom/taobao/uikit/R$styleable;->PencilShapeFeature_uik_topRatio:I

    const p3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath:Landroid/graphics/Path;

    .line 65
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mPath1:Landroid/graphics/Path;

    .line 66
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setRadiusX(F)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusX:F

    .line 138
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->invalidateHost()V

    return-void
.end method

.method public setRadiusY(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mRadiusY:F

    .line 158
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->invalidateHost()V

    return-void
.end method

.method public setTopRatio(F)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->mTopRatio:F

    .line 148
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PencilShapeFeature;->invalidateHost()V

    return-void
.end method
