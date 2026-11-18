.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TMEWebViewActivity.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v1, "titleText"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "webUrl"

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 46
    :goto_0
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->urlTitleId:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 52
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->webViewId:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    .line 53
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 78
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEWebViewActivity$8P_YDG_cioYp-uQOKj8ZKCFxCg0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEWebViewActivity$8P_YDG_cioYp-uQOKj8ZKCFxCg0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initView$157$TMEWebViewActivity(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->webview:Landroid/webkit/WebView;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_webview_fragment:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->initView()V

    return-void
.end method
