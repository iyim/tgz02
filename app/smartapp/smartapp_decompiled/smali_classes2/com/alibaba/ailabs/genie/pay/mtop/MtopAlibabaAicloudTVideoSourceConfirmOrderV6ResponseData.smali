.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData;
.super Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;
.source "MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData;->model:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData;->model:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method
