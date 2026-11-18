.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;
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

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "MarketDetailsFragment-l"

    const-string/jumbo v0, "tv_fragment_app_detail_detail onClick ..."

    .line 223
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;)V

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 249
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 226
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    return-void
.end method
