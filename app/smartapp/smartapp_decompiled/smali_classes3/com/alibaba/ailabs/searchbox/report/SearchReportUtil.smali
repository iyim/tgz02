.class public Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;
.super Ljava/lang/Object;
.source "SearchReportUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil$1;-><init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportMarketInstanceEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MarketInstance"

    .line 28
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportRecommendItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RecommendItem"

    .line 24
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportSearchItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SearchItem"

    .line 20
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
