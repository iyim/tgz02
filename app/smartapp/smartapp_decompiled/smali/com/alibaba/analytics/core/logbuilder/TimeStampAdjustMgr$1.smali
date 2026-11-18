.class Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;
.super Ljava/lang/Object;
.source "TimeStampAdjustMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->startSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string/jumbo v0, "t"

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 42
    iget-object v3, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-static {v3}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$000(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "time_adjust_host"

    invoke-static {v4, v5}, Lcom/alibaba/analytics/utils/SpSetting;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-static {v5}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$100(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-static {v3}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$200(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 48
    invoke-static {v6, v3, v4, v5}, Lcom/alibaba/analytics/utils/HttpUtils;->sendRequest(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/analytics/utils/HttpUtils$HttpResponse;

    move-result-object v4

    const/4 v7, 0x4

    .line 49
    new-array v8, v7, [Ljava/lang/Object;

    const-string/jumbo v9, "url"

    aput-object v9, v8, v5

    aput-object v3, v8, v6

    const/4 v3, 0x2

    const-string/jumbo v9, "response"

    aput-object v9, v8, v3

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const-string v10, "TimeStampAdjustMgr"

    invoke-static {v10, v8}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    .line 50
    iget-object v8, v4, Lcom/alibaba/analytics/utils/HttpUtils$HttpResponse;->data:[B

    if-eqz v8, :cond_1

    .line 52
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    new-instance v11, Ljava/lang/String;

    iget-object v12, v4, Lcom/alibaba/analytics/utils/HttpUtils$HttpResponse;->data:[B

    iget-object v4, v4, Lcom/alibaba/analytics/utils/HttpUtils$HttpResponse;->data:[B

    array-length v4, v4

    invoke-direct {v11, v12, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v8, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    .line 53
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1

    .line 58
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 59
    iget-object v8, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    sub-long/2addr v11, v1

    invoke-static {v8, v11, v12}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$302(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;J)J

    .line 60
    iget-object v8, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-static {v8, v6}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$402(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;Z)Z

    const/4 v8, 0x6

    .line 61
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v5

    aput-object v4, v8, v6

    const-string v0, "now"

    aput-object v0, v8, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const-string v0, "diff"

    aput-object v0, v8, v7

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr$1;->this$0:Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    invoke-static {v1}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->access$300(Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v10, v8}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method
