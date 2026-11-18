.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;
.super Ljava/lang/Object;
.source "CurrentListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;
    }
.end annotation


# instance fields
.field private albumRawId:Ljava/lang/String;

.field private collect:Z

.field private copyright:I

.field private cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;

.field private extendInfo:Ljava/lang/Object;

.field private isAudition:Z

.field private isCharge:Z

.field private payStatus:Ljava/lang/String;

.field private position:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pos"
    .end annotation
.end field

.field private rawId:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlbumRawId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->albumRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->copyright:I

    return v0
.end method

.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;

    return-object v0
.end method

.method public getExtendInfo()Ljava/lang/Object;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->extendInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->payStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->position:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;

    return-object v0
.end method

.method public isCollect()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->collect:Z

    return v0
.end method

.method public isIsAudition()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->isAudition:Z

    return v0
.end method

.method public isIsCharge()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->isCharge:Z

    return v0
.end method

.method public setAlbumRawId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->albumRawId:Ljava/lang/String;

    return-void
.end method

.method public setCollect(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->collect:Z

    return-void
.end method

.method public setCopyright(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->copyright:I

    return-void
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;

    return-void
.end method

.method public setExtendInfo(Ljava/lang/Object;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->extendInfo:Ljava/lang/Object;

    return-void
.end method

.method public setIsAudition(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->isAudition:Z

    return-void
.end method

.method public setIsCharge(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->isCharge:Z

    return-void
.end method

.method public setPayStatus(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->payStatus:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->position:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setValid(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$ValidBean;

    return-void
.end method
