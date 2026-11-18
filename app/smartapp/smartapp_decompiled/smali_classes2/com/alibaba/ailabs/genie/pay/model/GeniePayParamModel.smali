.class public Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;
.super Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel;
.source "GeniePayParamModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;
    }
.end annotation


# instance fields
.field private appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

.field private payParam:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

.field private product:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    return-object v0
.end method

.method public getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->payParam:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    return-void
.end method

.method public setPayParam(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->payParam:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->product:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " payParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "payParam == null"

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "appInfo == null"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
