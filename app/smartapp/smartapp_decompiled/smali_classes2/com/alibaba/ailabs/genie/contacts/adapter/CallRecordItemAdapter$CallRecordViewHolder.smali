.class Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CallRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallRecordViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    .line 370
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 371
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$CallRecordViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    return-object v0
.end method
