.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 347
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;)V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 369
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_detail_"

    .line 354
    invoke-static {p1, v0, v1, v2, v3}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->collectApplet2(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppInstallInfoFromDBByKey(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 391
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v0, p1, v1, v3, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packagename"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "detail_add_click"

    .line 399
    invoke-static {v0, v3, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
