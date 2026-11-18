.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;
.super Ljava/lang/Object;
.source "InvokeForTurandotRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$BindAccountCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$GrayCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "TurandotRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public InvalidAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;)V
    .locals 5

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;-><init>()V

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "RechargeService.invalidAccountBind"

    .line 40
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "genieId"

    .line 44
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "superVipAppId"

    const-string v3, "900001"

    .line 45
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    .line 51
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 52
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 53
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v2, "TurandotRequest"

    const-string v3, "apiName:mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 55
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  , appid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public QueryRightRecord(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;)V
    .locals 5

    .line 76
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;-><init>()V

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "RechargeService.queryAccountBind"

    .line 78
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "superVipAppId"

    const-string v3, "900001"

    .line 82
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 84
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    .line 88
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 89
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 90
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v2, "TurandotRequest"

    const-string v3, "apiName:mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 92
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  , appid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public getSuperVipGray(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$GrayCallback;)V
    .locals 5

    .line 118
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;-><init>()V

    .line 119
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "GrayscaleControlService.isAllowReveal"

    .line 120
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "bizScene"

    const-string v3, "superVip"

    .line 123
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 125
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 127
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    .line 129
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 130
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 131
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v2, "TurandotRequest"

    const-string v3, "apiName:mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 133
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  , appid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$GrayCallback;)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public queryRightRecordReal(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;)V
    .locals 5

    .line 197
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;-><init>()V

    .line 198
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "RechargeService.queryRightRecord"

    .line 199
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    .line 200
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "superVipAppId"

    const-string v4, "900001"

    .line 202
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pagesize"

    const/16 v4, 0x32

    .line 203
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "page"

    .line 204
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 206
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 208
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v3, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 211
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v3, "1.0"

    .line 212
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v3, "TurandotRequest"

    const-string v4, "apiName:mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 214
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryRightRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  , args = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TME-binding"

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public saveAccountBind(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$BindAccountCallback;)V
    .locals 5

    .line 156
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;-><init>()V

    .line 157
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "RechargeService.saveAccountBind"

    .line 158
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "superVipAppId"

    const-string v4, "900001"

    .line 162
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appId"

    .line 163
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "source"

    .line 164
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "genieId"

    .line 165
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 169
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    .line 171
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 172
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 173
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string p2, "TurandotRequest"

    const-string v1, "apiName:mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    .line 175
    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authInfo: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->authInfo:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TME-binding"

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->apiName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  , args = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestData;->args:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$4;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$BindAccountCallback;)V

    .line 180
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 192
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
