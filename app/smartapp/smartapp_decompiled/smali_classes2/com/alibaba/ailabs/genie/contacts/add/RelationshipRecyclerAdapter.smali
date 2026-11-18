.class public Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;
.source "RelationshipRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter<",
        "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
        "Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mSelectedPosition:I

    return-void
.end method


# virtual methods
.method public changeSelectedItem(I)V
    .locals 3

    .line 69
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mLists:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mSelectedPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->setSelected(Z)V

    .line 74
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->updateViewItem(I)V

    :cond_1
    if-le p1, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 77
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mSelectedPosition:I

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->setSelected(Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->updateViewItem(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindDataViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->onBindDataViewHolder(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;I)V

    return-void
.end method

.method public onBindDataViewHolder(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;I)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    .line 39
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->setRelationship(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->ivChecked:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->ivChecked:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 46
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->line:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->line:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;->isSelected()Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 51
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->tvRelationship:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->contacts_relationship_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->tvRelationship:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->tvRelationship:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->contacts_relationship_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->tvRelationship:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_relationship_item:I

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateDataViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->onCreateDataViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDataViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_relationship_item:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    .line 33
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;-><init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
