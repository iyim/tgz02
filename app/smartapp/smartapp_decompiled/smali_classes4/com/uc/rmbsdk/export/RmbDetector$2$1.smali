.class Lcom/uc/rmbsdk/export/RmbDetector$2$1;
.super Ljava/lang/Object;
.source "RmbDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDetector$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uc/rmbsdk/export/RmbDetector$2;

.field final synthetic val$traceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDetector$2;Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->this$1:Lcom/uc/rmbsdk/export/RmbDetector$2;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->val$traceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->this$1:Lcom/uc/rmbsdk/export/RmbDetector$2;

    iget-object v0, v0, Lcom/uc/rmbsdk/export/RmbDetector$2;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbDetector;->access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->val$traceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;

    if-eqz v0, :cond_1

    .line 232
    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;->onResult(I)V

    .line 234
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->this$1:Lcom/uc/rmbsdk/export/RmbDetector$2;

    iget-boolean v1, v1, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$sorted:Z

    if-eqz v1, :cond_0

    const-string v1, "receipt_order"

    goto :goto_0

    :cond_0
    const-string v1, "receipt_disorder"

    :goto_0
    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/uc/rmbsdk/export/RmbDetector$2$1;->val$traceId:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v0, v2, v3, v5, v4}, Lcom/uc/rmbsdk/export/RmbDetector;->access$700(Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-boolean v1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send detect push receipt result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMB-SDK-DETECT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
