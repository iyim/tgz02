.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "MusicHistoryResponse.java"


# instance fields
.field model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;->model:Ljava/util/List;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/MusicHistoryResponse;->model:Ljava/util/List;

    return-void
.end method
