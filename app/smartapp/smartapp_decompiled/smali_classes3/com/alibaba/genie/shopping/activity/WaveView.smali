.class public Lcom/alibaba/genie/shopping/activity/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field private isFill:Z

.field private mAlphas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:I

.field private mImageRadius:I

.field private mIsWave:Z

.field private mMaxRadius:Ljava/lang/Integer;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/activity/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/activity/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mColor:I

    const/16 v0, 0x32

    .line 23
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mWidth:I

    const/16 v0, 0x12c

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mIsWave:Z

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->isFill:Z

    .line 54
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->init()V

    .line 55
    sget-object v1, Lcom/alibaba/ailabs/genie/shopping/R$styleable;->WaveView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$styleable;->WaveView_wave_color:I

    iget p3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mColor:I

    .line 57
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$styleable;->WaveView_wave_width:I

    iget p3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mWidth:I

    .line 58
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$styleable;->WaveView_wave_coreImageRadius:I

    iget p3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addWave()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isFill()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->isFill:Z

    return v0
.end method

.method public isWave()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mIsWave:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 97
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 100
    iget-boolean v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->isFill:Z

    const/high16 v4, 0x40a00000    # 5.0f

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/high16 v1, 0x437f0000    # 255.0f

    .line 113
    iget v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mAlphas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mRadius:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mWidth:I

    if-ne p1, v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->addWave()V

    .line 128
    :cond_4
    iget-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mIsWave:Z

    if-eqz p1, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->invalidate()V

    :cond_5
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->getWidth()I

    move-result p1

    :goto_0
    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mColor:I

    return-void
.end method

.method public setFill(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->isFill:Z

    return-void
.end method

.method public setImageRadius(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mImageRadius:I

    return-void
.end method

.method public setMaxRadius(I)V
    .locals 0

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mMaxRadius:Ljava/lang/Integer;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mWidth:I

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mIsWave:Z

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/WaveView;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/WaveView;->mIsWave:Z

    return-void
.end method
