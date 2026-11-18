.class public Lcom/rich/czlylibary/bean/SearchRangeNewReq;
.super Ljava/lang/Object;


# instance fields
.field private albumName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentFilter:Ljava/lang/String;

.field private lyricContent:Ljava/lang/String;

.field private matchType:I

.field private movieName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private singerName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private songName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortType:I

.field private tagName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private writterName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
.method public getAlbumName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->albumName:Ljava/util/List;

    return-object v0
.end method

.method public getContentFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->contentFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->lyricContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->matchType:I

    return v0
.end method

.method public getMovieName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->movieName:Ljava/util/List;

    return-object v0
.end method

.method public getSingerName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->singerName:Ljava/util/List;

    return-object v0
.end method

.method public getSongName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->songName:Ljava/util/List;

    return-object v0
.end method

.method public getSortType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->sortType:I

    return v0
.end method

.method public getTagName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->tagName:Ljava/util/List;

    return-object v0
.end method

.method public getWritterName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->writterName:Ljava/util/List;

    return-object v0
.end method

.method public setAlbumName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->albumName:Ljava/util/List;

    return-void
.end method

.method public setContentFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->contentFilter:Ljava/lang/String;

    return-void
.end method

.method public setLyricContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->lyricContent:Ljava/lang/String;

    return-void
.end method

.method public setMatchType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->matchType:I

    return-void
.end method

.method public setMovieName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->movieName:Ljava/util/List;

    return-void
.end method

.method public setSingerName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->singerName:Ljava/util/List;

    return-void
.end method

.method public setSongName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->songName:Ljava/util/List;

    return-void
.end method

.method public setSortType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->sortType:I

    return-void
.end method

.method public setTagName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->tagName:Ljava/util/List;

    return-void
.end method

.method public setWritterName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchRangeNewReq;->writterName:Ljava/util/List;

    return-void
.end method
