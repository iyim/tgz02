.class public Lcom/rich/czlylibary/bean/SongNewVoiceBox;
.super Ljava/lang/Object;


# instance fields
.field private albums:[Lcom/rich/czlylibary/bean/AlbumForVoiceBox;

.field private composer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private copyright:Ljava/lang/String;

.field private fullSongs:[Lcom/rich/czlylibary/bean/ToneNew;

.field private highlightLyricStr:Ljava/lang/String;

.field private highlightStr:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lyricUrl:Ljava/lang/String;

.field private lyricist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private movieNames:[Ljava/lang/String;

.field private multiLyricStr:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private singers:[Lcom/rich/czlylibary/bean/SingerForVoiceBox;

.field private strlyric:Ljava/lang/String;

.field private televisionNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbums()[Lcom/rich/czlylibary/bean/AlbumForVoiceBox;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->albums:[Lcom/rich/czlylibary/bean/AlbumForVoiceBox;

    return-object v0
.end method

.method public getComposer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->composer:Ljava/util/List;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getFullSongs()[Lcom/rich/czlylibary/bean/ToneNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->fullSongs:[Lcom/rich/czlylibary/bean/ToneNew;

    return-object v0
.end method

.method public getHighlightLyricStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->highlightLyricStr:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->highlightStr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->lyricUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->lyricist:Ljava/util/List;

    return-object v0
.end method

.method public getMovieNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->movieNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getMultiLyricStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->multiLyricStr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSingers()[Lcom/rich/czlylibary/bean/SingerForVoiceBox;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->singers:[Lcom/rich/czlylibary/bean/SingerForVoiceBox;

    return-object v0
.end method

.method public getStrlyric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->strlyric:Ljava/lang/String;

    return-object v0
.end method

.method public getTelevisionNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->televisionNames:[Ljava/lang/String;

    return-object v0
.end method

.method public setAlbums([Lcom/rich/czlylibary/bean/AlbumForVoiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->albums:[Lcom/rich/czlylibary/bean/AlbumForVoiceBox;

    return-void
.end method

.method public setComposer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->composer:Ljava/util/List;

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setFullSongs([Lcom/rich/czlylibary/bean/ToneNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->fullSongs:[Lcom/rich/czlylibary/bean/ToneNew;

    return-void
.end method

.method public setHighlightLyricStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->highlightLyricStr:Ljava/lang/String;

    return-void
.end method

.method public setHighlightStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->highlightStr:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->id:Ljava/lang/String;

    return-void
.end method

.method public setLyricUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->lyricUrl:Ljava/lang/String;

    return-void
.end method

.method public setLyricist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->lyricist:Ljava/util/List;

    return-void
.end method

.method public setMovieNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->movieNames:[Ljava/lang/String;

    return-void
.end method

.method public setMultiLyricStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->multiLyricStr:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->name:Ljava/lang/String;

    return-void
.end method

.method public setSingers([Lcom/rich/czlylibary/bean/SingerForVoiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->singers:[Lcom/rich/czlylibary/bean/SingerForVoiceBox;

    return-void
.end method

.method public setStrlyric(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->strlyric:Ljava/lang/String;

    return-void
.end method

.method public setTelevisionNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongNewVoiceBox;->televisionNames:[Ljava/lang/String;

    return-void
.end method
