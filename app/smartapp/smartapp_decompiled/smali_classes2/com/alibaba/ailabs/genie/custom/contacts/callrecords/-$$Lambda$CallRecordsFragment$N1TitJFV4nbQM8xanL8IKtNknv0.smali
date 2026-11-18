.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/-$$Lambda$CallRecordsFragment$N1TitJFV4nbQM8xanL8IKtNknv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/-$$Lambda$CallRecordsFragment$N1TitJFV4nbQM8xanL8IKtNknv0;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/-$$Lambda$CallRecordsFragment$N1TitJFV4nbQM8xanL8IKtNknv0;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->lambda$subscribeRecords$22$CallRecordsFragment(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsWrapper;)V

    return-void
.end method
