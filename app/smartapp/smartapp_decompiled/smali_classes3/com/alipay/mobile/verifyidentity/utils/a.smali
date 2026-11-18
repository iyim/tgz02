.class final Lcom/alipay/mobile/verifyidentity/utils/a;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(ZLjava/util/HashMap;)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    const-string v0, "ReportHelper"

    .line 105
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, ""

    .line 106
    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "ReportHelper"

    const-string v2, "5s\u7b49\u5f85\u7ed3\u675f\uff0c\u5f00\u59cb\u51c6\u5907\u4e0a\u62a5"

    .line 111
    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 113
    new-instance v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;

    invoke-direct {v2}, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;-><init>()V

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a()Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    monitor-exit v0

    return-void

    .line 119
    :cond_1
    iget-object v4, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    const-string v5, "envData"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const-string v4, "ReportHelper"

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ENV_INFO_FOR_REPORTER] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object v1

    const-string v2, "ReportHelper"

    .line 125
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 127
    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;)V

    .line 128
    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5"

    .line 129
    invoke-static {v3, v1}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ReportHelper"

    .line 133
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
