.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CallRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallRecordViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;)V
    .locals 1

    .line 410
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 411
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$CallRecordViewHolder;->binding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    return-object v0
.end method
