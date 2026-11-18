.class public Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper$1;-><init>(Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public registerBroadcast()V
    .locals 4

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.message.RECEIVE_MESSAGE"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "BroadcastHelper"

    const-string v2, "register!"

    .line 27
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unRegisterBroadcast()V
    .locals 3

    const-string v0, "BroadcastHelper"

    const-string v1, "unregister!"

    .line 36
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
