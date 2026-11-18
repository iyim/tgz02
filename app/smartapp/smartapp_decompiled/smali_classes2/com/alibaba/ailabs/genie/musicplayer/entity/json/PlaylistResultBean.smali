.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "PlaylistResultBean.java"


# instance fields
.field private detail:Ljava/lang/String;

.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private pageNum:I

.field private pageSize:I

.field private totalCnt:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->model:Ljava/util/List;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageSize:I

    return v0
.end method

.method public getTotalCnt()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalCnt:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalPage:I

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->detail:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->model:Ljava/util/List;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageSize:I

    return-void
.end method

.method public setTotalCnt(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalCnt:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalPage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistResultBean{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->model:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->pageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistResultBean;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
