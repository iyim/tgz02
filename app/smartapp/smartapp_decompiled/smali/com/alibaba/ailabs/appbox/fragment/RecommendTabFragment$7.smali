.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;
.super Ljava/lang/Object;
.source "RecommendTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput p3, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$position:I

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 733
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagename"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$marketBean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIsCollected()Ljava/lang/String;

    move-result-object v1

    const-string v2, "collectstate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;->val$action:Ljava/lang/String;

    const-string v2, "market_list_1_3_"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
