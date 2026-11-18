.class public Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;
.super Ljava/lang/Object;


# instance fields
.field albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/AlbumNew;",
            ">;"
        }
    .end annotation
.end field

.field artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SingerNew;",
            ">;"
        }
    .end annotation
.end field

.field musicFolder:Lcom/rich/czlylibary/bean/MusicFolder;

.field musicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/AlbumNew;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SingerNew;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getMusicFolder()Lcom/rich/czlylibary/bean/MusicFolder;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->musicFolder:Lcom/rich/czlylibary/bean/MusicFolder;

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

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->musicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/AlbumNew;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->albumList:Ljava/util/List;

    return-void
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SingerNew;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->artists:Ljava/util/List;

    return-void
.end method

.method public setMusicFolder(Lcom/rich/czlylibary/bean/MusicFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->musicFolder:Lcom/rich/czlylibary/bean/MusicFolder;

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

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->musicInfoList:Ljava/util/List;

    return-void
.end method
