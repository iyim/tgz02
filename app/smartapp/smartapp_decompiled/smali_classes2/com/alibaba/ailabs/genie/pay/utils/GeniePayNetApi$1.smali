.class final Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;
.super Ljava/lang/Object;
.source "GeniePayNetApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->fetchVideoMemberItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V
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

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;)V
    .locals 8

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchVideoMemberItem.rsp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " traceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePayNetApi"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "statusCode"

    .line 140
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 141
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "msgCode"

    .line 142
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msgInfo"

    .line 143
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
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

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "200"

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v2, "model"

    .line 148
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    const-class v2, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchAuthInfo.model = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "onSuccess"

    .line 154
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getRet()[Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 163
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 164
    aget-object v4, v0, v1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v4, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi$1;->val$payRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "-3"

    invoke-direct {v1, v2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_2
    :goto_0
    return-void
.end method
