.class public Lcom/taobao/uikit/component/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"


# static fields
.field private static final DEFAULT_CYCLE_INTERVAL_MILLS:I = 0xbb8


# instance fields
.field private mAutoScroll:Z

.field protected mIndicator:Lcom/taobao/uikit/component/IndicatorView;

.field private mRatio:F

.field private mScrollInterval:I

.field private mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

.field protected mViewPager:Lcom/taobao/uikit/component/LoopViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xbb8

    .line 26
    iput v0, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, v1, v0}, Lcom/taobao/uikit/component/Banner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xbb8

    .line 26
    iput v0, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/component/Banner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xbb8

    .line 26
    iput v0, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/component/Banner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private doTimerEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/component/Banner;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget p2, Lcom/taobao/uikit/R$layout;->uik_banner:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/taobao/uikit/component/Banner;->initView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    sget-object v0, Lcom/taobao/uikit/R$styleable;->Banner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    sget p2, Lcom/taobao/uikit/R$styleable;->Banner_uik_autoScrollInterval:I

    const/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    .line 61
    sget p2, Lcom/taobao/uikit/R$styleable;->Banner_uik_autoScroll:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    .line 62
    sget p2, Lcom/taobao/uikit/R$styleable;->Banner_uik_ratio:I

    const/high16 p3, 0x3ea00000    # 0.3125f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/Banner;->mRatio:F

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private initTimer()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lcom/taobao/uikit/utils/HandlerTimer;

    iget v1, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    int-to-long v1, v1

    new-instance v3, Lcom/taobao/uikit/component/Banner$2;

    invoke-direct {v3, p0}, Lcom/taobao/uikit/component/Banner$2;-><init>(Lcom/taobao/uikit/component/Banner;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/uikit/utils/HandlerTimer;-><init>(JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/HandlerTimer;->start()V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .line 68
    sget v0, Lcom/taobao/uikit/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/LoopViewPager;

    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    .line 69
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    iget v1, p0, Lcom/taobao/uikit/component/Banner;->mRatio:F

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setRatio(F)V

    .line 70
    sget v0, Lcom/taobao/uikit/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/component/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/component/IndicatorView;

    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mIndicator:Lcom/taobao/uikit/component/IndicatorView;

    .line 71
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    new-instance v1, Lcom/taobao/uikit/component/Banner$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/component/Banner$1;-><init>(Lcom/taobao/uikit/component/Banner;)V

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/LoopViewPager;->setOnPageChangeListener(Lcom/taobao/uikit/component/LoopViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/Banner;->doTimerEvent(Landroid/view/MotionEvent;)V

    .line 172
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 115
    invoke-direct {p0}, Lcom/taobao/uikit/component/Banner;->initTimer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 204
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/taobao/uikit/component/Banner;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->start()V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->stop()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/uikit/component/Banner;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mTimer:Lcom/taobao/uikit/utils/HandlerTimer;

    invoke-virtual {p1}, Lcom/taobao/uikit/utils/HandlerTimer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/component/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/taobao/uikit/component/Banner;->mIndicator:Lcom/taobao/uikit/component/IndicatorView;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/component/IndicatorView;->setTotal(I)V

    .line 148
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mIndicator:Lcom/taobao/uikit/component/IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/component/IndicatorView;->setIndex(I)V

    return-void
.end method

.method public setAutoScroll(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/taobao/uikit/component/Banner;->mAutoScroll:Z

    .line 137
    invoke-direct {p0}, Lcom/taobao/uikit/component/Banner;->initTimer()V

    return-void
.end method

.method public setLayout(I)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/taobao/uikit/component/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/Banner;->setLayout(Landroid/view/View;)V

    return-void
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 1

    .line 156
    sget v0, Lcom/taobao/uikit/R$id;->viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/taobao/uikit/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/taobao/uikit/component/Banner;->removeAllViews()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/component/Banner;->addView(Landroid/view/View;)V

    .line 161
    invoke-direct {p0}, Lcom/taobao/uikit/component/Banner;->initView()V

    return-void

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "banner need two views which\'s are viewpager and indicator"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRatio(F)V
    .locals 1

    .line 165
    iput p1, p0, Lcom/taobao/uikit/component/Banner;->mRatio:F

    .line 166
    iget-object p1, p0, Lcom/taobao/uikit/component/Banner;->mViewPager:Lcom/taobao/uikit/component/LoopViewPager;

    iget v0, p0, Lcom/taobao/uikit/component/Banner;->mRatio:F

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/component/LoopViewPager;->setRatio(F)V

    return-void
.end method

.method public setScrollInterval(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/taobao/uikit/component/Banner;->mScrollInterval:I

    .line 142
    invoke-direct {p0}, Lcom/taobao/uikit/component/Banner;->initTimer()V

    return-void
.end method
