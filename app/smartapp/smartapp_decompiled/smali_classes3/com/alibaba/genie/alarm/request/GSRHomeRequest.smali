.class public Lcom/alibaba/genie/alarm/request/GSRHomeRequest;
.super Lcom/alibaba/genie/alarm/request/GSRBaseRequest;
.source "GSRHomeRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/request/GSRBaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.alarm.updateAlarmV2"

    .line 19
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->setApiName(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->setNeedEcode(Z)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->setNeedSession(Z)V

    const-string p2, "1.0"

    .line 22
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->setVersion(Ljava/lang/String;)V

    .line 24
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "authInfo"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GSRHomeRequest: \u8bf7\u6c42\u53c2\u6570 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MainActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, p2}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;->setData(Ljava/lang/Object;)V

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

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    new-instance v8, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/genie/alarm/request/GSRHomeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    .line 40
    invoke-virtual {v0, p6}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
