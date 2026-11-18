.class Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RecordReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Receiver - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_records"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6dff052

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.alibaba.ailabs.genie.custom.contacts.record"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown broadcast: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "callLog"

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;)Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 63
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;)Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    move-result-object p2

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;->onReceive(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V

    :cond_5
    :goto_1
    return-void
.end method
