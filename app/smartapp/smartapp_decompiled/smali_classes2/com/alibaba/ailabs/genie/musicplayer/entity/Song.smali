.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public Album:Ljava/lang/String;

.field public Artist:Ljava/lang/String;

.field public Copyright:Ljava/lang/String;

.field public Duration:J

.field public Format:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Image:Ljava/lang/String;

.field public IsCollected:Z

.field public ItemId:Ljava/lang/String;

.field public ItemType:Ljava/lang/String;

.field public Lyric:Ljava/lang/String;

.field public Source:Ljava/lang/String;

.field public Title:Ljava/lang/String;

.field public Url:Ljava/lang/String;

.field private albumId:Ljava/lang/String;

.field private albumPrice:Ljava/lang/String;

.field private albumProgress:Ljava/lang/String;

.field public albumRawId:Ljava/lang/String;

.field public audioExt:Ljava/lang/String;

.field private canPlay:Z

.field private charge:I

.field public description:Ljava/lang/String;

.field private firstType:Ljava/lang/String;

.field private fromVoice:Z

.field private hasRequestRemote:Z

.field private index:I

.field private internalAlbumId:Ljava/lang/String;

.field private internalId:Ljava/lang/String;

.field private isDetail:Z

.field private isVipFree:Ljava/lang/Boolean;

.field private memberPrice:Ljava/lang/String;

.field private needLogin:Z

.field private packageType:Ljava/lang/String;

.field private pageNum:I

.field private pageSize:I

.field private payStatus:Ljava/lang/String;

.field private playFrom:Ljava/lang/String;

.field private playId:Ljava/lang/String;

.field private position:I

.field private progress:I

.field public rawId:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private secondType:Ljava/lang/String;

.field private sellType:Ljava/lang/String;

.field private soundDelta:I

.field private special:Ljava/lang/String;

.field private sysId:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field private webappId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->index:I

    const-string v1, ""

    .line 32
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Copyright:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->position:I

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->soundDelta:I

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->fromVoice:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->hasRequestRemote:Z

    .line 43
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->audioExt:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->playId:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->requestId:Ljava/lang/String;

    const-string v0, "1"

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumProgress:Ljava/lang/String;

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageNum:I

    const/16 v0, 0x1e

    .line 49
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageSize:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 245
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public compareTo(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)I
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 300
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->compareTo(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 295
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumPrice()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumProgress()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumRawId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Artist:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioExt()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->audioExt:Ljava/lang/String;

    return-object v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->canPlay:Z

    return v0
.end method

.method public getCharge()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->charge:I

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 452
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Duration:J

    return-wide v0
.end method

.method public getFirstType()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->firstType:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Format:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Image:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->index:I

    return v0
.end method

.method public getInternalAlbumId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVipFree()Ljava/lang/Boolean;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isVipFree:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberPrice()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->memberPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->packageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageSize:I

    return v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->payStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayFrom()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->playFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayId()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->playId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->position:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->progress:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondType()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->secondType:Ljava/lang/String;

    return-object v0
.end method

.method public getSellType()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sellType:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundDelta()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->soundDelta:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Source:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecial()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->special:Ljava/lang/String;

    return-object v0
.end method

.method public getSysId()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sysId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebappId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->webappId:Ljava/lang/String;

    return-object v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->canPlay:Z

    return v0
.end method

.method public isCollected()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->IsCollected:Z

    return v0
.end method

.method public isDetail()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isDetail:Z

    return v0
.end method

.method public isFromVoice()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->fromVoice:Z

    return v0
.end method

.method public isHasRequestRemote()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->hasRequestRemote:Z

    return v0
.end method

.method public isNeedLogin()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->needLogin:Z

    return v0
.end method

.method public isVipFree()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isVipFree:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Album:Ljava/lang/String;

    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumPrice(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumPrice:Ljava/lang/String;

    return-void
.end method

.method public setAlbumProgress(Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumProgress:Ljava/lang/String;

    return-void
.end method

.method public setAlbumRawId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumRawId:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Artist:Ljava/lang/String;

    return-void
.end method

.method public setAudioExt(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->audioExt:Ljava/lang/String;

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->canPlay:Z

    return-void
.end method

.method public setCharge(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->charge:I

    return-void
.end method

.method public setCollected(Z)V
    .locals 0

    .line 400
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->IsCollected:Z

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Copyright:Ljava/lang/String;

    return-void
.end method

.method public setDetail(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isDetail:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 456
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Duration:J

    return-void
.end method

.method public setFirstType(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->firstType:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Format:Ljava/lang/String;

    return-void
.end method

.method public setFromVoice(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->fromVoice:Z

    return-void
.end method

.method public setHasRequestRemote(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->hasRequestRemote:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Image:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->index:I

    return-void
.end method

.method public setInternalAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalAlbumId:Ljava/lang/String;

    return-void
.end method

.method public setInternalId(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalId:Ljava/lang/String;

    return-void
.end method

.method public setIsVipFree(Ljava/lang/Boolean;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isVipFree:Ljava/lang/Boolean;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemType:Ljava/lang/String;

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Lyric:Ljava/lang/String;

    return-void
.end method

.method public setMemberPrice(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->memberPrice:Ljava/lang/String;

    return-void
.end method

.method public setNeedLogin(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->needLogin:Z

    return-void
.end method

.method public setPackageType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->packageType:Ljava/lang/String;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 536
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageSize:I

    return-void
.end method

.method public setPayStatus(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->payStatus:Ljava/lang/String;

    return-void
.end method

.method public setPlayFrom(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->playFrom:Ljava/lang/String;

    return-void
.end method

.method public setPlayId(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->playId:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->position:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 504
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->progress:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setSecondType(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->secondType:Ljava/lang/String;

    return-void
.end method

.method public setSellType(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sellType:Ljava/lang/String;

    return-void
.end method

.method public setSoundDelta(I)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->soundDelta:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Source:Ljava/lang/String;

    return-void
.end method

.method public setSpecial(Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->special:Ljava/lang/String;

    return-void
.end method

.method public setSysId(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sysId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Url:Ljava/lang/String;

    return-void
.end method

.method public setVipFree(Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isVipFree:Ljava/lang/Boolean;

    return-void
.end method

.method public setWebappId(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->webappId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Song{Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Lyric=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Lyric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Copyright=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Copyright:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->ItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Special="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IsCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->IsCollected:Z

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->fromVoice:Z

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasRequestRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->hasRequestRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->audioExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->internalAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->charge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sysId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVipFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->isVipFree:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->needLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->canPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sellType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->sellType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->memberPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->albumPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->payStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->pageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
