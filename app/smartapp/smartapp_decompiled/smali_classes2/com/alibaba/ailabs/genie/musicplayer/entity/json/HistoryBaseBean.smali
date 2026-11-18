.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;
.super Ljava/lang/Object;
.source "HistoryBaseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;
    }
.end annotation


# instance fields
.field private copyright:I

.field private cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;

.field private id:I

.field public isSelected:Z

.field private rawId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


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
.method public getCopyright()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->copyright:I

    return v0
.end method

.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->id:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->isSelected:Z

    return v0
.end method

.method public setCopyright(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->copyright:I

    return-void
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->id:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->isSelected:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;->url:Ljava/lang/String;

    return-void
.end method
