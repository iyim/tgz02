.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;->f$1:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/-$$Lambda$CallRecordItemAdapter$P16Nu0yFMMAAeaM1j1AsFbC1vxQ;->f$1:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/adapter/CallRecordItemAdapter;->lambda$onBindRecordVH$21$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;Landroid/view/View;)V

    return-void
.end method
