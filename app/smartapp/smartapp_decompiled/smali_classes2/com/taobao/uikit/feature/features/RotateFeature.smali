.class public Lcom/taobao/uikit/feature/features/RotateFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "RotateFeature.java"

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
.field private static final TAG:Ljava/lang/String; = "RotateFeature"

.field private static final sDefaultFrameColor:I = -0x1000000

.field private static final sDefaultFrameWidth:I = 0x6

.field private static final sDefaultRoundX:F = 20.0f

.field private static final sDefaultRoundY:F = 20.0f

.field private static final sRotateDegree:F = 45.0f


# instance fields
.field private dirtyRegion:Landroid/graphics/Region;

.field private mFrameEnable:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRoundX:F

.field private mRoundY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 41
    iput v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundX:F

    .line 42
    iput v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundY:F

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mFrameEnable:Z

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

    .line 161
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mFrameEnable:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 163
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 164
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

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
    .locals 1

    .line 95
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    .line 96
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    mul-float p3, p1, p1

    add-float/2addr p3, p3

    float-to-double p3, p3

    .line 103
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    .line 105
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    div-float/2addr p3, p2

    sub-float p2, p1, p3

    add-float/2addr p3, p1

    .line 106
    invoke-virtual {p4, p2, p2, p3, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    iget p3, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundX:F

    iget p5, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundY:F

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p3, p5, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 109
    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 111
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p3, 0x42340000    # 45.0f

    .line 112
    invoke-virtual {p2, p3, p1, p1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 113
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 115
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->dirtyRegion:Landroid/graphics/Region;

    .line 116
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->dirtyRegion:Landroid/graphics/Region;

    iget-object p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/Region;

    iget-object p4, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mHost:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p4, p5}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-void
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    .locals 2

    const/high16 p3, 0x40c00000    # 6.0f

    const/high16 v0, -0x1000000

    if-eqz p2, :cond_0

    .line 56
    sget-object v1, Lcom/taobao/uikit/R$styleable;->RotateFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    sget p2, Lcom/taobao/uikit/R$styleable;->RotateFeature_uik_roundX:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundX:F

    .line 59
    sget p2, Lcom/taobao/uikit/R$styleable;->RotateFeature_uik_roundY:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundY:F

    .line 60
    sget p2, Lcom/taobao/uikit/R$styleable;->RotateFeature_uik_frameEnable:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mFrameEnable:Z

    .line 61
    sget p2, Lcom/taobao/uikit/R$styleable;->RotateFeature_uik_frameColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 62
    sget p2, Lcom/taobao/uikit/R$styleable;->RotateFeature_uik_frameWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public contain(II)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->dirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public setFrameColor(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFrameEnable(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mFrameEnable:Z

    return-void
.end method

.method public setFrameWidth(F)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setHost(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/RotateFeature;->getHost()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setRoundX(F)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundX:F

    return-void
.end method

.method public setRoundY(F)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/taobao/uikit/feature/features/RotateFeature;->mRoundY:F

    return-void
.end method
