.class public Lcom/rich/czlylibary/bean/SearchSingerSAMNewData;
.super Ljava/lang/Object;


# instance fields
.field private albumResult:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;

.field private songResult:Lcom/rich/czlylibary/bean/SearchSongNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumResult()Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSingerSAMNewData;->albumResult:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;

    return-object v0
.end method

.method public getSongResult()Lcom/rich/czlylibary/bean/SearchSongNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSingerSAMNewData;->songResult:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-object v0
.end method

.method public setAlbumResult(Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSingerSAMNewData;->albumResult:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;

    return-void
.end method

.method public setSongResult(Lcom/rich/czlylibary/bean/SearchSongNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSingerSAMNewData;->songResult:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-void
.end method
