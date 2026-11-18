.class public Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;
.super Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel;
.source "GeniePayResultModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;
    }
.end annotation


# instance fields
.field private appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

.field private code:Ljava/lang/String;

.field private detail:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

.field private extendInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->code:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->detail:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    return-object v0
.end method

.method public getExtendInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->extendInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->code:Ljava/lang/String;

    return-void
.end method

.method public setDetail(Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->detail:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    return-void
.end method

.method public setExtendInfo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->extendInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel$ExtendInfoBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->appInfo:Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
