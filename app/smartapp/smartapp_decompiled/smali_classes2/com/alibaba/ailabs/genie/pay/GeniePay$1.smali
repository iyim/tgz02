.class Lcom/alibaba/ailabs/genie/pay/GeniePay$1;
.super Ljava/lang/Object;
.source "GeniePay.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/GeniePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;

.field final synthetic val$paramModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$paramModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$callback:Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    .locals 7

    .line 259
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-1"

    .line 260
    iput-object v0, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    iget-object v2, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;->mErrorMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getCurrentPayModelBean()Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$paramModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$callback:Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onCallback(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getCurrentPayModelBean()Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    move-result-object v3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$paramModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;->val$callback:Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;

    const-string v1, "0"

    const-string v2, "success"

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onCallback(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    return-void
.end method
