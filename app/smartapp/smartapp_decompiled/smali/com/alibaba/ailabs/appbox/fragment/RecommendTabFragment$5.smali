.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;
.super Ljava/lang/Object;
.source "RecommendTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->refreshUIIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

.field final synthetic val$isFromCache:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;->val$isFromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    const-string v0, "RecommendTabFragment"

    const-string v1, "finishLoadding"

    .line 460
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;->val$isFromCache:Z

    if-eqz v1, :cond_0

    const-string v1, "cache_getMarketByCate"

    .line 462
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    const-string v0, "loadData.isFromCache Done"

    .line 464
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
