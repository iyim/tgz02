.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/RecommendAppItemBean;
.super Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;
.source "RecommendAppItemBean.java"


# instance fields
.field private recommends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;-><init>(I)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/RecommendAppItemBean;->recommends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRecommends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/RecommendAppItemBean;->recommends:Ljava/util/List;

    return-object v0
.end method

.method public getRowItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRecommends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/RecommendAppItemBean;->recommends:Ljava/util/List;

    return-void
.end method
