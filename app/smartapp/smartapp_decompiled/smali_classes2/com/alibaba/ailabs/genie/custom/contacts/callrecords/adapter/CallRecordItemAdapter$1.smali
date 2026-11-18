.class Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;
.super Ljava/lang/Object;
.source "CallRecordItemAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->showDeleteDialog(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

.field final synthetic val$item:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;->val$item:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCenterItemClick(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dialog_delete:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 117
    new-array p1, p1, [I

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;->val$item:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->getId()I

    move-result v0

    aput v0, p1, p2

    .line 118
    new-instance p2, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter$1;)V

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/RecordsRepository;->deleteRecords([ILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_0
    return-void
.end method
