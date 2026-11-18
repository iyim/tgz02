.class public Lcom/rich/czlylibary/bean/SearchSongNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchSong:Lcom/rich/czlylibary/bean/SearchSongNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchSong()Lcom/rich/czlylibary/bean/SearchSongNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewResult;->searchSong:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-object v0
.end method

.method public setSearchSong(Lcom/rich/czlylibary/bean/SearchSongNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewResult;->searchSong:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSongNewResult{searchSong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/SearchSongNewResult;->searchSong:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
