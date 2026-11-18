.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    const-string v0, "itemClick"

    const-string v1, "MarketItem"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportItemEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindClick isIntentAvailable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketItemView"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "market_list_recomend_"

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/appbox/utils/OpenUtils;->openDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
