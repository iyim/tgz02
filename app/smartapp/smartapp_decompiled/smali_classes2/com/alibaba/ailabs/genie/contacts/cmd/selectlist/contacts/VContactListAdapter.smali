.class public Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;
.source "VContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter<",
        "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VContactListAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public synthetic lambda$onBindVH$6$VContactListAdapter(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;ILandroid/view/View;)V
    .locals 1

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VContactListAdapter"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;

    if-eqz p3, :cond_0

    .line 38
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->onBindVH(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;I)V

    return-void
.end method

.method public onBindVH(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;I)V
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

    .line 26
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->isDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->relationShip:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->relationShip:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getRelationShip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;->getAvatar()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_260:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 34
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->indexCount:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
