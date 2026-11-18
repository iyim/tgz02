.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "UTRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;
    }
.end annotation


# static fields
.field private static final ExposedGap:I = 0x64

.field private static final TAG:Ljava/lang/String; = "UTRecyclerView"


# instance fields
.field private lastExposePosition:I

.field private mHandler:Landroid/os/Handler;

.field private onExposedListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;

.field private runnable:Ljava/lang/Runnable;

.field private totalScroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    nop

    nop

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->totalScroll:I

    const/16 p1, -0x3e8

    .line 18
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->lastExposePosition:I

    .line 92
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->runnable:Ljava/lang/Runnable;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->exposeVisibleViews()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->totalScroll:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->totalScroll:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->lastExposePosition:I

    return p0
.end method

.method private exposeVisibleViews()V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->onExposedListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getCurrentVisibleRange()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    aget v2, v0, v1

    if-gez v2, :cond_1

    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->onExposedListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-interface {v2, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;->onItemExposed(II)V

    .line 70
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->totalScroll:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->lastExposePosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentVisibleRange()[I
    .locals 8

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 81
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-lez v5, :cond_1

    .line 83
    aget v5, v0, v2

    if-ne v5, v1, :cond_0

    aput v4, v0, v2

    :cond_0
    const/4 v5, 0x1

    aput v4, v0, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTotalScroll()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->totalScroll:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public refreshExposed()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnExposedListener(Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->onExposedListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;

    return-void
.end method
