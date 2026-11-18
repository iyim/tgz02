.class Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CallRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    .line 383
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 384
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$FooterViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    return-object v0
.end method
