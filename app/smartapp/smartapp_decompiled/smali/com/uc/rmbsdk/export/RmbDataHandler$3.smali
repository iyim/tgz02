.class Lcom/uc/rmbsdk/export/RmbDataHandler$3;
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

.field final synthetic val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

.field final synthetic val$msgData:Ljava/lang/String;

.field final synthetic val$pushId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Lcom/uc/rmbsdk/export/RmbBizInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$channelId:Ljava/lang/String;

    iput-object p5, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$pushId:Ljava/lang/String;

    iput-object p6, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$msgData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v0, v0, Lcom/uc/rmbsdk/export/RmbBizInfo;->listener:Lcom/uc/rmbsdk/export/IRmbMessageListener;

    new-instance v1, Lcom/uc/rmbsdk/export/RmbReceivedData;

    iget-object v2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$channelId:Ljava/lang/String;

    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$pushId:Ljava/lang/String;

    iget-object v5, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$3;->val$msgData:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/uc/rmbsdk/export/RmbReceivedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/uc/rmbsdk/export/IRmbMessageListener;->onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V

    return-void
.end method
