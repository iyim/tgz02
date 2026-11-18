.class public Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;
.super Ljava/lang/Object;
.source "RecommendTabBean.java"


# instance fields
.field protected page:Ljava/lang/String;

.field protected pageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;",
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
.method public getPage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getPageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->pageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->page:Ljava/lang/String;

    return-void
.end method

.method public setPageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->pageList:Ljava/util/ArrayList;

    return-void
.end method
