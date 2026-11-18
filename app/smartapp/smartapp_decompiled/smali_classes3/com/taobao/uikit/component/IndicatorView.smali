.class public Lcom/taobao/uikit/component/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# instance fields
.field private mDiameter:I

.field private mFocusColor:I

.field private mGapMargin:I

.field private mIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTotal:I

.field private mUnfocusColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/component/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/component/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 24
    iput p3, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    const-string v1, "#ff5000"

    .line 28
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mFocusColor:I

    const-string v1, "#7fffffff"

    .line 30
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mUnfocusColor:I

    const-string v1, "#7f666666"

    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeColor:I

    const/4 v1, 0x4

    .line 34
    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    .line 36
    iget v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    const/16 v1, 0x8

    .line 38
    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeWidth:F

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p2, :cond_0

    .line 59
    sget-object v1, Lcom/taobao/uikit/R$styleable;->IndicatorView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_focusColor:I

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mFocusColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mFocusColor:I

    .line 61
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_unfocusColor:I

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mUnfocusColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mUnfocusColor:I

    .line 62
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_strokeColor:I

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeColor:I

    .line 63
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_strokeWidth:I

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeWidth:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeWidth:F

    .line 64
    iget-object v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_total:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    .line 66
    sget v1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_index:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    .line 67
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->judgeIndex()V

    .line 69
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    .line 70
    sget v0, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_indicatorRadius:I

    iget v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    .line 71
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    .line 72
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p3, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    .line 73
    sget p1, Lcom/taobao/uikit/R$styleable;->IndicatorView_uik_gapMargin:I

    iget p3, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 3

    .line 127
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    iget v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    mul-int v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingRight()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private judgeIndex()V
    .locals 3

    .line 132
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    .line 137
    :cond_0
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 139
    iput v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getGapMargin()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 147
    iget v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 149
    iget v1, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    iget v2, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 151
    :goto_0
    iget v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    if-ge v0, v3, :cond_1

    .line 153
    iget v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    if-ne v0, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/uikit/component/IndicatorView;->mFocusColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    iget v4, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    add-int/2addr v3, v4

    mul-int v3, v3, v0

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/taobao/uikit/component/IndicatorView;->mUnfocusColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    iget v4, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    add-int/2addr v3, v4

    mul-int v3, v3, v0

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget v3, p0, Lcom/taobao/uikit/component/IndicatorView;->mDiameter:I

    iget v5, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    add-int/2addr v3, v5

    mul-int v3, v3, v0

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v5, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/taobao/uikit/component/IndicatorView;->mStrokeWidth:F

    mul-float v7, v7, v6

    sub-float/2addr v5, v7

    iget-object v6, p0, Lcom/taobao/uikit/component/IndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 81
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 85
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->getDesiredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->getDesiredWidth()I

    move-result v4

    if-ne v0, v2, :cond_1

    .line 100
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-ne v1, v3, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->getDesiredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->getDesiredHeight()I

    move-result v0

    if-ne v1, v2, :cond_3

    .line 114
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v0

    .line 117
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/component/IndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFocusColor(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mFocusColor:I

    return-void
.end method

.method public setGapMargin(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mGapMargin:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mIndex:I

    .line 192
    invoke-direct {p0}, Lcom/taobao/uikit/component/IndicatorView;->judgeIndex()V

    .line 193
    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->invalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mRadius:I

    return-void
.end method

.method public setTotal(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 179
    :cond_0
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mTotal:I

    .line 180
    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->requestLayout()V

    .line 181
    invoke-virtual {p0}, Lcom/taobao/uikit/component/IndicatorView;->invalidate()V

    return-void
.end method

.method public setUnfocusColor(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/taobao/uikit/component/IndicatorView;->mUnfocusColor:I

    return-void
.end method
