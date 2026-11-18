.class public Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTDeviceDndModeGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    const-string v0, "MtopAlibabaAicloudTDeviceDndModeGetResponseData"

    .line 15
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->success:Z

    return v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->model:Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;

    return-void
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->success:Z

    return-void
.end method
