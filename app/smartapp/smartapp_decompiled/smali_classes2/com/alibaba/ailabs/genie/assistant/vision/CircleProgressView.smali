.class public Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/agui/adapter/R$styleable;->CustomProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$styleable;->CustomProgressBar_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->max:I

    .line 33
    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$styleable;->CustomProgressBar_roundColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundColor:I

    .line 34
    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$styleable;->CustomProgressBar_roundProgressColor:I

    const v0, -0xff0100

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundProgressColor:I

    .line 35
    sget p2, Lcom/alibaba/ailabs/genie/agui/adapter/R$styleable;->CustomProgressBar_roundWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundWidth:F

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 41
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    .line 47
    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 48
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, v1

    .line 64
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    new-instance v5, Landroid/graphics/RectF;

    sub-float v3, v0, v2

    sub-float v4, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-direct {v5, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->roundWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->max:I

    div-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v9, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->paint:Landroid/graphics/Paint;

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 88
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->max:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->max:I

    if-gt p1, v0, :cond_1

    .line 92
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->progress:I

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/CircleProgressView;->postInvalidate()V

    :cond_1
    return-void

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8fdb\u5ea6Progress\u4e0d\u80fd\u5c0f\u4e8e0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
