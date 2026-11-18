.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;
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
    name = "AlbumItemBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;
    }
.end annotation


# instance fields
.field private albumType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;

.field private alias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;",
            ">;"
        }
    .end annotation
.end field

.field private boughtStatus:Z

.field private category:Ljava/lang/String;

.field private commCateId:I

.field private copyright:I

.field private cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;

.field private description:Ljava/lang/String;

.field private extendInfo:Ljava/lang/Object;

.field private finished:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;

.field private hotScore:D

.field private id:I

.field private isAudition:Z

.field private isCharge:Z

.field private isVipFree:Ljava/lang/Object;

.field private itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;

.field private playStatus:I

.field private rawId:Ljava/lang/String;

.field private releaseTime:Ljava/lang/String;

.field private sellType:Ljava/lang/Object;

.field private source:Ljava/lang/String;

.field private sourceId:I

.field private title:Ljava/lang/String;

.field private tppExtendInfo:Ljava/lang/Object;

.field private type:Ljava/lang/String;

.field private valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;

.field private x1Pv30d:I

.field private x1PvTotal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumType()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->albumType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;

    return-object v0
.end method

.method public getAlias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->alias:Ljava/util/List;

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCommCateId()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->commCateId:I

    return v0
.end method

.method public getCopyright()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->copyright:I

    return v0
.end method

.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendInfo()Ljava/lang/Object;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->extendInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getFinished()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->finished:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;

    return-object v0
.end method

.method public getHotScore()D
    .locals 2

    .line 331
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->hotScore:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->id:I

    return v0
.end method

.method public getIsVipFree()Ljava/lang/Object;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isVipFree:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemType()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->playStatus:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSellType()Ljava/lang/Object;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->sellType:Ljava/lang/Object;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->sourceId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTppExtendInfo()Ljava/lang/Object;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->tppExtendInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;

    return-object v0
.end method

.method public getX1Pv30d()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->x1Pv30d:I

    return v0
.end method

.method public getX1PvTotal()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->x1PvTotal:I

    return v0
.end method

.method public isBoughtStatus()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->boughtStatus:Z

    return v0
.end method

.method public isIsAudition()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isAudition:Z

    return v0
.end method

.method public isIsCharge()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isCharge:Z

    return v0
.end method

.method public setAlbumType(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->albumType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AlbumTypeBean;

    return-void
.end method

.method public setAlias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->alias:Ljava/util/List;

    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$AuthorsBean;",
            ">;)V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->authors:Ljava/util/List;

    return-void
.end method

.method public setBoughtStatus(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->boughtStatus:Z

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCommCateId(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->commCateId:I

    return-void
.end method

.method public setCopyright(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->copyright:I

    return-void
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setExtendInfo(Ljava/lang/Object;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->extendInfo:Ljava/lang/Object;

    return-void
.end method

.method public setFinished(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->finished:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$FinishedBean;

    return-void
.end method

.method public setHotScore(D)V
    .locals 0

    .line 333
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->hotScore:D

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->id:I

    return-void
.end method

.method public setIsAudition(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isAudition:Z

    return-void
.end method

.method public setIsCharge(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isCharge:Z

    return-void
.end method

.method public setIsVipFree(Ljava/lang/Object;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->isVipFree:Ljava/lang/Object;

    return-void
.end method

.method public setItemType(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ItemTypeBean;

    return-void
.end method

.method public setPlayStatus(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->playStatus:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setSellType(Ljava/lang/Object;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->sellType:Ljava/lang/Object;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->sourceId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTppExtendInfo(Ljava/lang/Object;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->tppExtendInfo:Ljava/lang/Object;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValid(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$ValidBean;

    return-void
.end method

.method public setX1Pv30d(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->x1Pv30d:I

    return-void
.end method

.method public setX1PvTotal(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;->x1PvTotal:I

    return-void
.end method
