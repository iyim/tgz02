.class public Lcom/rich/czlylibary/bean/SearchSuggestNewData;
.super Ljava/lang/Object;


# instance fields
.field private albumList:[Lcom/rich/czlylibary/bean/AlbumNew;

.field private singerList:[Lcom/rich/czlylibary/bean/SingerNew;

.field private songList:[Lcom/rich/czlylibary/bean/SongNew;

.field private tagList:[Lcom/rich/czlylibary/bean/TagNew;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumList()[Lcom/rich/czlylibary/bean/AlbumNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->albumList:[Lcom/rich/czlylibary/bean/AlbumNew;

    return-object v0
.end method

.method public getSingerList()[Lcom/rich/czlylibary/bean/SingerNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->singerList:[Lcom/rich/czlylibary/bean/SingerNew;

    return-object v0
.end method

.method public getSongList()[Lcom/rich/czlylibary/bean/SongNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->songList:[Lcom/rich/czlylibary/bean/SongNew;

    return-object v0
.end method

.method public getTagList()[Lcom/rich/czlylibary/bean/TagNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->tagList:[Lcom/rich/czlylibary/bean/TagNew;

    return-object v0
.end method

.method public setAlbumList([Lcom/rich/czlylibary/bean/AlbumNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->albumList:[Lcom/rich/czlylibary/bean/AlbumNew;

    return-void
.end method

.method public setSingerList([Lcom/rich/czlylibary/bean/SingerNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->singerList:[Lcom/rich/czlylibary/bean/SingerNew;

    return-void
.end method

.method public setSongList([Lcom/rich/czlylibary/bean/SongNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->songList:[Lcom/rich/czlylibary/bean/SongNew;

    return-void
.end method

.method public setTagList([Lcom/rich/czlylibary/bean/TagNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewData;->tagList:[Lcom/rich/czlylibary/bean/TagNew;

    return-void
.end method
