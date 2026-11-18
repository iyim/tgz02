.class Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;
.super Ljava/lang/Object;
.source "RmbDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDataHandler$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uc/rmbsdk/export/RmbDataHandler$4;

.field final synthetic val$message:Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDataHandler$4;Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->this$1:Lcom/uc/rmbsdk/export/RmbDataHandler$4;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->val$message:Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 410
    new-instance v0, Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->this$1:Lcom/uc/rmbsdk/export/RmbDataHandler$4;

    iget-object v2, v2, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v2, v2, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->val$message:Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;

    iget-object v3, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;->content:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/uc/rmbsdk/export/RmbReceivedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 411
    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/RmbReceivedData;->setIsSorted(Z)V

    .line 412
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->val$message:Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;

    iget-wide v1, v1, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;->seq:J

    invoke-virtual {v0, v1, v2}, Lcom/uc/rmbsdk/export/RmbReceivedData;->setSeq(J)V

    .line 413
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;->this$1:Lcom/uc/rmbsdk/export/RmbDataHandler$4;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->listener:Lcom/uc/rmbsdk/export/IRmbMessageListener;

    invoke-interface {v1, v0}, Lcom/uc/rmbsdk/export/IRmbMessageListener;->onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V

    return-void
.end method
