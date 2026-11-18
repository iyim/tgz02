.class public Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;
.super Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;
.source "CreateAlarmV2Request.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.alarm.updateAlarmV2"

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->setApiName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->setNeedEcode(Z)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->setNeedSession(Z)V

    const-string v0, "1.0"

    .line 45
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->setVersion(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "authInfo"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "entityType"

    .line 52
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 53
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    .line 54
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "botId"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "memberId"

    .line 56
    invoke-virtual {v0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GSRHomeRequest: \u8bf7\u6c42\u53c2\u6570 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public static beginRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    new-instance v8, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/ailabs/basedomain/mtop/request/CreateAlarmV2Request;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 70
    invoke-virtual {v0, p6}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 20
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "userId"

    .line 24
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uuid"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
