.class public Lcom/rich/czlylibary/bean/AlbumMusicResult;
.super Lcom/rich/czlylibary/bean/Result;


# static fields
.field private static final serialVersionUID:J = 0x4cfb9ca9da8598cbL


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumIni:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private albumPicDir:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private musicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resCounter:Ljava/lang/String;

.field private singgerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumIni()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumIni:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumPicDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumPicDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->musicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getResCounter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->resCounter:Ljava/lang/String;

    return-object v0
.end method

.method public getSinggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->singgerId:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumIni(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumIni:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAlbumPicDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->albumPicDir:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->intro:Ljava/lang/String;

    return-void
.end method

.method public setMusicInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->musicInfoList:Ljava/util/List;

    return-void
.end method

.method public setResCounter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->resCounter:Ljava/lang/String;

    return-void
.end method

.method public setSinggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumMusicResult;->singgerId:Ljava/lang/String;

    return-void
.end method
