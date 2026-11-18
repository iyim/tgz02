.class public Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTDeviceTtsConfigGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->success:Z

    return v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;

    return-void
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;->success:Z

    return-void
.end method
