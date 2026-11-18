.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
.super Ljava/lang/Object;
.source "ContentPlay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;
    }
.end annotation


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private albumRawId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private audioAlbum:Ljava/lang/String;

.field private audioExt:Ljava/lang/String;

.field private audioExtBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

.field private audioName:Ljava/lang/String;

.field private audioUrl:Ljava/lang/String;

.field private backgroundImage:Ljava/lang/String;

.field private businessButton:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;",
            ">;"
        }
    .end annotation
.end field

.field private canPlay:Z

.field private canReceiveRights:Z

.field private chargeTips:Ljava/lang/String;

.field private collect:Z

.field private copyRight:I

.field private cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

.field private defaultPlayOrder:I

.field private duration:I

.field private isFinished:Z

.field private isVip:Z

.field private itemId:Ljava/lang/String;

.field private itemRawId:Ljava/lang/String;

.field private itemType:Ljava/lang/String;

.field private lyricUrl:Ljava/lang/String;

.field private lyricbackGround:Ljava/lang/String;

.field private lyricbackGroundAuhor:Ljava/lang/String;

.field private miniProgramId:Ljava/lang/String;

.field private moreEditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private needLogin:Z

.field private pageNum:I

.field private pageSize:I

.field private playMode:Ljava/lang/String;

.field private popPaper:Ljava/lang/String;

.field private position:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pos"
    .end annotation
.end field

.field private progress:I

.field private rawId:Ljava/lang/String;

.field private requestType:Ljava/lang/String;

.field private rightImage:Ljava/lang/String;

.field private sameAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private similarRecList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private singer:Ljava/lang/String;

.field private sollectRecList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private soundQuality:Ljava/lang/String;

.field private soundQualityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/lang/String;

.field private sourceLogo:Ljava/lang/String;

.field private sourceName:Ljava/lang/String;

.field private speedValue:Ljava/lang/String;

.field private toast:Ljava/lang/String;

.field private totalEpisode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumRawId()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioAlbum()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioExt()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExt:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioExtBean()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExtBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    return-object v0
.end method

.method public getAudioName()Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessButton()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->businessButton:Ljava/util/List;

    return-object v0
.end method

.method public getChargeTips()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->chargeTips:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyRight()I
    .locals 1

    .line 526
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->copyRight:I

    return v0
.end method

.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    return-object v0
.end method

.method public getDefaultPlayOrder()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->defaultPlayOrder:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->duration:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemRawId()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricUrl()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricbackGround()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGround:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricbackGroundAuhor()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGroundAuhor:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniProgramId()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->miniProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreEditionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->moreEditionList:Ljava/util/List;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageSize:I

    return v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPopPaper()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->popPaper:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->position:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 624
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->progress:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getRightImage()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->rightImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSameAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sameAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getSimilarRecList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->similarRecList:Ljava/util/List;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->singer:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->singer:Ljava/lang/String;

    const-string v1, ";"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSollectRecList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sollectRecList:Ljava/util/List;

    return-object v0
.end method

.method public getSoundQuality()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundQualityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQualityList:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLogo()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedValue()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->speedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getToast()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEpisode()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->totalEpisode:I

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->canPlay:Z

    return v0
.end method

.method public isCanReceiveRights()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->canReceiveRights:Z

    return v0
.end method

.method public isCollect()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->collect:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isFinished:Z

    return v0
.end method

.method public isNeedLogin()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->needLogin:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isVip:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAlbumRawId(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumRawId:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAudioAlbum(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioAlbum:Ljava/lang/String;

    return-void
.end method

.method public setAudioExt(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExt:Ljava/lang/String;

    return-void
.end method

.method public setAudioExtBean(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExtBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    return-void
.end method

.method public setAudioName(Ljava/lang/String;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioName:Ljava/lang/String;

    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->backgroundImage:Ljava/lang/String;

    return-void
.end method

.method public setBusinessButton(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;",
            ">;)V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->businessButton:Ljava/util/List;

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 538
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->canPlay:Z

    return-void
.end method

.method public setCanReceiveRights(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->canReceiveRights:Z

    return-void
.end method

.method public setChargeTips(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->chargeTips:Ljava/lang/String;

    return-void
.end method

.method public setCollect(Z)V
    .locals 0

    .line 636
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->collect:Z

    return-void
.end method

.method public setCopyRight(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->copyRight:I

    return-void
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    return-void
.end method

.method public setDefaultPlayOrder(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->defaultPlayOrder:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 587
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->duration:I

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isFinished:Z

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemRawId(Ljava/lang/String;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemRawId:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setLyricUrl(Ljava/lang/String;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricUrl:Ljava/lang/String;

    return-void
.end method

.method public setLyricbackGround(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGround:Ljava/lang/String;

    return-void
.end method

.method public setLyricbackGroundAuhor(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGroundAuhor:Ljava/lang/String;

    return-void
.end method

.method public setMiniProgramId(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->miniProgramId:Ljava/lang/String;

    return-void
.end method

.method public setMoreEditionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;)V"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->moreEditionList:Ljava/util/List;

    return-void
.end method

.method public setNeedLogin(Z)V
    .locals 0

    .line 546
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->needLogin:Z

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageSize:I

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->playMode:Ljava/lang/String;

    return-void
.end method

.method public setPopPaper(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->popPaper:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->position:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->progress:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setRequestType(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->requestType:Ljava/lang/String;

    return-void
.end method

.method public setRightImage(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->rightImage:Ljava/lang/String;

    return-void
.end method

.method public setSameAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;)V"
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sameAlbumList:Ljava/util/List;

    return-void
.end method

.method public setSimilarRecList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;)V"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->similarRecList:Ljava/util/List;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSollectRecList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;)V"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sollectRecList:Ljava/util/List;

    return-void
.end method

.method public setSoundQuality(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQuality:Ljava/lang/String;

    return-void
.end method

.method public setSoundQualityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQualityList:Ljava/util/List;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourceLogo(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceLogo:Ljava/lang/String;

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setSpeedValue(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->speedValue:Ljava/lang/String;

    return-void
.end method

.method public setToast(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toast:Ljava/lang/String;

    return-void
.end method

.method public setTotalEpisode(I)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->totalEpisode:I

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isVip:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentPlay{audioExt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", albumRawId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumRawId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", copyRight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->copyRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", canPlay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->canPlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needLogin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->needLogin:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", albumId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->playMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", itemRawId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemRawId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", collect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->collect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lyricUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalEpisode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->totalEpisode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isFinished="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isFinished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pageNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pageSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->pageSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rawId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->rawId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lyricbackGround=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGround:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lyricbackGroundAuhor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->lyricbackGroundAuhor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", speedValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->speedValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soundQuality=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQuality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soundQualityList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->soundQualityList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", toast=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toast:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioAlbum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", miniProgramId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->miniProgramId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chargeTips=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->chargeTips:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundImage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sourceLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPlayOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->defaultPlayOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", similarRecList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->similarRecList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moreEditionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->moreEditionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sameAlbumList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sameAlbumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sollectRecList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->sollectRecList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioExtBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->audioExtBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", businessButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->businessButton:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
