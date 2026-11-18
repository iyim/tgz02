.class public abstract Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;
.super Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;
.source "VSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;,
        Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter<",
        "TT;",
        "Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VSelectListAdapter"


# instance fields
.field protected mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateVH(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;->onCreateVH(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateVH(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;
    .locals 2

    .line 39
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->select_item_layout:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;

    .line 40
    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;-><init>(Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$OnItemClickListener;

    return-void
.end method
