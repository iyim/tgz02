.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;
.super Landroid/webkit/WebChromeClient;
.source "ShoppingDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->setWebViewSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 662
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged.progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
