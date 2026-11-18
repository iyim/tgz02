.class public Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;
.super Ljava/lang/Object;
.source "SearchRootBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;
    }
.end annotation


# instance fields
.field private autoPlay:Z

.field private code:I

.field private defaultDomain:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private recommendResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private searchResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;",
            ">;"
        }
    .end annotation
.end field

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->autoPlay:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->code:I

    return-void
.end method


# virtual methods
.method public getAutoPlay()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->autoPlay:Z

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->code:I

    return v0
.end method

.method public getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->defaultDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->recommendResult:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation

    .line 68
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->searchResult:Ljava/util/List;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->recommendResult:Ljava/util/List;

    return-object v0
.end method

.method public getSearchResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->searchResult:Ljava/util/List;

    return-object v0
.end method

.method public getTabList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->tabList:Ljava/util/List;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->autoPlay:Z

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->code:I

    return-void
.end method

.method public setDefaultDomain(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->defaultDomain:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->query:Ljava/lang/String;

    return-void
.end method

.method public setRecommendResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->recommendResult:Ljava/util/List;

    return-void
.end method

.method public setSearchResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->searchResult:Ljava/util/List;

    return-void
.end method

.method public setTabList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->tabList:Ljava/util/List;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->traceId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchRootBean{autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->autoPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", defaultDomain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->defaultDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
