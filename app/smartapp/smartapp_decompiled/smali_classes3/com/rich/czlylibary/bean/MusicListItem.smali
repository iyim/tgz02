.class public Lcom/rich/czlylibary/bean/MusicListItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5274f88c766581c9L


# instance fields
.field private havePrivatePic:Ljava/lang/String;

.field private imgItem:Lcom/rich/czlylibary/bean/ImgItem;

.field private musicListId:Ljava/lang/String;

.field private musicNum:Ljava/lang/String;

.field private opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

.field private ownerId:Ljava/lang/String;

.field private ownerName:Ljava/lang/String;

.field private ownerPic:Ljava/lang/String;

.field private publishTime:Ljava/lang/String;

.field private resourceType:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getHavePrivatePic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->havePrivatePic:Ljava/lang/String;

    return-object v0
.end method

.method public getImgItem()Lcom/rich/czlylibary/bean/ImgItem;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->imgItem:Lcom/rich/czlylibary/bean/ImgItem;

    return-object v0
.end method

.method public getMusicListId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->musicListId:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->musicNum:Ljava/lang/String;

    return-object v0
.end method

.method public getOpNumItem()Lcom/rich/czlylibary/bean/OPNumItem;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerPic:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicListItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setHavePrivatePic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->havePrivatePic:Ljava/lang/String;

    return-void
.end method

.method public setImgItem(Lcom/rich/czlylibary/bean/ImgItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->imgItem:Lcom/rich/czlylibary/bean/ImgItem;

    return-void
.end method

.method public setMusicListId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->musicListId:Ljava/lang/String;

    return-void
.end method

.method public setMusicNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->musicNum:Ljava/lang/String;

    return-void
.end method

.method public setOpNumItem(Lcom/rich/czlylibary/bean/OPNumItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->opNumItem:Lcom/rich/czlylibary/bean/OPNumItem;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerId:Ljava/lang/String;

    return-void
.end method

.method public setOwnerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerName:Ljava/lang/String;

    return-void
.end method

.method public setOwnerPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->ownerPic:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->resourceType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->status:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/TagItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicListItem;->type:Ljava/lang/String;

    return-void
.end method
