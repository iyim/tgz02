.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;
.super Landroid/view/View;
.source "WidgetUIVerticalScrollerBar.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widgetui/widget_interface/WidgetUIRecyclerViewScollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteVerticalScrollBar"


# instance fields
.field private DOT_BITMAP_HEIGHT:I

.field private final DOT_BITMAP_WIDTH:I

.field private isScroll:Z

.field private mBgHeight:I

.field private mBgWidth:I

.field private mDotBitmap:Landroid/graphics/Bitmap;

.field private mDotLeftPosition:I

.field private mDotTopPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mPercent:I

.field private mScroller:Landroid/widget/Scroller;

.field private stopScrolling:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    const/16 v1, 0x2e

    .line 29
    iput v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_WIDTH:I

    const/16 v1, 0x20

    .line 30
    iput v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;-><init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->stopScrolling:Ljava/lang/Runnable;

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    const/16 v0, 0x2e

    .line 29
    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_WIDTH:I

    const/16 v0, 0x20

    .line 30
    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    .line 31
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    .line 32
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance p2, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;-><init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->stopScrolling:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    const/16 p3, 0x2e

    .line 29
    iput p3, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_WIDTH:I

    const/16 p3, 0x20

    .line 30
    iput p3, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    .line 31
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    .line 32
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance p2, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;-><init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->stopScrolling:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    return p1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 4

    .line 112
    iget v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mBgHeight:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    mul-int v0, v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotTopPosition:I

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotLeftPosition:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotTopPosition:I

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 59
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$drawable;->widget_ui_icon_scroll_bar_dot_small:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private updatePercent(FI)V
    .locals 6

    .line 84
    iget v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 93
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->updateProgress()V

    goto :goto_0

    .line 95
    :cond_1
    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getProgressPercent()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mPercent:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 103
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mScroller:Landroid/widget/Scroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->updateProgress()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 66
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mBgWidth:I

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mBgHeight:I

    .line 69
    iget p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mBgWidth:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x42380000    # 46.0f

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mDotLeftPosition:I

    return-void
.end method

.method public onScrollPercentChanged(F)V
    .locals 4

    .line 74
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->isScroll:Z

    const/16 v0, 0x38

    .line 76
    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->DOT_BITMAP_HEIGHT:I

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->stopScrolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->stopScrolling:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->updatePercent(FI)V

    return-void
.end method
