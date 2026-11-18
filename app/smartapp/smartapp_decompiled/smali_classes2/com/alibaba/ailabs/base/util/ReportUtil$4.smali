.class final Lcom/alibaba/ailabs/base/util/ReportUtil$4;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/ReportUtil;->reportRecommendTabEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 146
    :goto_1
    iget-object v4, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 147
    :goto_2
    iget-object v5, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/ReportUtil$4;->val$page:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportFragmentTabEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRecommendTabEvent Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketReport-"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
