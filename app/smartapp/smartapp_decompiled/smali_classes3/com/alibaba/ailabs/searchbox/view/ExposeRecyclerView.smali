.class public Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ExposeRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExposeRecyclerView-l"


# instance fields
.field isHasCallOnGlobalLayout:Z

.field private lastExpose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUserVisibleListener:Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;

.field private onlyReportOnce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->onlyReportOnce:Z

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->isHasCallOnGlobalLayout:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->onlyReportOnce:Z

    const/4 p2, 0x0

    .line 118
    iput-boolean p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->isHasCallOnGlobalLayout:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->onlyReportOnce:Z

    const/4 p2, 0x0

    .line 118
    iput-boolean p2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->isHasCallOnGlobalLayout:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->checkItemVisible()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkItemVisible()V
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    sub-int v2, v0, v1

    if-gtz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_4

    .line 100
    iget-object v2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->mUserVisibleListener:Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;

    if-eqz v2, :cond_4

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_2

    .line 103
    iget-object v3, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->mUserVisibleListener:Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;

    invoke-interface {v3, v2}, Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;->onUserVisible(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->onlyReportOnce:Z

    if-nez v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    if-gt v1, v0, :cond_4

    .line 111
    iget-object v2, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->lastExpose:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$2;-><init>(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView$1;-><init>(Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->getListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public setOnlyReportOnce(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->onlyReportOnce:Z

    return-void
.end method

.method public setUserVisibleListener(Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->mUserVisibleListener:Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;

    return-void
.end method
