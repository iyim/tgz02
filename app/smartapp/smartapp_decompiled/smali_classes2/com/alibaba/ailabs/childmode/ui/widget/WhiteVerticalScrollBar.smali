.class public Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;
.super Landroid/view/View;
.source "WhiteVerticalScrollBar.java"

# interfaces
.implements Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteVerticalScrollBar"


# instance fields
.field private dotBitmap:Landroid/graphics/Bitmap;

.field private mBgHeight:I

.field private mBgWidth:I

.field private mCornerRadius:I

.field private mPercent:I

.field private mScroller:Landroid/widget/Scroller;

.field private mThumbHeight:I

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mTrackPaint:Landroid/graphics/Paint;

.field private reSizeDotBitmap:Landroid/graphics/Bitmap;

.field private startPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 4

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 129
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgHeight:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0x3e8

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->reSizeDotBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->startPosition:I

    int-to-float v2, v2

    int-to-float v0, v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 51
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/setting/R$color;->scrollbar_thumb_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbHeight:I

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/setting/R$color;->scrollbar_track_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/setting/R$drawable;->icon_scroll_bar_dot_small:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x428a0000    # 69.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float p1, p1

    int-to-float v1, v3

    div-float/2addr p1, v1

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 69
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->reSizeDotBitmap:Landroid/graphics/Bitmap;

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->dotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private updatePercent(FI)V
    .locals 6

    .line 100
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 109
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->updateProgress()V

    goto :goto_0

    .line 111
    :cond_1
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getProgressPercent()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mPercent:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 119
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mScroller:Landroid/widget/Scroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->updateProgress()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgWidth:I

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgHeight:I

    .line 90
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mBgWidth:I

    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mCornerRadius:I

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41d80000    # 27.0f

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->startPosition:I

    return-void
.end method

.method public onScrollPercentChanged(F)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->updatePercent(FI)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setThumbHeight(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/WhiteVerticalScrollBar;->mThumbHeight:I

    return-void
.end method
