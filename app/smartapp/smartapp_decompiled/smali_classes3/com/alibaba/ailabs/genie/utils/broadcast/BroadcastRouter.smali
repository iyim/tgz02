.class public Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastRouter;
.super Ljava/lang/Object;
.source "BroadcastRouter.java"


# static fields
.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "data_key"

.field public static final EXTRA_KEY:Ljava/lang/String; = "renderData"

.field public static final MESSAGE_BOARD_RECEIVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.message.RECEIVE_MESSAGE"

.field public static final PACKAGE_CONTACTS:Ljava/lang/String; = "com.alibaba.ailabs.genie.contacts"

.field public static final PACKAGE_LAUNCHER:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field public static final PACKAGE_SMARTAPP:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp"

.field private static final TAG:Ljava/lang/String; = "BroadcastHelper"

.field public static final UPDATE_UI_RECEIVER:Ljava/lang/String; = "com.alibaba.ailabs.genie.message.UPDATE_UI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendBroadcast(Landroid/content/Context;I)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast extraData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastHelper"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_key"

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.alibaba.ailabs.genie.message.UPDATE_UI"

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendMessageReceive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastHelper"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "renderData"

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.alibaba.ailabs.genie.message.RECEIVE_MESSAGE"

    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
