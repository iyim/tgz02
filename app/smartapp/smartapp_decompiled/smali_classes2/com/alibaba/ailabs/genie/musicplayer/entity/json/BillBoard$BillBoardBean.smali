.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;
.super Ljava/lang/Object;
.source "BillBoard.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillBoardBean"
.end annotation


# instance fields
.field private audioType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "audioType"
    .end annotation
.end field

.field private billboardType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "billboardType"
    .end annotation
.end field

.field private classify:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "classify"
    .end annotation
.end field

.field private contentList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "contentList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation
.end field

.field private isExposed:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private pageName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pageName"
    .end annotation
.end field

.field private rawId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rawId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->isExposed:Z

    return-void
.end method


# virtual methods
.method public getAudioType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public getBillboardType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->billboardType:Ljava/lang/String;

    return-object v0
.end method

.method public getClassify()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->classify:Ljava/lang/String;

    return-object v0
.end method

.method public getContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->contentList:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public isExposed()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->isExposed:Z

    return v0
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->audioType:Ljava/lang/String;

    return-void
.end method

.method public setBillboardType(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->billboardType:Ljava/lang/String;

    return-void
.end method

.method public setClassify(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->classify:Ljava/lang/String;

    return-void
.end method

.method public setContentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->contentList:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->cover:Ljava/lang/String;

    return-void
.end method

.method public setExposed(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->isExposed:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->pageName:Ljava/lang/String;

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BillBoardBean{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rawId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->rawId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", billboardType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->billboardType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->cover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", classify=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->classify:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", contentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->contentList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
