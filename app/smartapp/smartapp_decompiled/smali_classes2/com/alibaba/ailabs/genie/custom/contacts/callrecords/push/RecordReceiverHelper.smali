.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;
.super Ljava/lang/Object;
.source "RecordReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY:Ljava/lang/String; = "callLog"

.field public static final NEW_RECORD_RECEIVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.custom.contacts.record"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;)Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mListener:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;

    return-object p0
.end method


# virtual methods
.method public registerBroadcast()V
    .locals 4

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.custom.contacts.record"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "contacts_records"

    const-string v2, "register!"

    .line 31
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unRegisterBroadcast()V
    .locals 3

    const-string v0, "contacts_records"

    const-string v1, "unregister!"

    .line 40
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
