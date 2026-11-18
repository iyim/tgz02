.class public Lcom/rich/czlylibary/bean/MiguAppPlayListItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private contentCount:Ljava/lang/String;

.field private contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MiguAppContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private createTime:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private imageChangeType:Ljava/lang/String;

.field private playListId:Ljava/lang/String;

.field private playListName:Ljava/lang/String;

.field private playListType:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MiguAppContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->contentList:Ljava/util/List;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImageChangeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->imageChangeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayListId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayListName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayListType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListType:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->contentCount:Ljava/lang/String;

    return-void
.end method

.method public setContentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MiguAppContentItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->contentList:Ljava/util/List;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->image:Ljava/lang/String;

    return-void
.end method

.method public setImageChangeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->imageChangeType:Ljava/lang/String;

    return-void
.end method

.method public setPlayListId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListId:Ljava/lang/String;

    return-void
.end method

.method public setPlayListName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListName:Ljava/lang/String;

    return-void
.end method

.method public setPlayListType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->playListType:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->summary:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguAppPlayListItem;->updateTime:Ljava/lang/String;

    return-void
.end method
