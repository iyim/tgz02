.class public abstract Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;,
        Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mItemClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;

.field protected mItemLongClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;

.field protected mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;

    .line 25
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemLongClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    return-void
.end method

.method private setListener(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemLongClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;

    if-eqz v0, :cond_1

    .line 110
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->notifyItemInserted(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public abstract onBindDataViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->setListener(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 90
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->id_item_recycle_view:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->onBindDataViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public abstract onCreateDataViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
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

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->onCreateDataViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public removeItem(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;

    return-void
.end method

.method public setItemLongClickListener(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemLongClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemLongClickListener;

    return-void
.end method

.method public setLists(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateViewItem(I)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->notifyItemChanged(I)V

    return-void
.end method
