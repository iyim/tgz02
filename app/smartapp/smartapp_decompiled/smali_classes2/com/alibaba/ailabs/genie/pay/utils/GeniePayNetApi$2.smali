.class final Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;
.super Ljava/lang/Object;
.source "GeniePayNetApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->fetchVideoMemberItemV2(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
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

    .line 190
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;)V
    .locals 8

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchVideoMemberItemV2.rsp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePayNetApi"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "statusCode"

    .line 196
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 197
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "msgCode"

    .line 198
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msgInfo"

    .line 199
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " msgCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " msgInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "200"

    .line 203
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string p1, "model"

    .line 204
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 209
    :try_start_1
    const-class v0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchAuthInfo.model = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "onSuccess"

    .line 212
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    invoke-direct {v2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure msgInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getRet()[Ljava/lang/String;

    move-result-object p1

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 223
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 224
    aget-object v4, p1, v0

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-direct {v0, v4, v5}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$2;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_2
    :goto_0
    return-void
.end method
