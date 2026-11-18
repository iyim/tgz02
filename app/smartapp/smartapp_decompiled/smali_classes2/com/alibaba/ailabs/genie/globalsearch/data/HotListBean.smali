.class public Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;
.super Ljava/lang/Object;
.source "HotListBean.java"


# instance fields
.field private code:I

.field private searchHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private topApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private topMusic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private topSearch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private topVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private traceId:Ljava/lang/String;

.field private underWave:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->code:I

    return v0
.end method

.method public getSearchHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->searchHistory:Ljava/util/List;

    return-object v0
.end method

.method public getShading()Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->underWave:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    return-object v0
.end method

.method public getTopApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topApp:Ljava/util/List;

    return-object v0
.end method

.method public getTopMusic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topMusic:Ljava/util/List;

    return-object v0
.end method

.method public getTopSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topSearch:Ljava/util/List;

    return-object v0
.end method

.method public getTopVideo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topVideo:Ljava/util/List;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->code:I

    return-void
.end method

.method public setSearchHistory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->searchHistory:Ljava/util/List;

    return-void
.end method

.method public setTopApp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topApp:Ljava/util/List;

    return-void
.end method

.method public setTopMusic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topMusic:Ljava/util/List;

    return-void
.end method

.method public setTopSearch(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topSearch:Ljava/util/List;

    return-void
.end method

.method public setTopVideo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->topVideo:Ljava/util/List;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->traceId:Ljava/lang/String;

    return-void
.end method

.method public setUnderWave(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->underWave:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    return-void
.end method
