.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;
.super Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;
.source "MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData$ModelBean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->model:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->model:Ljava/util/List;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchVideoMemberItemV2ResponseData;->model:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
