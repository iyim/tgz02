.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;
.super Ljava/lang/Object;
.source "PlaylistItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private collectId:Ljava/lang/String;

.field private collectName:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCollectId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectId:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectName:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCollectId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectId:Ljava/lang/String;

    return-void
.end method

.method public setCollectName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectName:Ljava/lang/String;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistItemBean{cover=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", collectName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", collectId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->collectId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", intro=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->intro:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
