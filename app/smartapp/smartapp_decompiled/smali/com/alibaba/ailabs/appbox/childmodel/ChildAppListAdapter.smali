.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChildAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildAppListAdapter"


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPageType:I

.field options:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mPageType:I

    .line 36
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v1, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 39
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->dataList:Ljava/util/List;

    .line 42
    iput p3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mPageType:I

    return-void
.end method

.method private onBindType3(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 64
    check-cast p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    const-string v1, "market_store_item_show"

    .line 69
    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;->bindData(Ljava/lang/Object;)V

    return-void
.end method

.method private reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mPageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->onBindType3(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
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

    .line 49
    iget p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mPageType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 50
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_child_app_market_three_one:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
