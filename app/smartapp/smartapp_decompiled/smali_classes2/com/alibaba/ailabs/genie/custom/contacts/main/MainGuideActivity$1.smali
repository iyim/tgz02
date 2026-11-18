.class Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MainGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "contacts_home-guide"

    const-string p2, "web load finished"

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$200(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "contacts_home-guide"

    const-string p2, "web load started"

    .line 68
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    :cond_0
    return-void
.end method
