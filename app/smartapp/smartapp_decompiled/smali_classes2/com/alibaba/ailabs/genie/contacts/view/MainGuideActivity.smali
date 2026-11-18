.class public Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainGuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_-guide"


# instance fields
.field private guide_view:Landroid/view/View;

.field private mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field urlCm:Ljava/lang/String;

.field urlCu:Ljava/lang/String;

.field private web_guide:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "https://pages.tmall.com/wow/tmall-genine/act/liantongjingling?wh_biz=tm"

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->urlCu:Ljava/lang/String;

    const-string v0, "https://pages.tmall.com/wow/tmall-genine/act/yidongjingling?wh_biz=tm"

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->urlCm:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->guide_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    .line 112
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->web_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    .line 113
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->guide_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->guide_view:Landroid/view/View;

    .line 115
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->layout_exit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->mExitView:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$MainGuideActivity$z0jO9uyRknxeDEyeRsPFVoCxYgw;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$MainGuideActivity$z0jO9uyRknxeDEyeRsPFVoCxYgw;-><init>(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_-guide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag:2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->urlCu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->web_guide:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->urlCm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "url\u52a0\u8f7d\u5931\u8d25"

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initViews$99$MainGuideActivity(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_main_guide:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->setContentView(I)V

    .line 45
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->initViews()V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/view/MainGuideActivity;->initWebView()V

    return-void
.end method
