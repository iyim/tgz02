.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 58
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public addDataList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public abstract onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
