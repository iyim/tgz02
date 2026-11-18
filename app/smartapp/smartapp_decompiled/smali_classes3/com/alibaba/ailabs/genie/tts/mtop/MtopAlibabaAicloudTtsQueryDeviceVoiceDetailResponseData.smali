.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;,
        Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;,
        Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;
    }
.end annotation


# instance fields
.field private model:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;",
            ">;"
        }
    .end annotation
.end field

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->model:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->success:Z

    return v0
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->model:Ljava/util/ArrayList;

    return-void
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->success:Z

    return-void
.end method
