.class public Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;
.super Lcom/alibaba/genie/alarm/request/GSRBaseRequest;
.source "DeleteAlarmRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 5

    .line 20
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/request/GSRBaseRequest;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.alarm.deleteAlarmV2"

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->setApiName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->setNeedEcode(Z)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->setNeedSession(Z)V

    const-string v1, "1.0"

    .line 24
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->setVersion(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    array-length v2, p2

    new-array v2, v2, [J

    .line 28
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 29
    aget-wide v3, p2, v0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "alarmIds"

    .line 32
    invoke-virtual {p2, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "invoker"

    const-string v2, "turandot"

    .line 33
    invoke-virtual {p2, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "uuid"

    .line 35
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "params"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GSRHomeRequest: \u8bf7\u6c42\u53c2\u6570 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmListActivity:"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public static beginRequest(Landroid/content/Context;[JLcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 47
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    new-instance v1, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/genie/alarm/request/DeleteAlarmRequest;-><init>(Landroid/content/Context;[J)V

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void

    :cond_1
    :goto_0
    const-string p0, "AlarmListActivity:"

    const-string p1, "GSRHomeRequest: \u5f53\u524d\u95f9\u949f\u5217\u8868\u4e3a\u7a7a"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
