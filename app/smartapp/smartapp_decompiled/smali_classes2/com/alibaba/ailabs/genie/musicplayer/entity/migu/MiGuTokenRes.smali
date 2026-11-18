.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;
.super Ljava/lang/Object;
.source "MiGuTokenRes.java"


# instance fields
.field private expireTime:I

.field private openUuid:Ljava/lang/String;

.field private secretToken:Ljava/lang/String;

.field private skillId:I

.field private thirdName:Ljava/lang/String;


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
.method public getExpireTime()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->expireTime:I

    return v0
.end method

.method public getOpenUuid()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->openUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretToken()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->secretToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSkillId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->skillId:I

    return v0
.end method

.method public getThirdName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->thirdName:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->expireTime:I

    return-void
.end method

.method public setOpenUuid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->openUuid:Ljava/lang/String;

    return-void
.end method

.method public setSecretToken(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->secretToken:Ljava/lang/String;

    return-void
.end method

.method public setSkillId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->skillId:I

    return-void
.end method

.method public setThirdName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->thirdName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Res{skillId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->skillId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->expireTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secretToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->secretToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->openUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/migu/MiGuTokenRes;->thirdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
