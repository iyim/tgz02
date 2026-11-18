.class public Lcom/alibaba/ailabs/agui/event/MmiEventReturn;
.super Ljava/lang/Object;
.source "MmiEventReturn.java"


# instance fields
.field private isForceClose:Z

.field private isHandled:Z

.field private isOpenFarMic:Z

.field private spokenMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSpokenMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->spokenMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isForceClose()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isForceClose:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isHandled:Z

    return v0
.end method

.method public isOpenFarMic()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isOpenFarMic:Z

    return v0
.end method

.method public setForceClose(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isForceClose:Z

    return-void
.end method

.method public setHandled(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isHandled:Z

    return-void
.end method

.method public setOpenFarMic(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isOpenFarMic:Z

    return-void
.end method

.method public setSpokenMessage(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->spokenMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmiEventReturn{spokenMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->spokenMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenFarMic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isOpenFarMic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForceClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isForceClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHandled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventReturn;->isHandled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
