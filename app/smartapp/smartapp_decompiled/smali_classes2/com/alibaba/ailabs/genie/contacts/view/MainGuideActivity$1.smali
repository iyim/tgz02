.class Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MainGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "contacts_-guide"

    const-string p2, "web load LoadResource"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "contacts_-guide"

    const-string p2, "web load finished"

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "contacts_-guide"

    const-string p2, "web load started"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 81
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    const-string p1, "contacts_-guide"

    const-string p2, "web load proceed"

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    const-string v0, "contacts_-guide"

    const-string v1, "web load OverrideUrlLoading"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
