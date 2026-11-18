.class final Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;
.super Ljava/lang/Object;
.source "GeniePayNetApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->confirmOrderV0(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;)V
    .locals 9

    const-string v0, "MAX_BUY_QUANTITY_EXCEEDED"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmOrderV0.rsp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeniePayNetApi"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v3, "statusCode"

    .line 388
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    .line 389
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "msgCode"

    .line 390
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "msgInfo"

    .line 391
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " success = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " msgCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " msgInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "200"

    .line 395
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, " errorCode:"

    const-string v8, "onFailure msgInfo:"

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    :try_start_1
    const-string p1, "model"

    .line 396
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 399
    const-class v1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmOrderV0.model = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getQrPayCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, " bindOrderExtend:"

    if-nez v1, :cond_1

    .line 402
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onSuccess"

    .line 403
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-direct {v1, v4, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 408
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getGeniePayResult()Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getType()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSellType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    .line 412
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bindOrderExtend"

    .line 413
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getExtend()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->bindOrderExtend(Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 417
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 420
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getExtendInfo()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getExtendInfo()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getExtendInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getExtendInfo()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-direct {v1, v0, v6}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getRet()[Ljava/lang/String;

    move-result-object p1

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 435
    array-length v0, p1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 436
    aget-object v5, p1, v0

    .line 438
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-direct {v0, v5, v6}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$5;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_4
    :goto_0
    return-void
.end method
