.class public Lcom/rich/czlylibary/bean/SongItem;
.super Ljava/lang/Object;


# instance fields
.field private album:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private albumImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/ImgItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentId:Ljava/lang/String;

.field private copyright:Ljava/lang/String;

.field private copyrightId:Ljava/lang/String;

.field private dAlbumId:Ljava/lang/String;

.field private digitalColumnId:Ljava/lang/String;

.field private isInDAlbum:Ljava/lang/String;

.field private lrcUrl:Ljava/lang/String;

.field private mrcUrl:Ljava/lang/String;

.field private opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

.field private rateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongFormatItem;",
            ">;"
        }
    .end annotation
.end field

.field private relatedSongs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RelatedItem;",
            ">;"
        }
    .end annotation
.end field

.field private resourceType:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private singerId:Ljava/lang/String;

.field private songId:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private songType:Ljava/lang/String;

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private toneControl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumImgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/ImgItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->albumImgs:Ljava/util/List;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->copyrightId:Ljava/lang/String;

    return-object v0
.end method

.method public getDigitalColumnId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->digitalColumnId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInDAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->isInDAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->lrcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMrcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->mrcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOpNumItem()Lcom/rich/czlylibary/bean/OPNumItem;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

    return-object v0
.end method

.method public getRateFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongFormatItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->rateFormats:Ljava/util/List;

    return-object v0
.end method

.method public getRelatedSongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RelatedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->relatedSongs:Ljava/util/List;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSingerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->singerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->songType:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public getToneControl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->toneControl:Ljava/lang/String;

    return-object v0
.end method

.method public getdAlbumId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SongItem;->dAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->album:Ljava/lang/String;

    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumImgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/ImgItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->albumImgs:Ljava/util/List;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->copyrightId:Ljava/lang/String;

    return-void
.end method

.method public setDigitalColumnId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->digitalColumnId:Ljava/lang/String;

    return-void
.end method

.method public setIsInDAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->isInDAlbum:Ljava/lang/String;

    return-void
.end method

.method public setLrcUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->lrcUrl:Ljava/lang/String;

    return-void
.end method

.method public setMrcUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->mrcUrl:Ljava/lang/String;

    return-void
.end method

.method public setOpNumItem(Lcom/rich/czlylibary/bean/OPNumItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

    return-void
.end method

.method public setRateFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongFormatItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->rateFormats:Ljava/util/List;

    return-void
.end method

.method public setRelatedSongs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RelatedItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->relatedSongs:Ljava/util/List;

    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->resourceType:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSingerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->singerId:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSongType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->songType:Ljava/lang/String;

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->tagList:Ljava/util/List;

    return-void
.end method

.method public setToneControl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->toneControl:Ljava/lang/String;

    return-void
.end method

.method public setdAlbumId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SongItem;->dAlbumId:Ljava/lang/String;

    return-void
.end method
