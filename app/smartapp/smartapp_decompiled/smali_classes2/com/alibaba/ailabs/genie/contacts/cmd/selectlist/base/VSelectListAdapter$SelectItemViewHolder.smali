.class public Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelectItemViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/base/VSelectListAdapter$SelectItemViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding;

    return-object v0
.end method
