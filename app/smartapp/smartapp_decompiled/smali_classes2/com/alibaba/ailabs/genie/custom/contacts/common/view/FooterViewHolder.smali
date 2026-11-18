.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FooterViewHolder.java"


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/FooterViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    return-object v0
.end method
