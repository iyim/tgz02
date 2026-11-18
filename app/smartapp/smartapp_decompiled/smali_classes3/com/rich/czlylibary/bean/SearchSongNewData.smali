.class public Lcom/rich/czlylibary/bean/SearchSongNewData;
.super Ljava/lang/Object;


# instance fields
.field private fullSongTotal:I

.field private isFromCache:I

.field private result:[Lcom/rich/czlylibary/bean/SongNew;

.field private resultType:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFullSongTotal()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->fullSongTotal:I

    return v0
.end method

.method public getIsFromCache()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->isFromCache:I

    return v0
.end method

.method public getResult()[Lcom/rich/czlylibary/bean/SongNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->result:[Lcom/rich/czlylibary/bean/SongNew;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->resultType:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->total:I

    return v0
.end method

.method public setFullSongTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->fullSongTotal:I

    return-void
.end method

.method public setIsFromCache(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->isFromCache:I

    return-void
.end method

.method public setResult([Lcom/rich/czlylibary/bean/SongNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->result:[Lcom/rich/czlylibary/bean/SongNew;

    return-void
.end method

.method public setResultType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->resultType:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSongNewData{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/SearchSongNewData;->result:[Lcom/rich/czlylibary/bean/SongNew;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
