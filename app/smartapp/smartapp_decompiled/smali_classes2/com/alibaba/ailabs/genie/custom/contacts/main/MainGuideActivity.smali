.class public Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;
.source "MainGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_home-guide"


# instance fields
.field private butBtn:Landroid/widget/ImageView;

.field private butHome:Landroid/widget/ImageView;

.field private guideView:Landroid/view/View;

.field private mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field strUrlCmcc:Ljava/lang/String;

.field strUrlCu:Ljava/lang/String;

.field private webGuide:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;-><init>()V

    const-string v0, "https://pages.tmall.com/wow/tmall-genine/act/liantongwojia?wh_biz=tm"

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->strUrlCu:Ljava/lang/String;

    const-string v0, "https://pages.tmall.com/wow/tmall-genine/act/yidonghejia?wh_biz=tm"

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->strUrlCmcc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->guideView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initViews()V
    .locals 1

    .line 96
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->web_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    .line 97
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->guide_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->guideView:Landroid/view/View;

    .line 98
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->but_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->butBtn:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->but_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->butHome:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->butBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->butHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity$1;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_home-guide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag:2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isUniComCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->strUrlCu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->isCMCC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->webGuide:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->strUrlCmcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "url\u52a0\u8f7d\u5931\u8d25"

    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 122
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->but_back:I

    if-ne p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->finish()V

    goto :goto_0

    .line 124
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->but_home:I

    if-ne p1, v0, :cond_1

    .line 125
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->activity_main_guide_test:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->initSystemUi()V

    .line 48
    new-instance p1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->initViews()V

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainGuideActivity;->initWebView()V

    return-void
.end method
