.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;
.super Ljava/lang/Object;
.source "SoundPrintInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alipaySigned:Z

.field private enablePay:Z

.field private id:J

.field private lastModified:J

.field private name:Ljava/lang/String;

.field private payPassword:Ljava/lang/String;

.field private paySucc:Z

.field private soundPrintSucc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->id:J

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPassword()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->payPassword:Ljava/lang/String;

    return-object v0
.end method

.method public isAlipaySigned()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->alipaySigned:Z

    return v0
.end method

.method public isEnablePay()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->enablePay:Z

    return v0
.end method

.method public isPaySucc()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->paySucc:Z

    return v0
.end method

.method public isSoundPrintSucc()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->soundPrintSucc:Z

    return v0
.end method

.method public setAlipaySigned(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->alipaySigned:Z

    return-void
.end method

.method public setEnablePay(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->enablePay:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->id:J

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->lastModified:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPayPassword(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->payPassword:Ljava/lang/String;

    return-void
.end method

.method public setPaySucc(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->paySucc:Z

    return-void
.end method

.method public setSoundPrintSucc(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->soundPrintSucc:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundPrintInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", alipaySigned="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->alipaySigned:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enablePay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->enablePay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", payPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->payPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", paySucc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->paySucc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soundPrintSucc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->soundPrintSucc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->lastModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
