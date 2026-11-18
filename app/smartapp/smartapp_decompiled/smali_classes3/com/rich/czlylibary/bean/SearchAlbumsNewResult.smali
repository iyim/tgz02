.class public Lcom/rich/czlylibary/bean/SearchAlbumsNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchAlbum:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchAlbum()Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumsNewResult;->searchAlbum:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;

    return-object v0
.end method

.method public setSearchAlbum(Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumsNewResult;->searchAlbum:Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;

    return-void
.end method
