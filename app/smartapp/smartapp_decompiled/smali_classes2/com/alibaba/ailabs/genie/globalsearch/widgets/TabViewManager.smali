.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;
.super Ljava/lang/Object;
.source "TabViewManager.java"


# instance fields
.field context:Landroid/content/Context;

.field currentContentView:Landroid/view/ViewGroup;

.field private hotListRank:I

.field hotListView:Landroid/widget/HorizontalScrollView;

.field mHandler:Landroid/os/Handler;

.field parentViewGroup:Landroid/view/ViewGroup;

.field searchPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->searchPageMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListRank:I

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->parentViewGroup:Landroid/view/ViewGroup;

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 81
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListRank:I

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setRank(I)V

    .line 84
    iget p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListRank:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListRank:I

    .line 85
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->setDataList(Ljava/util/List;)V

    .line 86
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method buildScrollView()Landroid/widget/HorizontalScrollView;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    const/high16 v5, 0x42c60000    # 99.0f

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 136
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v1, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 138
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    return-object v0
.end method

.method public canBackOnePage()Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->currentContentView:Landroid/view/ViewGroup;

    if-eq v2, v0, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->updateContentView(Landroid/view/ViewGroup;)V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->clearSearchPageMap()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public clearSearchPageMap()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->searchPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method exposeChild(Landroid/view/ViewGroup;)V
    .locals 5

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 157
    instance-of v4, v3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;

    if-eqz v4, :cond_0

    .line 158
    nop

    nop

    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/BaseGroupCard;->exposedCard(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSearchPage(Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->searchPageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public refreshPageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V
    .locals 4

    .line 189
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-ne p1, v0, :cond_2

    .line 190
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 196
    instance-of v3, v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    if-eqz v3, :cond_0

    .line 197
    nop

    nop

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->resetExposedFlag()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager$3;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 208
    :cond_2
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->currentContentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    if-eqz v0, :cond_3

    .line 210
    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->refreshExposed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setContentViewVisible(Z)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->currentContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 165
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showHotListPage(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 68
    iput v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListRank:I

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getTraceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;->traceId:Ljava/lang/String;

    .line 71
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->searchHistory:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getSearchHistory()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 72
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topMusic:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getTopMusic()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 73
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topVideo:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getTopVideo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 74
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topApp:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getTopApp()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 75
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->topSearch:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getTopSearch()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->buildHotCard(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->hotListView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->updateContentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showSearchPage(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getTraceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->traceId:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;-><init>(Landroid/content/Context;)V

    const-string v3, "all"

    .line 96
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    if-eqz p3, :cond_1

    .line 99
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getCode()I

    move-result p3

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_5

    .line 113
    new-instance p3, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "header"

    invoke-direct {p3, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 116
    :cond_5
    :goto_1
    invoke-virtual {v2, v0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->searchPageMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->getContentView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->getContentView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->updateContentView(Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_page_search_empty:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->updateContentView(Landroid/view/ViewGroup;)V

    :goto_2
    return-void
.end method

.method public updateContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->currentContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->parentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->parentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->currentContentView:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->setContentViewVisible(Z)V

    return-void
.end method
