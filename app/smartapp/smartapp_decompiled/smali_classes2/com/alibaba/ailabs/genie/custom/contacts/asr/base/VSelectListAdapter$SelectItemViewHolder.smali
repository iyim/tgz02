.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelectItemViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/base/VSelectListAdapter$SelectItemViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    return-object v0
.end method
