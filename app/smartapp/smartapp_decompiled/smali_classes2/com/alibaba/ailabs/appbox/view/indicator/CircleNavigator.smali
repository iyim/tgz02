.class public Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;
.super Landroid/view/View;
.source "CircleNavigator.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/view/indicator/IPagerNavigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;
    }
.end annotation


# instance fields
.field private mCircleClickListener:Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;

.field private mCircleColor:I

.field private mCirclePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleSpacing:I

.field private mCurrentIndex:I

.field private mDownX:F

.field private mDownY:F

.field private mFollowTouch:Z

.field private mIndicatorX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mStartInterpolator:Landroid/view/animation/Interpolator;

.field private mStrokeWidth:I

.field private mTotalCount:I

.field private mTouchSlop:I

.field private mTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    .line 41
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mFollowTouch:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 108
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mIndicatorX:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchSlop:I

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 50
    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 51
    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleSpacing:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 52
    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 88
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTotalCount:I

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleSpacing:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getPaddingLeft()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getPaddingRight()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private prepareCirclePoints()V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTotalCount:I

    if-lez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 123
    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleSpacing:I

    add-int/2addr v4, v5

    .line 124
    iget v5, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    float-to-int v1, v5

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v3, v1

    const/4 v1, 0x0

    .line 125
    :goto_0
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTotalCount:I

    if-ge v1, v2, :cond_0

    .line 126
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v5, v3

    int-to-float v6, v0

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mIndicatorX:F

    :cond_1
    return-void
.end method


# virtual methods
.method public getCircleClickListener()Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleClickListener:Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;

    return-object v0
.end method

.method public getCircleColor()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleColor:I

    return v0
.end method

.method public getCircleCount()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTotalCount:I

    return v0
.end method

.method public getCircleSpacing()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleSpacing:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    return v0
.end method

.method public getStartInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mFollowTouch:Z

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchable:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->prepareCirclePoints()V

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->drawCircles(Landroid/graphics/Canvas;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->drawIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->prepareCirclePoints()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 136
    iget-boolean p3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mFollowTouch:Z

    if-eqz p3, :cond_1

    .line 137
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 146
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mIndicatorX:F

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 189
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCurrentIndex:I

    .line 190
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mFollowTouch:Z

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCurrentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mIndicatorX:F

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleClickListener:Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;

    if-eqz v2, :cond_4

    .line 166
    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 169
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCirclePoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 171
    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    move v1, v2

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleClickListener:Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;->onClick(I)V

    goto :goto_1

    .line 158
    :cond_3
    iget-boolean v2, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchable:Z

    if-eqz v2, :cond_4

    .line 159
    iput v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mDownX:F

    .line 160
    iput v1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mDownY:F

    return v3

    .line 184
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCircleClickListener(Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchable:Z

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleClickListener:Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator$OnCircleClickListener;

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleColor:I

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    return-void
.end method

.method public setCircleCount(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTotalCount:I

    return-void
.end method

.method public setCircleSpacing(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mCircleSpacing:I

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->prepareCirclePoints()V

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mFollowTouch:Z

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mRadius:I

    .line 225
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->prepareCirclePoints()V

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    return-void
.end method

.method public setStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    .line 264
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStartInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mStrokeWidth:I

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->invalidate()V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/indicator/CircleNavigator;->mTouchable:Z

    return-void
.end method
