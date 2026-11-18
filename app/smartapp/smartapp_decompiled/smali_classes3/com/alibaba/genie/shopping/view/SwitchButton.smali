.class public Lcom/alibaba/genie/shopping/view/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final MBTNHEIGHT:D = 0.55

.field private static final OFFSET:I = 0x3


# instance fields
.field private checked:Z

.field private mAnimate:F

.field private mHeight:I

.field private mOnCheckedChangeListener:Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mSelectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    const-string p1, "#2eaa57"

    .line 38
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mSelectColor:I

    return-void
.end method


# virtual methods
.method public getmOnCheckedChangeListener()Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mOnCheckedChangeListener:Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mSelectColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 62
    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mHeight:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const-string v4, "#e6e6e6"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    const v5, 0x3dcccccd    # 0.1f

    sub-float v6, v3, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    sub-float/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    .line 68
    iget-boolean v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    sub-float v3, v5, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    :goto_1
    iput v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mScale:F

    .line 69
    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mScale:F

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v3, v6, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 71
    iget v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mHeight:I

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v6, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getWidth()I

    move-result v3

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-direct {v0, v6, v6, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 77
    iget v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mHeight:I

    add-int/lit8 v8, v0, -0x8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v9, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v0, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 83
    iget-boolean v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    sub-float v3, v5, v3

    :goto_2
    mul-float v0, v0, v3

    .line 84
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v4, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    iget p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mScale:F

    cmpl-float p1, p1, v7

    if-lez p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->invalidate()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe199999999999aL    # 0.55

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mHeight:I

    .line 50
    iget p2, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/view/SwitchButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mAnimate:F

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    .line 110
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mOnCheckedChangeListener:Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 112
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    invoke-interface {v0, v1}, Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;->OnCheckedChanged(Z)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/SwitchButton;->invalidate()V

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public setChecked(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->checked:Z

    return-void
.end method

.method public setmOnCheckedChangeListener(Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/SwitchButton;->mOnCheckedChangeListener:Lcom/alibaba/genie/shopping/view/SwitchButton$OnCheckedChangeListener;

    return-void
.end method
