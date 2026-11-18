.class public Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;
.super Lcom/rich/czlylibary/bean/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field c:[Ljava/lang/String;

.field f:Ljava/lang/String;

.field i:Ljava/lang/String;

.field s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getC()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public setC([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->c:[Ljava/lang/String;

    return-void
.end method

.method public setF(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendAlikeMusicInfo{s=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", i=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->c:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", f=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/RecommendAlikeMusicInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
