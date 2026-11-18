.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6253\u5f00"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    .line 240
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6253\u5f00"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
