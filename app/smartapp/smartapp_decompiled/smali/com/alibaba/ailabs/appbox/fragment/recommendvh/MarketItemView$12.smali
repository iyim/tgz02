.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->getDownAndInstallListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
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

    .line 597
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mProfressBar:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 631
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    const-string p2, "InstallFaild"

    const-string v0, "MarketItem"

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportItemEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 3

    .line 611
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 615
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->mRlInstalling:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 617
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$1100(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 618
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    .line 619
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    .line 621
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$12;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_list_recomend_"

    .line 618
    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method
