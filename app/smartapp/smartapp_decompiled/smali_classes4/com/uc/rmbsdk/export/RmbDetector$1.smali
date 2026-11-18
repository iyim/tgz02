.class Lcom/uc/rmbsdk/export/RmbDetector$1;
.super Ljava/lang/Object;
.source "RmbDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDetector;->onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbDetector;

.field final synthetic val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDetector;Lcom/uc/rmbsdk/export/RmbReceivedData;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 134
    sget-boolean v0, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recv detect push msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbReceivedData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMB-SDK-DETECT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbReceivedData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbDetector;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v2}, Lcom/uc/rmbsdk/export/RmbDetector;->access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 143
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->recvCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->recvCount:I

    .line 144
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->recvCount:I

    iget v5, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->sendCount:I

    if-lt v4, v5, :cond_2

    .line 145
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->this$0:Lcom/uc/rmbsdk/export/RmbDetector;

    invoke-static {v4}, Lcom/uc/rmbsdk/export/RmbDetector;->access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->result:Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;

    invoke-interface {v4, v3}, Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;->onResult(I)V

    .line 149
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;->isSorted()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    goto :goto_0

    :cond_3
    const-string v4, "0"

    :goto_0
    const-string v5, "is_order"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;->isSorted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;->getSeq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seq"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/rmbsdk/export/RmbDetector;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "push_seq"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_4
    iget-object v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v4}, Lcom/uc/rmbsdk/export/RmbReceivedData;->isSorted()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "receipt_order"

    goto :goto_1

    :cond_5
    const-string v4, "receipt_disorder"

    :goto_1
    invoke-static {v4}, Lcom/uc/rmbsdk/export/RmbDetector;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    :goto_2
    iget-object v5, p0, Lcom/uc/rmbsdk/export/RmbDetector$1;->val$data:Lcom/uc/rmbsdk/export/RmbReceivedData;

    invoke-virtual {v5}, Lcom/uc/rmbsdk/export/RmbReceivedData;->getPushId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v5, v1}, Lcom/uc/rmbsdk/export/RmbDetector;->access$700(Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    sget-boolean v1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send detect push receipt result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMB-SDK-DETECT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 149
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
