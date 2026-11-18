.class public Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;
.super Ljava/lang/Object;
.source "InnerProtocolParamBuilderImpl.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerProtocolParamBuilderImpl"


# instance fields
.field private mtopConfig:Lmtopsdk/mtop/global/MtopConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    return-void
.end method

.method private buildExtParams(Lmtopsdk/framework/domain/MtopContext;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/framework/domain/MtopContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    const-string v1, "pv"

    const-string v2, "5.2"

    .line 214
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "netType"

    .line 215
    invoke-static {v1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nq"

    .line 216
    invoke-static {v1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {p1}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "umt"

    invoke-static {p1, v1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->appVersion:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "x-app-ver"

    .line 222
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    iget-object p1, p0, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->xOrangeQ:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "x-orange-q"

    .line 227
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-wide v1, p1, Lmtopsdk/mtop/global/MtopConfig;->xAppConfigVersion:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-app-conf-v"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ua"

    .line 232
    invoke-static {p1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "user-agent"

    .line 234
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    iget-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    const-string v1, "x-c-traceid"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "f-refer"

    const-string v1, "mtop"

    .line 238
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    if-lez p1, :cond_5

    .line 242
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    iget v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v1, v1, 0x1

    const-string v2, "mtopsdk.InnerProtocolParamBuilderImpl"

    if-eqz v1, :cond_3

    .line 244
    sget-object v1, Lmtopsdk/xstate/network/NetworkStateReceiver;->ssid:Ljava/lang/String;

    .line 245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    const-string v3, "SSID"

    .line 247
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "set wifi ssid error."

    .line 249
    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_3
    :goto_0
    iget v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 255
    sget-object v1, Lmtopsdk/xstate/network/NetworkStateReceiver;->bssid:Ljava/lang/String;

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    const-string v3, "BSSID"

    .line 258
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "set wifi bssid error."

    .line 260
    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 266
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-netinfo"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_5
    iget-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 271
    iget-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    const-string v1, "x-page-name"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_6
    iget-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 275
    iget-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    const-string v1, "x-page-url"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p1, p0, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->mtopGlobalABTestParams:Ljava/util/Map;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "x-page-mab"

    .line 279
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method


# virtual methods
.method public buildParams(Lmtopsdk/framework/domain/MtopContext;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/framework/domain/MtopContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 53
    iget-object v5, v2, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 54
    invoke-virtual {v5}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v0

    iput-object v0, v1, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    .line 55
    iget-object v0, v1, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v6, v0, Lmtopsdk/mtop/global/MtopConfig;->sign:Lmtopsdk/security/ISign;

    const-string v12, "mtopsdk.InnerProtocolParamBuilderImpl"

    if-nez v6, :cond_0

    .line 57
    iget-object v0, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, "ISign of mtopConfig in mtopInstance is null"

    invoke-static {v12, v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    iget-object v13, v2, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 62
    iget-object v7, v2, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 64
    new-instance v14, Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    invoke-virtual {v5}, Lmtopsdk/mtop/intf/Mtop;->getUtdid()Ljava/lang/String;

    move-result-object v0

    const-string v8, "utdid"

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v8, "uid"

    .line 70
    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    const-string v8, "reqbiz-ext"

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, v1, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->appKey:Ljava/lang/String;

    iput-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 80
    iget-object v0, v1, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->authCode:Ljava/lang/String;

    iput-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 83
    :cond_3
    iget-object v8, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 84
    iget-object v9, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    const-string v0, "appKey"

    .line 86
    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v10

    .line 90
    iget-boolean v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityFlag:Z

    if-eqz v0, :cond_4

    iget-object v0, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityData:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "x-priority-data"

    .line 94
    iget-object v15, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityData:Ljava/util/Map;

    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 97
    iget-object v11, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "set api priority data error, priorityData:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityData:Ljava/util/Map;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v11, v10, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object/from16 v16, v10

    :goto_1
    move-object/from16 v10, v16

    :goto_2
    const-string v0, "data"

    .line 101
    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v10, "t"

    .line 105
    invoke-virtual {v14, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "api"

    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "v"

    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sid"

    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    const-string v11, "ttid"

    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v5}, Lmtopsdk/mtop/intf/Mtop;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deviceId"

    invoke-virtual {v14, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "lat"

    .line 120
    invoke-static {v10}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 121
    invoke-static {v11}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "lng"

    move-wide/from16 v16, v3

    .line 122
    invoke-static {v15}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 124
    invoke-virtual {v14, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v3

    .line 130
    :cond_6
    :goto_3
    invoke-static {v5}, Lmtopsdk/mtop/features/MtopFeatureManager;->getMtopTotalFeatures(Lmtopsdk/mtop/intf/Mtop;)J

    move-result-wide v3

    .line 131
    iget v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    if-lez v10, :cond_7

    const/16 v10, 0xb

    .line 132
    invoke-static {v10}, Lmtopsdk/mtop/features/MtopFeatureManager;->getMtopFeatureValue(I)J

    move-result-wide v10

    or-long/2addr v3, v10

    .line 135
    :cond_7
    iget-boolean v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityFlag:Z

    if-eqz v10, :cond_8

    const/16 v10, 0xc

    .line 136
    invoke-static {v10}, Lmtopsdk/mtop/features/MtopFeatureManager;->getMtopFeatureValue(I)J

    move-result-wide v10

    or-long/2addr v3, v10

    .line 138
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-features"

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v3, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    if-eqz v3, :cond_c

    .line 142
    iget-boolean v3, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->isInnerOpen:Z

    if-eqz v3, :cond_9

    .line 143
    invoke-virtual {v5}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accessToken"

    invoke-static {v3, v4}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    .line 146
    :cond_9
    iget-object v3, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ApiTypeEnum;->getApiType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exttype"

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    iget-object v4, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "="

    if-eqz v4, :cond_a

    const-string v4, "openappkey"

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_a
    iget-object v4, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ";"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "accesstoken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extdata"

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 158
    invoke-interface {v6, v14, v8, v9}, Lmtopsdk/security/ISign;->getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    iget-object v10, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v3, v18, v3

    iput-wide v3, v10, Lmtopsdk/mtop/util/MtopStatistics;->computeSignTime:J

    .line 160
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "apiKey="

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " call getMtopApiSign failed.[appKey="

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authCode="

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14

    :cond_d
    const-string v3, "sign"

    .line 168
    invoke-virtual {v14, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    instance-of v3, v6, Lmtopsdk/security/LocalInnerSignImpl;

    if-nez v3, :cond_10

    .line 173
    iget v3, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    if-ltz v3, :cond_e

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 175
    iget v10, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    invoke-interface {v6, v5, v9, v10}, Lmtopsdk/security/ISign;->getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 176
    iget-object v10, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v3, v18, v3

    iput-wide v3, v10, Lmtopsdk/mtop/util/MtopStatistics;->computeWuaTime:J

    const-string v3, "wua"

    .line 177
    invoke-virtual {v14, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 179
    iget-object v3, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " call getAvmpSign for wua fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 185
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    const-string v5, "pageId"

    .line 187
    iget-object v11, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v7, ""

    goto :goto_4

    :cond_f
    iget-object v7, v7, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    const-string v11, "utf-8"

    invoke-static {v7, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 189
    :catch_1
    iget-object v5, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " pageUrl encode error"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v5, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v11, 0x8

    move-object v7, v0

    .line 191
    invoke-interface/range {v6 .. v11}, Lmtopsdk/security/ISign;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v5, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iput-wide v6, v5, Lmtopsdk/mtop/util/MtopStatistics;->computeMiniWuaTime:J

    const-string v3, "x-mini-wua"

    .line 193
    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    iget-object v0, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call getSecurityBodyDataEx for mini_wua failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v0, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_10
    invoke-direct {v1, v2, v14}, Lmtopsdk/mtop/protocol/builder/impl/InnerProtocolParamBuilderImpl;->buildExtParams(Lmtopsdk/framework/domain/MtopContext;Ljava/util/Map;)V

    .line 201
    iget-object v0, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    iput-wide v2, v0, Lmtopsdk/mtop/util/MtopStatistics;->buildParamsTime:J

    return-object v14
.end method
