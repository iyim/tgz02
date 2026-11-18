.class Lcom/uc/rmbsdk/export/RmbDataHandler$2;
.super Ljava/lang/Object;
.source "RmbDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDataHandler;->handleReceivedData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

.field final synthetic val$msgSeq:J

.field final synthetic val$pushId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/uc/rmbsdk/export/RmbBizInfo;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$channelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$pushId:Ljava/lang/String;

    iput-object p5, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$content:Ljava/lang/String;

    iput-wide p6, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$msgSeq:J

    iput-object p8, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 293
    new-instance v0, Lcom/uc/rmbsdk/export/RmbReceivedData;

    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$pushId:Ljava/lang/String;

    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$content:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/RmbReceivedData;->setIsSorted(Z)V

    .line 295
    iget-wide v1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$msgSeq:J

    invoke-virtual {v0, v1, v2}, Lcom/uc/rmbsdk/export/RmbReceivedData;->setSeq(J)V

    .line 296
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$2;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->listener:Lcom/uc/rmbsdk/export/IRmbMessageListener;

    invoke-interface {v1, v0}, Lcom/uc/rmbsdk/export/IRmbMessageListener;->onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V

    return-void
.end method
