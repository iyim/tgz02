.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;
.super Landroid/view/View;
.source "VerticalScrollBar.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/custom/contacts/common/view/OnRecycleViewScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VerticalScrollBar"


# instance fields
.field private mBgHeight:I

.field private mBgWidth:I

.field private mCornerRadius:I

.field private mPercent:I

.field private mScroller:Landroid/widget/Scroller;

.field private mThumbHeight:I

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 6

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgHeight:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbHeight:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    mul-int v0, v0, v2

    div-int/lit16 v0, v0, 0x3e8

    .line 101
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v0

    iget v5, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgWidth:I

    int-to-float v5, v5

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 102
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mCornerRadius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_scrollbar_thumb_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x28

    .line 46
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbHeight:I

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_scrollbar_track_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updatePercent(FI)V
    .locals 6

    .line 69
    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->updateProgress()V

    goto :goto_0

    .line 80
    :cond_1
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getProgressPercent()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mPercent:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->updateProgress()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgWidth:I

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgHeight:I

    .line 60
    iget p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mBgWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mCornerRadius:I

    return-void
.end method

.method public onScrollPercentChanged(F)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->updatePercent(FI)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setThumbHeight(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/VerticalScrollBar;->mThumbHeight:I

    return-void
.end method
