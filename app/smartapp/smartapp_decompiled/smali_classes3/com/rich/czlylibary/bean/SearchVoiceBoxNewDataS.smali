.class public Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;
.super Ljava/lang/Object;


# instance fields
.field fullSongTotal:I

.field isFromCache:I

.field result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongNewVoiceBox;",
            ">;>;"
        }
    .end annotation
.end field

.field resultType:I

.field total:I


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

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->fullSongTotal:I

    return v0
.end method

.method public getIsFromCache()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->isFromCache:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongNewVoiceBox;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->result:Ljava/util/List;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->resultType:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->total:I

    return v0
.end method

.method public setFullSongTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->fullSongTotal:I

    return-void
.end method

.method public setIsFromCache(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->isFromCache:I

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongNewVoiceBox;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->result:Ljava/util/List;

    return-void
.end method

.method public setResultType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->resultType:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewDataS;->total:I

    return-void
.end method
