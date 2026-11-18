.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->success:Z

    return v0
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceBindOrderExtendResponseData;->success:Z

    return-void
.end method
