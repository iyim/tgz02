.class public Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;
.super Ljava/lang/Object;
.source "AppSearchDataBean.java"


# instance fields
.field recommendAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;"
        }
    .end annotation
.end field

.field searchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;"
        }
    .end annotation
.end field

.field searchQuery:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;",
            ">;"
        }
    .end annotation
.end field


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
.method public getRecommendAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->recommendAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->searchAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchQuery()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->searchQuery:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRecommendAppList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->recommendAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSearchAppList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->searchAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSearchQuery(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->searchQuery:Ljava/util/ArrayList;

    return-void
.end method
