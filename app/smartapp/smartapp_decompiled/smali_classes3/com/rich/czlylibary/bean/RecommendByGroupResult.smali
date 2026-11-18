.class public Lcom/rich/czlylibary/bean/RecommendByGroupResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private f:Ljava/lang/String;

.field private logId:Ljava/lang/String;

.field private quanquid_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private songid_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuanquid_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->quanquid_list:Ljava/util/List;

    return-object v0
.end method

.method public getSongid_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->songid_list:Ljava/util/List;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->u:Ljava/lang/String;

    return-object v0
.end method

.method public setF(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->f:Ljava/lang/String;

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->logId:Ljava/lang/String;

    return-void
.end method

.method public setQuanquid_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->quanquid_list:Ljava/util/List;

    return-void
.end method

.method public setSongid_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/RecommendSongInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->songid_list:Ljava/util/List;

    return-void
.end method

.method public setU(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendByGroupResult;->u:Ljava/lang/String;

    return-void
.end method
