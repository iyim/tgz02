.class public Lcom/taobao/uikit/feature/features/RoundRectFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "RoundRectFeature.java"

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
.field private static sDefaultRadius:F = 6.0f


# instance fields
.field private mFastEnable:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadiusX:F

.field private mRadiusY:F

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeEnable:Z

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokePath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    .line 27
    sget v0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->sDefaultRadius:F

    iput v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusX:F

    .line 29
    iput v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusY:F

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    .line 39
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokeEnable:Z

    return-void
.end method

.method private invalidateHost()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mHost:Landroid/view/View;

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

    .line 98
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokeEnable:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
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

    .line 118
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mHost:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusX:F

    iget p4, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusY:F

    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 120
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 121
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusX:F

    iget p4, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusY:F

    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

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

    .line 89
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRectF:Landroid/graphics/RectF;

    const/16 v1, 0xff

    const/4 v2, 0x4

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

    .line 112
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 113
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 p3, -0x1

    const v0, -0x777778

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 53
    sget-object v2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_radiusX:I

    sget v2, Lcom/taobao/uikit/feature/features/RoundRectFeature;->sDefaultRadius:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusX:F

    .line 57
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_radiusY:I

    sget v2, Lcom/taobao/uikit/feature/features/RoundRectFeature;->sDefaultRadius:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusY:F

    .line 58
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_fastEnable:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    .line 59
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_strokeEnable:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokeEnable:Z

    .line 60
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundFeature_uik_fastColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 61
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_strokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 62
    sget p2, Lcom/taobao/uikit/R$styleable;->RoundRectFeature_uik_strokeWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    if-nez p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    .line 76
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPath:Landroid/graphics/Path;

    .line 82
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePath:Landroid/graphics/Path;

    .line 83
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setFastColor(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setFastEnable(Z)V
    .locals 2

    .line 172
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    .line 173
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mFastEnable:Z

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 181
    :goto_0
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setRadiusX(F)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusX:F

    .line 151
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setRadiusY(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mRadiusY:F

    .line 161
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setStrokeEnable(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokeEnable:Z

    .line 205
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RoundRectFeature;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/RoundRectFeature;->invalidateHost()V

    return-void
.end method
