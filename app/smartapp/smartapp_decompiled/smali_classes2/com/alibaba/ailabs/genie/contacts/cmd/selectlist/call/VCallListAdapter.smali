.class public Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;
.source "VCallListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter<",
        "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VCallListAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public synthetic lambda$onBindVH$2$VCallListAdapter(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;ILandroid/view/View;)V
    .locals 0

    .line 40
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;

    if-eqz p3, :cond_0

    .line 41
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->onBindVH(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;I)V

    return-void
.end method

.method public onBindVH(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;I)V
    .locals 4

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;->getRetValue()Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getTargetType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getDeviceTargets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;

    .line 29
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->relationShip:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDevicePosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_260:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v2, v1, v3}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->relationShip:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getRelationShip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->getAvatar()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_260:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 38
    :goto_0
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->indexCount:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;-><init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
