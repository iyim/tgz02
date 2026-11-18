.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketMainPage;
.super Ljava/lang/Object;
.source "MarketMainPage.java"


# instance fields
.field marketAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field

.field recommendAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMarketAppList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketMainPage;->marketAppList:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketMainPage;->recommendAppList:Ljava/util/List;

    return-object v0
.end method

.method public setMarketAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketMainPage;->marketAppList:Ljava/util/List;

    return-void
.end method

.method public setRecommendAppList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketMainPage;->recommendAppList:Ljava/util/List;

    return-void
.end method
