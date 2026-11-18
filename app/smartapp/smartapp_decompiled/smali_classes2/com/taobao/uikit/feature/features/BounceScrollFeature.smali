.class public Lcom/taobao/uikit/feature/features/BounceScrollFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "BounceScrollFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;
.implements Lcom/taobao/uikit/feature/callback/MeasureCallback;
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ScrollView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;",
        "Lcom/taobao/uikit/feature/callback/MeasureCallback;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;"
    }
.end annotation


# static fields
.field public static final BOUNCE_TAG:Ljava/lang/String; = "bounce"


# instance fields
.field private mBounceView:Landroid/view/View;

.field private mInitHeadHeight:I

.field private mIsFirstMove:Z

.field private mLastY:F

.field private mMaxHeadHeight:I

.field private mMaxRatio:F

.field private mOnBounceHeightChangeListener:Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxRatio:F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mIsFirstMove:Z

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxHeadHeight:I

    .line 132
    iput v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mInitHeadHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/BounceScrollFeature;Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->findBounceView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeHeight(F)Z
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 197
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mInitHeadHeight:I

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 199
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 201
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxHeadHeight:I

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 203
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 207
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x1

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mOnBounceHeightChangeListener:Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;

    if-eqz v1, :cond_2

    .line 213
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;->onHeightChanged(F)V

    :cond_2
    return p1
.end method

.method private findBounceView(Landroid/view/View;)V
    .locals 4

    .line 96
    instance-of v0, p1, Landroid/view/ViewGroup;

    const-string v1, "bounce"

    if-eqz v0, :cond_2

    .line 98
    check-cast p1, Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->findBounceView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public afterComputeScroll()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 59
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mOnBounceHeightChangeListener:Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 62
    invoke-interface {v1, v0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;->onHeightChanged(F)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_1
    return-void
.end method

.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnMeasure(II)V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxHeadHeight:I

    .line 143
    iget p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mInitHeadHeight:I

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mInitHeadHeight:I

    :cond_1
    return-void
.end method

.method public afterOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnMeasure(II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mInitHeadHeight:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v7, v2

    const/16 v8, 0x12c

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 158
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->computeScroll()V

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mBounceView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mIsFirstMove:Z

    if-nez v2, :cond_3

    if-ne v0, v4, :cond_3

    .line 164
    iget v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mLastY:F

    const/4 v5, 0x0

    cmpg-float v6, v5, v2

    if-gez v6, :cond_3

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    .line 167
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    if-gtz v6, :cond_2

    cmpl-float v6, v5, v2

    if-lez v6, :cond_2

    .line 169
    invoke-direct {p0, v2}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->changeHeight(F)Z

    goto :goto_0

    :cond_2
    cmpg-float v5, v5, v2

    if-gtz v5, :cond_3

    .line 173
    invoke-direct {p0, v2}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->changeHeight(F)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v5, v3, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_3
    :goto_0
    if-ne v0, v4, :cond_4

    .line 181
    iget-boolean v2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mIsFirstMove:Z

    if-eqz v2, :cond_4

    .line 183
    iput-boolean v3, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mIsFirstMove:Z

    goto :goto_1

    :cond_4
    if-eq v0, v4, :cond_5

    .line 187
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mIsFirstMove:Z

    .line 190
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mLastY:F

    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 39
    sget-object v0, Lcom/taobao/uikit/R$styleable;->BounceScrollFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    sget p2, Lcom/taobao/uikit/R$styleable;->BounceScrollFeature_uik_maxRatio:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxRatio:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxRatio:F

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->setHost(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ScrollView;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mScroller:Landroid/widget/Scroller;

    .line 80
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    new-instance v0, Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;-><init>(Lcom/taobao/uikit/feature/features/BounceScrollFeature;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setMaxRatio(F)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mMaxRatio:F

    .line 127
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method

.method public setOnBounceHeightChangeListener(Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->mOnBounceHeightChangeListener:Lcom/taobao/uikit/feature/features/BounceScrollFeature$OnBounceHeightChangeListener;

    return-void
.end method
