.class public Lcom/taobao/uikit/feature/features/BinaryPageFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "BinaryPageFeature.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;,
        Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;,
        Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;,
        Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ListView;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;"
    }
.end annotation


# static fields
.field public static final ACTION_PERCENT:Ljava/lang/String; = "Home.PagerDivider.ACTION_PERCENT"

.field public static final EXTRA_HALF:Ljava/lang/String; = "EXTRA_HALF"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "EXTRA_PERCENT"

.field public static final EXTRA_TOUCH:Ljava/lang/String; = "EXTRA_TOUCH"


# instance fields
.field private mAnimationDuration:I

.field private mFirstPageBottomOffset:I

.field private mOnPageChangedListener:Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;

.field private mPagePosition:I

.field private mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

.field private mScrollState:I

.field private mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

.field private mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    .line 59
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    .line 60
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    const/16 v0, 0x258

    .line 62
    iput v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mAnimationDuration:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    return-object p0
.end method

.method static synthetic access$102(Lcom/taobao/uikit/feature/features/BinaryPageFeature;Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    return-object p1
.end method

.method private computeScroll()V
    .locals 10

    .line 157
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    if-ne v0, v1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 162
    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mScrollState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 163
    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    if-le v2, v0, :cond_1

    .line 164
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    goto :goto_0

    :cond_1
    if-ge v2, v1, :cond_2

    .line 166
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    goto :goto_0

    .line 168
    :cond_2
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    .line 170
    :goto_0
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    return-void

    .line 174
    :cond_3
    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    if-lt v2, v1, :cond_a

    if-lt v2, v0, :cond_4

    goto/16 :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    sget-object v2, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    if-ne v0, v2, :cond_a

    .line 178
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 179
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    sub-int/2addr v2, v1

    .line 185
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    sget-object v3, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v2, v3, :cond_7

    .line 188
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    .line 189
    invoke-virtual {v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getStartPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 190
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mOnPageChangedListener:Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;

    if-eqz v2, :cond_5

    .line 191
    iget-object v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    .line 192
    invoke-virtual {v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v3

    .line 191
    invoke-interface {v2, p0, v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;->onPageSelected(Lcom/taobao/uikit/feature/features/BinaryPageFeature;Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;)V

    .line 195
    :cond_5
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v2

    sget-object v3, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    .line 196
    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getStartPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v2

    sget-object v3, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    .line 197
    invoke-virtual {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, v1, v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollLikePullToFresh(Landroid/view/View;Z)V

    goto :goto_1

    .line 201
    :cond_7
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    sget-object v3, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v2, v3, :cond_8

    .line 202
    invoke-direct {p0, v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToFirstPageBottom(Landroid/view/View;)V

    .line 203
    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    goto :goto_1

    .line 204
    :cond_8
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    sget-object v3, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v2, v3, :cond_9

    .line 205
    invoke-direct {p0, v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToLastPageTop(Landroid/view/View;)V

    .line 206
    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    .line 208
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->reset()V

    .line 209
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_a
    :goto_2
    return-void
.end method

.method private init()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 106
    :cond_0
    sget-object p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPageState:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    .line 107
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 109
    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    if-lt v2, v0, :cond_4

    if-lt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v0

    .line 115
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->isRecord()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 118
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mFirstPageBottomOffset:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    .line 121
    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sub-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    .line 122
    sget-object p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    cmpl-float p1, v0, v2

    if-lez p1, :cond_2

    .line 124
    sget-object p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    goto :goto_0

    .line 126
    :cond_2
    sget-object p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startRecord(FLcom/taobao/uikit/feature/features/BinaryPageFeature$Page;)V

    return v1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->setEndY(F)V

    const/4 p2, 0x1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollLikePullToFresh(Landroid/view/View;Z)V

    goto :goto_2

    .line 111
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->reset()V

    :cond_5
    :goto_2
    return v1
.end method

.method private scrollLikePullToFresh(Landroid/view/View;Z)V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v0

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 219
    invoke-direct {p0, v0, v4, v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->sendLocalBroadcastManager(FFZ)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0, v0, v4, v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->sendLocalBroadcastManager(FFZ)V

    .line 222
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToFirstPageBottom(Landroid/view/View;)V

    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    move-result-object v0

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    if-ne v0, v1, :cond_4

    const v0, 0x3dcccccd    # 0.1f

    if-eqz p2, :cond_3

    .line 229
    invoke-direct {p0, v0, v4, v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->sendLocalBroadcastManager(FFZ)V

    goto :goto_1

    .line 231
    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToLastPageTop(Landroid/view/View;)V

    .line 232
    invoke-direct {p0, v0, v4, v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->sendLocalBroadcastManager(FFZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private scrollToFirstPageBottom(Landroid/view/View;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mFirstPageBottomOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 273
    iget v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mAnimationDuration:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    .line 274
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 275
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mFirstPageBottomOffset:I

    sub-int/2addr v1, p1

    .line 277
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast p1, Landroid/widget/ListView;

    new-instance v2, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;-><init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;II)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scrollToLastPageTop(Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    .line 240
    iget v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mAnimationDuration:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 241
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 242
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;-><init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendLocalBroadcastManager(FFZ)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
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

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    new-instance p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;-><init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->computeScroll()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 92
    iput p2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mScrollState:I

    .line 93
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->computeScroll()V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mAnimationDuration:I

    return-void
.end method

.method public setFirstPageBottomOffset(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mFirstPageBottomOffset:I

    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->setHost(Landroid/widget/ListView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ListView;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnPageChangedListener(Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mOnPageChangedListener:Lcom/taobao/uikit/feature/features/BinaryPageFeature$OnPageChangedListener;

    return-void
.end method

.method public setPagePosition(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mPagePosition:I

    return-void
.end method

.method public setTouchOffsetLimit(F)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mTouchOffset:Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->setOffsetLimit(F)V

    return-void
.end method
