.class public Lcom/taobao/uikit/feature/features/PageNumberFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "PageNumberFeature.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/taobao/uikit/feature/callback/MeasureCallback;
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ListView;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/taobao/uikit/feature/callback/MeasureCallback;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;",
        "Lcom/taobao/uikit/feature/callback/CanvasCallback;"
    }
.end annotation


# static fields
.field private static final PAGETIP_MARGIN_BOTTOM:I = 0x14

.field private static final PAGETIP_MARGIN_RIGHT:I = 0x19

.field public static final SHOW_ALWAYS:I = 0x64

.field public static final SHOW_NONE:I = 0x66

.field public static final SHOW_SCROLLING:I = 0x65


# instance fields
.field private mCurrentPage:I

.field private mLastVisibleItemIndex:I

.field private mPageSize:I

.field private mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

.field private mScrollState:I

.field private mShowType:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mScrollState:I

    const/16 v0, 0x65

    .line 49
    iput v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mShowType:I

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/uikit/feature/features/PageNumberFeature;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mCurrentPage:I

    return p1
.end method

.method private init()V
    .locals 2

    .line 52
    new-instance v0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;-><init>(Lcom/taobao/uikit/feature/features/PageNumberFeature;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    .line 53
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private showPageTip()Z
    .locals 4

    .line 161
    iget v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mShowType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 162
    iget v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mScrollState:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 172
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->showPageTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/uikit/feature/view/TListView;

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    .line 174
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 173
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/uikit/feature/view/TListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;JI)Z

    :cond_0
    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnLayout(ZIIII)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    invoke-virtual {p3}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    iget p3, p3, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginRight:I

    sub-int/2addr p2, p3

    .line 135
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    invoke-virtual {p4}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    iget p4, p4, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginBottom:I

    sub-int/2addr p3, p4

    .line 136
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    iget p5, p5, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginRight:I

    sub-int/2addr p4, p5

    .line 137
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ListView;

    invoke-virtual {p5}, Landroid/widget/ListView;->getHeight()I

    move-result p5

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    iget v0, v0, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->mMarginBottom:I

    sub-int/2addr p5, v0

    .line 133
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->layout(IIII)V

    return-void
.end method

.method public afterOnMeasure(II)V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/view/TListView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/taobao/uikit/feature/view/TListView;->measureChild(Landroid/view/View;III)V

    return-void
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnLayout(ZIIII)V
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

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getCurrentPage()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mCurrentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageSize:I

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 100
    iget p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mLastVisibleItemIndex:I

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p3

    if-eq p1, p3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mLastVisibleItemIndex:I

    .line 103
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageTip:Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;

    iget p3, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mLastVisibleItemIndex:I

    .line 104
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->getHost()Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p3, p4

    iget p4, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageSize:I

    iget v0, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mTotalCount:I

    .line 103
    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/taobao/uikit/feature/features/PageNumberFeature$PageTip;->updatePageIndex(IIII)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 93
    iput p2, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mScrollState:I

    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->setHost(Landroid/widget/ListView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ListView;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 58
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PageNumberFeature;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setPageSize(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mPageSize:I

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mShowType:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/taobao/uikit/feature/features/PageNumberFeature;->mTotalCount:I

    return-void
.end method
