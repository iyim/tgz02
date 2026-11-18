.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;
.super Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter;
.source "VCallListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VCallListAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public synthetic lambda$onBindVH$26$VCallListAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;ILandroid/view/View;)V
    .locals 0

    .line 30
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$OnItemClickListener;

    if-eqz p3, :cond_0

    .line 31
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$OnItemClickListener;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindVH(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->onBindVH(Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;I)V

    return-void
.end method

.method public onBindVH(Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;I)V
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;->getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;->getRetValue()Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->setContact(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;)V

    .line 27
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->indexCount:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->avatar:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->getContactsAvatarBg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->contactsItem:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/-$$Lambda$VCallListAdapter$C6jXpBBsZ44fkrARE-nAeDcNpkw;

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/-$$Lambda$VCallListAdapter$C6jXpBBsZ44fkrARE-nAeDcNpkw;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/asr/call/VCallListAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItem;I)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
