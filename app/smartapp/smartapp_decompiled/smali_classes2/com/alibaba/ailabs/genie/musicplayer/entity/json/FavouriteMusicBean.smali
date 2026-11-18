.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;
.super Ljava/lang/Object;
.source "FavouriteMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;
    }
.end annotation


# static fields
.field public static final TYPE_NOT_VALID:Ljava/lang/String; = "NOT_VALID"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final TYPE_VALID:Ljava/lang/String; = "VALID"


# instance fields
.field private albumItem:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;

.field private albumRawId:Ljava/lang/String;

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private collect:Z

.field private copyright:I

.field private cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

.field private duration:I

.field private extendInfo:Ljava/lang/Object;

.field private id:I

.field private isAudition:Z

.field private isCharge:Z

.field private itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;

.field private lyric:Ljava/lang/Object;

.field private otherTypeIds:Ljava/lang/String;

.field private packageType:Ljava/lang/String;

.field private payStatus:Ljava/lang/String;

.field private playUrls:Ljava/lang/Object;

.field private position:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pos"
    .end annotation
.end field

.field private rawId:Ljava/lang/String;

.field private soundDelta:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/Object;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumItem()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->albumItem:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;

    return-object v0
.end method

.method public getAlbumRawId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->albumRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->copyright:I

    return v0
.end method

.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->duration:I

    return v0
.end method

.method public getExtendInfo()Ljava/lang/Object;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->extendInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->id:I

    return v0
.end method

.method public getItemType()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;

    return-object v0
.end method

.method public getLyric()Ljava/lang/Object;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->lyric:Ljava/lang/Object;

    return-object v0
.end method

.method public getOtherTypeIds()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->otherTypeIds:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->packageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->payStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrls()Ljava/lang/Object;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->playUrls:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->position:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundDelta()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->soundDelta:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->text:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;

    return-object v0
.end method

.method public isCollect()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->collect:Z

    return v0
.end method

.method public isIsAudition()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->isAudition:Z

    return v0
.end method

.method public isIsCharge()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->isCharge:Z

    return v0
.end method

.method public setAlbumItem(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->albumItem:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;

    return-void
.end method

.method public setAlbumRawId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->albumRawId:Ljava/lang/String;

    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->authors:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setCollect(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->collect:Z

    return-void
.end method

.method public setCopyright(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->copyright:I

    return-void
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->duration:I

    return-void
.end method

.method public setExtendInfo(Ljava/lang/Object;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->extendInfo:Ljava/lang/Object;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->id:I

    return-void
.end method

.method public setIsAudition(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->isAudition:Z

    return-void
.end method

.method public setIsCharge(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->isCharge:Z

    return-void
.end method

.method public setItemType(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ItemTypeBeanX;

    return-void
.end method

.method public setLyric(Ljava/lang/Object;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->lyric:Ljava/lang/Object;

    return-void
.end method

.method public setOtherTypeIds(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->otherTypeIds:Ljava/lang/String;

    return-void
.end method

.method public setPackageType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->packageType:Ljava/lang/String;

    return-void
.end method

.method public setPayStatus(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->payStatus:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrls(Ljava/lang/Object;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->playUrls:Ljava/lang/Object;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->position:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setSoundDelta(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->soundDelta:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/Object;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->text:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValid(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
