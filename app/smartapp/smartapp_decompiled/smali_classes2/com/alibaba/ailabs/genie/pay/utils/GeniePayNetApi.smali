.class public Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;
.super Ljava/lang/Object;
.source "GeniePayNetApi.java"


# static fields
.field private static final SUCCESS:Ljava/lang/String; = "200"

.field private static final TAG:Ljava/lang/String; = "GeniePayNetApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bindOrderExtend(Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 453
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 454
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendRequest;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendRequest;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 455
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 456
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "audio"

    .line 457
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemId"

    .line 458
    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getOrderCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "orderId"

    invoke-virtual {v1, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object p0

    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbUserId:Ljava/lang/String;

    const-string p1, "tbUserId"

    invoke-virtual {v1, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "extend"

    .line 461
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindOrderExtend.req = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GeniePayNetApi"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$6;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$6;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static confirmOrderV0(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 370
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 371
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2Request;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2Request;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2Request;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 372
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 373
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getPayPrice()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payPrice"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getItemId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "itemId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAmount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quantity"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmOrderV0.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static confirmOrderV6(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 497
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 498
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 499
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 500
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmOrderV6.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$7;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 558
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static fetchAlbumItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 241
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 242
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumItemRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumItemRequest;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumItemRequest;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 243
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getAlbumRawId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumRawId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getBotId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "botId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getMemberId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "memberId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchAlbumItem.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$3;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static fetchAlbumOneContentItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 305
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 306
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 307
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getAlbumRawId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumRawId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getContentRawId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentRawId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getPageNum()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageNum"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getPageSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageSize"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getBotId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "botId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getMemberId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "memberId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchAlbumOneContentItem.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$4;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static fetchVideoMemberItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 122
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 123
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getBotId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "botId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getMemberId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "memberId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchVideoMemberItem.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static fetchVideoMemberItemV2(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 4

    .line 180
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 181
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2Request;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2Request;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2Request;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchVideoMemberItemV2.req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static queryPaymentStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 3

    .line 562
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 563
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowRequest;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowRequest;->getAPI_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 564
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "authInfo"

    .line 565
    invoke-virtual {v1, v2, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "orderCode"

    .line 566
    invoke-virtual {v1, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "payOrderCode"

    .line 567
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 571
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryPaymentStatus.req = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GeniePayNetApi"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$8;

    invoke-direct {p1, p3}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$8;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    move-result-object p0

    .line 618
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
