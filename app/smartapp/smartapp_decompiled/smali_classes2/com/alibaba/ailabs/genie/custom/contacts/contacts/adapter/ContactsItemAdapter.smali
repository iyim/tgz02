.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;
.super Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;
.source "ContactsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_FOOTER:I = 0x1

.field public static final VIEW_ITEM:I


# instance fields
.field public isLoadMore:Z

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

.field private mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->isLoadMore:Z

    return-void
.end method

.method private onBindContactVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 77
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;

    if-eqz v0, :cond_2

    .line 78
    nop

    nop

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;->userAvatar:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;->userAvatar:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;->contacts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasMore()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->isLoadMore:Z

    return v0
.end method

.method public synthetic lambda$onBindContactVH$23$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->showDetailActivity(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V

    return-void
.end method

.method public onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 65
    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;

    .line 66
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->isLoadMore:Z

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->onBindContactVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_item_layout:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    .line 55
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;)V

    return-object p1

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_layout_item_footer:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    .line 58
    new-instance p1, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mFooterBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;)V

    return-object p1
.end method

.method public setIsLoadMoreChange(Z)V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->isLoadMore:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->isLoadMore:Z

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->notifyItemChanged(I)V

    return-void
.end method
