.class public Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.source "MusicPlayerASRCommand.java"


# instance fields
.field private command:I

.field private mPlayMode:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

.field private parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->command:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->parameter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->command:I

    return v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mPlayMode:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    return-object v0
.end method

.method public setCommand(I)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
    .locals 0

    .line 22
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->command:I

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->parameter:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;)Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mPlayMode:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicPlayerASRCommand{command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/MusicPlayerASRCommand;->mPlayMode:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
