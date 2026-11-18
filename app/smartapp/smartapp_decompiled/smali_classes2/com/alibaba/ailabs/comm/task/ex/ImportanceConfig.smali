.class public Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;
.super Ljava/lang/Object;
.source "ImportanceConfig.java"


# instance fields
.field private blackLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private gestureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hotAmpe:Z

.field private isClose:Z

.field private skipList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->isClose:Z

    return-void
.end method


# virtual methods
.method public getBlackLists()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->blackLists:Ljava/util/Map;

    return-object v0
.end method

.method public getGestureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->gestureList:Ljava/util/List;

    return-object v0
.end method

.method public getSkipList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->skipList:Ljava/util/Set;

    return-object v0
.end method

.method public getWhiteList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->whiteList:Ljava/util/Set;

    return-object v0
.end method

.method public isClose()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->isClose:Z

    return v0
.end method

.method public isHotAmpe()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->hotAmpe:Z

    return v0
.end method

.method public setBlackLists(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->blackLists:Ljava/util/Map;

    return-void
.end method

.method public setClose(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->isClose:Z

    return-void
.end method

.method public setGestureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->gestureList:Ljava/util/List;

    return-void
.end method

.method public setHotAmpe(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->hotAmpe:Z

    return-void
.end method

.method public setSkipList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->skipList:Ljava/util/Set;

    return-void
.end method

.method public setWhiteList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;->whiteList:Ljava/util/Set;

    return-void
.end method
