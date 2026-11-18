.class public Lcom/rich/czlylibary/bean/ActData;
.super Ljava/lang/Object;


# instance fields
.field public _id:I

.field public actTime:Ljava/lang/String;

.field public actType:I

.field public chCode:Ljava/lang/String;

.field public duration:I

.field public freq:D

.field public localList:I

.field public powerStatus:I

.field public sheetId:Ljava/lang/String;

.field public smartDeviceId:Ljava/lang/String;

.field public songId:Ljava/lang/String;

.field public speed:D

.field public sportType:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDDII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->actTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/rich/czlylibary/bean/ActData;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/rich/czlylibary/bean/ActData;->songId:Ljava/lang/String;

    iput p4, p0, Lcom/rich/czlylibary/bean/ActData;->localList:I

    iput p5, p0, Lcom/rich/czlylibary/bean/ActData;->sportType:I

    iput-wide p6, p0, Lcom/rich/czlylibary/bean/ActData;->speed:D

    iput-wide p8, p0, Lcom/rich/czlylibary/bean/ActData;->freq:D

    iput p10, p0, Lcom/rich/czlylibary/bean/ActData;->powerStatus:I

    iput p11, p0, Lcom/rich/czlylibary/bean/ActData;->actType:I

    return-void
.end method


# virtual methods
.method public getActTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->actTime:Ljava/lang/String;

    return-object v0
.end method

.method public getActType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/ActData;->actType:I

    return v0
.end method

.method public getChCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->chCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/ActData;->duration:I

    return v0
.end method

.method public getFreq()D
    .locals 2

    iget-wide v0, p0, Lcom/rich/czlylibary/bean/ActData;->freq:D

    return-wide v0
.end method

.method public getLocalList()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/ActData;->localList:I

    return v0
.end method

.method public getPowerStatus()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/ActData;->powerStatus:I

    return v0
.end method

.method public getSheetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->sheetId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->smartDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/rich/czlylibary/bean/ActData;->speed:D

    return-wide v0
.end method

.method public getSportType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/ActData;->sportType:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/ActData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setActTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->actTime:Ljava/lang/String;

    return-void
.end method

.method public setActType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/ActData;->actType:I

    return-void
.end method

.method public setChCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->chCode:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/ActData;->duration:I

    return-void
.end method

.method public setFreq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/rich/czlylibary/bean/ActData;->freq:D

    return-void
.end method

.method public setLocalList(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/ActData;->localList:I

    return-void
.end method

.method public setPowerStatus(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/ActData;->powerStatus:I

    return-void
.end method

.method public setSheetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->sheetId:Ljava/lang/String;

    return-void
.end method

.method public setSmartDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->smartDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/rich/czlylibary/bean/ActData;->speed:D

    return-void
.end method

.method public setSportType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/ActData;->sportType:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/ActData;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActData{_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rich/czlylibary/bean/ActData;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/ActData;->actTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/ActData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/ActData;->songId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rich/czlylibary/bean/ActData;->localList:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sportType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rich/czlylibary/bean/ActData;->sportType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", speed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/rich/czlylibary/bean/ActData;->speed:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", freq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/rich/czlylibary/bean/ActData;->freq:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", powerStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rich/czlylibary/bean/ActData;->powerStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rich/czlylibary/bean/ActData;->actType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sheetId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/ActData;->sheetId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", smartDeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/ActData;->smartDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/rich/czlylibary/bean/ActData;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/ActData;->chCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
