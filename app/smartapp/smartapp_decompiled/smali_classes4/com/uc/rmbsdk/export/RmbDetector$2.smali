.class Lcom/uc/rmbsdk/export/RmbDetector$2;
.super Ljava/lang/Object;
.source "RmbDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDetector;->detect(ZZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbDetector;

.field final synthetic val$force:Z

.field final synthetic val$result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

.field final synthetic val$sorted:Z


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDetector;ZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;Z)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    iput-boolean p2, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$force:Z

    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    iput-boolean p4, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$sorted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 211
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState()I

    move-result v0

    .line 212
    iget-boolean v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$force:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eq v0, v3, :cond_0

    .line 213
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    invoke-interface {v0, v2}, Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;->onResult(I)V

    return-void

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-boolean v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$sorted:Z

    if-eqz v1, :cond_1

    const-string v1, "push_order"

    goto :goto_0

    :cond_1
    const-string v1, "push_disorder"

    :goto_0
    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$sorted:Z

    invoke-static {v0, v4}, Lcom/uc/rmbsdk/export/RmbDetector;->access$800(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    sget-boolean v4, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send detect push result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RMB-SDK-DETECT"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$900(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    invoke-interface {v0, v2}, Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;->onResult(I)V

    return-void

    .line 225
    :cond_3
    new-instance v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;

    iget-boolean v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$sorted:Z

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$1000(Ljava/lang/String;)I

    move-result v3

    :cond_4
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->val$result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    invoke-direct {v2, v3, v1}, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;-><init>(ILcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V

    .line 226
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$2;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$1100(Lcom/uc/rmbsdk/export/RmbDetector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/uc/rmbsdk/export/RmbDetector$2$1;

    invoke-direct {v2, p0, v0}, Lcom/uc/rmbsdk/export/RmbDetector$2$1;-><init>(Lcom/uc/rmbsdk/export/RmbDetector$2;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
