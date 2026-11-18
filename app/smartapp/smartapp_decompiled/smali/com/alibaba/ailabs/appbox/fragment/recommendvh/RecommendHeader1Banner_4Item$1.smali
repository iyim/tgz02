.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;
.super Ljava/lang/Object;
.source "RecommendHeader1Banner_4Item.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->bindData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;

.field final synthetic val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;->val$data:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
