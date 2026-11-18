.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;
.super Ljava/lang/Object;
.source "FavouriteMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorsBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$AuthorTypesBeanX;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/Object;

.field private authorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$AuthorTypesBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/Object;

.field private description:Ljava/lang/String;

.field private gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;

.field private id:I

.field private isOnline:Z

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlias()Ljava/lang/Object;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->alias:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$AuthorTypesBeanX;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->authorTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/Object;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->cover:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 693
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->id:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isIsOnline()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->isOnline:Z

    return v0
.end method

.method public setAlias(Ljava/lang/Object;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->alias:Ljava/lang/Object;

    return-void
.end method

.method public setAuthorTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$AuthorTypesBeanX;",
            ">;)V"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->authorTypes:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/Object;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->cover:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->description:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX$GenderBeanX;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 695
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->id:I

    return-void
.end method

.method public setIsOnline(Z)V
    .locals 0

    .line 711
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->isOnline:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->type:Ljava/lang/String;

    return-void
.end method
