.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;
.super Ljava/lang/Object;
.source "FavouriteMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$AuthorTypesBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private authorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$AuthorTypesBean;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/Object;

.field private description:Ljava/lang/String;

.field private gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;

.field private id:I

.field private isOnline:Z

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$AuthorTypesBean;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->authorTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/Object;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->cover:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->id:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isIsOnline()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->isOnline:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->alias:Ljava/lang/String;

    return-void
.end method

.method public setAuthorTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$AuthorTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->authorTypes:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/Object;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->cover:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean$GenderBean;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 526
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->id:I

    return-void
.end method

.method public setIsOnline(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->isOnline:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;->type:Ljava/lang/String;

    return-void
.end method
