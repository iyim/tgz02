.class public Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;
.super Ljava/lang/Object;
.source "PagingScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;,
        Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;,
        Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;,
        Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;,
        Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;
    }
.end annotation


# instance fields
.field private firstItemPosition:I

.field private indexPage:I

.field private lastItemPosition:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

.field private mOnPageChangeListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;

.field private mOnScrollListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;

.field private mOnTouchListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;

.field private mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollheight:I

.field private offsetX:I

.field private offsetY:I

.field private pageNum:I

.field private startX:I

.field private startY:I

.field private totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 22
    new-instance v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$1;)V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnScrollListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;

    .line 24
    new-instance v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$1;)V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetY:I

    .line 27
    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetX:I

    .line 30
    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startY:I

    .line 31
    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startX:I

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->lastItemPosition:I

    const/4 v3, -0x2

    .line 36
    iput v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->firstItemPosition:I

    .line 40
    iput v2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->pageNum:I

    .line 44
    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    .line 50
    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->HORIZONTAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    iput-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    .line 283
    new-instance v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$1;)V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnTouchListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetX:I

    return p0
.end method

.method static synthetic access$1002(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnPageChangeListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->getPageIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startY:I

    return p0
.end method

.method static synthetic access$1402(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startX:I

    return p0
.end method

.method static synthetic access$1502(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startX:I

    return p1
.end method

.method static synthetic access$1600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->firstItemPosition:I

    return p0
.end method

.method static synthetic access$1700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->getStartPageIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetY:I

    return p0
.end method

.method static synthetic access$402(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetY:I

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->indexPage:I

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->pageNum:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->isLastVisible()Z

    move-result p0

    return p0
.end method

.method private getPageIndex()I
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    if-ne v0, v1, :cond_0

    .line 299
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetY:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    div-int/2addr v0, v1

    goto :goto_0

    .line 301
    :cond_0
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetX:I

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getStartPageIndex()I
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    if-ne v0, v1, :cond_0

    .line 310
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startY:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    div-int/2addr v0, v1

    goto :goto_0

    .line 312
    :cond_0
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startX:I

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private isLastVisible()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 121
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 122
    nop

    nop

    .line 124
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->lastItemPosition:I

    .line 126
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->firstItemPosition:I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->totalNum:I

    .line 129
    iget v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->totalNum:I

    iget v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->lastItemPosition:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public setIndexPage(I)V
    .locals 1

    .line 333
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->indexPage:I

    .line 334
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z

    return-void
.end method

.method public setOnPageChangeListener(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnPageChangeListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$onPageChangeListener;

    return-void
.end method

.method public setPageNum(I)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->updateLayoutManger()V

    .line 328
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->pageNum:I

    .line 329
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-virtual {p1, v1, v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->onFling(II)Z

    return-void
.end method

.method public setScrollheight(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-gtz p1, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    goto :goto_0

    .line 87
    :cond_0
    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recycleView must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpRecycleView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnScrollListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnTouchListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->updateLayoutManger()V

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recycleView must be not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpRecycleView(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 56
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnFlingListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnScrollListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOnTouchListener:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->updateLayoutManger()V

    if-gtz p2, :cond_0

    .line 63
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    goto :goto_0

    .line 65
    :cond_0
    iput p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mScrollheight:I

    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recycleView must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateLayoutManger()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->HORIZONTAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mOrientation:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startX:I

    .line 105
    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->startY:I

    .line 106
    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetX:I

    .line 107
    iput v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->offsetY:I

    :cond_3
    return-void
.end method
