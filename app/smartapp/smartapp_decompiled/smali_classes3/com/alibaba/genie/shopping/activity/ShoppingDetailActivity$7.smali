.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;
.super Landroid/webkit/WebViewClient;
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

    .line 549
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 559
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview load url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "javascript:function getClass(parent,sClass) { var aEle=parent.getElementsByTagName(\'div\'); var aResult=[]; var i=0; for(i<0;i<aEle.length;i++) { if(aEle[i].className==sClass) { aResult.push(aEle[i]); } }; return aResult; } "

    .line 613
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string p2, "javascript:function hideOther() {getClass(document,\'rmsp rmsp-bl rmsp-bl\')[0].style.display=\'none\';getClass(document,\'rmsp rmsp-bl\')[0].style.display=\'none\';}"

    .line 617
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string p2, "javascript:hideOther();"

    .line 619
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 553
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 554
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 639
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 640
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 641
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError.url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 650
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 651
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpError.url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 624
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading.url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
