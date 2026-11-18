.class public Lcom/alibaba/genie/alarm/request/ListAlarmRequest;
.super Lcom/alibaba/genie/alarm/request/GSRBaseRequest;
.source "ListAlarmRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/request/GSRBaseRequest;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.alarm.listAlarmV6"

    .line 19
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->setApiName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->setNeedEcode(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->setNeedSession(Z)V

    const-string v0, "1.0"

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->setVersion(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "invoker"

    const-string v3, "turandot"

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    .line 30
    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->getAuthInfo(Landroid/content/Context;Ljava/util/Map;)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSRHomeRequest: \u8bf7\u6c42\u53c2\u6570 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MainActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public static beginRequest(Landroid/content/Context;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
            ">;)V"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    new-instance v1, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
