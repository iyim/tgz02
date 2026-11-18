.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterBaseEntity"
.end annotation


# instance fields
.field private avatarURL:Ljava/lang/String;

.field private dialogues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/Long;

.field private isInUse:Z

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private voiceTemplateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAvatarURL()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->avatarURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->dialogues:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceTemplateId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->voiceTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->isInUse:Z

    return v0
.end method

.method public setAvatarURL(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->avatarURL:Ljava/lang/String;

    return-void
.end method

.method public setDialogues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->dialogues:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setInUse(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->isInUse:Z

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->keywords:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->style:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setVoiceTemplateId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->voiceTemplateId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacterBaseEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", style=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->style:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceTemplateId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->voiceTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatarURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->avatarURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->dialogues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$CharacterBaseEntity;->isInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
