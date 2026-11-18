.class public Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSearchAdapter-l"

.field public static final TYPE_SEARCH_ITEM_1R_2C:I = 0x271c

.field public static final TYPE_SEARCH_ITEM_TITLE:I = 0x271a

.field public static final TYPE_SEARCH_RECOMMEND_ITEM_1R_6C:I = 0x2720


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private recommendItemCount:I

.field private reportMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private searchItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    .line 39
    iput v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->recommendItemCount:I

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->reportMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    .line 111
    iget v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 112
    iget v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    div-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    .line 114
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->recommendItemCount:I

    .line 117
    iget v2, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->recommendItemCount:I

    add-int/2addr v1, v2

    .line 118
    iget v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->recommendItemCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 131
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x271c

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 p1, 0x271a

    return p1

    :cond_1
    const/16 p1, 0x2720

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSearchItemCount()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder -- pos ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", holder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppSearchAdapter-l"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", data is null , return ... "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x1

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->getItemViews()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;I)V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->getItemViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;I)V

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;

    if-eqz v0, :cond_2

    .line 92
    nop

    nop

    goto :goto_0

    .line 93
    :cond_2
    instance-of v0, p1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;

    if-eqz v0, :cond_3

    .line 94
    nop

    nop

    .line 95
    iget v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->searchItemCount:I

    div-int/lit8 v2, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    sub-int/2addr p2, v2

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getRecommendAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/16 v0, 0x271a

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x271c

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2720

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_140_176_one_fork_appsearch:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_app_search_1r_2c:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_app_search_market_title:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
