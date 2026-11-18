.class public Lcom/alibaba/ailabs/systemui/view/VolumeOval;
.super Landroid/view/View;
.source "VolumeOval.java"


# instance fields
.field private final mCircleWidth:F

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mOuterRectF:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPro:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 16
    iput p1, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mCircleWidth:F

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    .line 29
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    const-string v0, "#aa212528"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance p2, Landroid/graphics/RectF;

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mOuterRectF:Landroid/graphics/RectF;

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerRectF:Landroid/graphics/RectF;

    const/16 p1, 0x1e

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->setPro(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mOuterRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 70
    iget-object v7, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPro:I

    int-to-float v9, v0

    iget-object v11, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 51
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mOuterRectF:Landroid/graphics/RectF;

    .line 53
    new-instance p3, Landroid/graphics/RectF;

    const/high16 p4, 0x41000000    # 8.0f

    sub-float/2addr p1, p4

    sub-float/2addr p2, p4

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mInnerRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setPro(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x168

    .line 58
    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->mPro:I

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/VolumeOval;->invalidate()V

    return-void
.end method
