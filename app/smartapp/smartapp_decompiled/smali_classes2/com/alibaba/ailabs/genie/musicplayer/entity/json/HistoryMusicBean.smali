.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;
.super Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;
.source "HistoryMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;
    }
.end annotation


# instance fields
.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;",
            ">;"
        }
    .end annotation
.end field

.field private collect:Z

.field private currentPlay:Ljava/lang/Object;

.field private extendInfo:Ljava/lang/String;

.field private firstType:Ljava/lang/String;

.field private isAudition:Z

.field private isCharge:Z

.field private itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;

.field private offline:Z

.field private payStatus:Ljava/lang/String;

.field private playFrom:Ljava/lang/String;

.field private position:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pos"
    .end annotation
.end field

.field private secondType:Ljava/lang/String;

.field private timeStamp:Ljava/lang/Object;

.field private userId:Ljava/lang/Object;

.field private uuid:Ljava/lang/Object;

.field private valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPlay()Ljava/lang/Object;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->currentPlay:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtendInfo()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->extendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstType()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->firstType:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;

    return-object v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->payStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayFrom()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->playFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->position:I

    return v0
.end method

.method public getSecondType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->secondType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->timeStamp:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->userId:Ljava/lang/Object;

    return-object v0
.end method

.method public getUuid()Ljava/lang/Object;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->uuid:Ljava/lang/Object;

    return-object v0
.end method

.method public getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;

    return-object v0
.end method

.method public isCollect()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->collect:Z

    return v0
.end method

.method public isIsAudition()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->isAudition:Z

    return v0
.end method

.method public isIsCharge()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->isCharge:Z

    return v0
.end method

.method public isOffline()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->offline:Z

    return v0
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->authors:Ljava/util/List;

    return-void
.end method

.method public setCollect(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->collect:Z

    return-void
.end method

.method public setCurrentPlay(Ljava/lang/Object;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->currentPlay:Ljava/lang/Object;

    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->extendInfo:Ljava/lang/String;

    return-void
.end method

.method public setFirstType(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->firstType:Ljava/lang/String;

    return-void
.end method

.method public setIsAudition(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->isAudition:Z

    return-void
.end method

.method public setIsCharge(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->isCharge:Z

    return-void
.end method

.method public setItemType(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->itemType:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ItemTypeBean;

    return-void
.end method

.method public setOffline(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->offline:Z

    return-void
.end method

.method public setPayStatus(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->payStatus:Ljava/lang/String;

    return-void
.end method

.method public setPlayFrom(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->playFrom:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->position:I

    return-void
.end method

.method public setSecondType(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->secondType:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Object;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->timeStamp:Ljava/lang/Object;

    return-void
.end method

.method public setUserId(Ljava/lang/Object;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->userId:Ljava/lang/Object;

    return-void
.end method

.method public setUuid(Ljava/lang/Object;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->uuid:Ljava/lang/Object;

    return-void
.end method

.method public setValid(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->valid:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$ValidBean;

    return-void
.end method
