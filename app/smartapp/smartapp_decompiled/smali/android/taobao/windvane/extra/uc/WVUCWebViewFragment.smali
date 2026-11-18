.class public Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "WVUCWebViewFragment.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WVUCWebViewFragment"

.field public static URL:Ljava/lang/String; = "url"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field protected mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field private mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 29
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 30
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 31
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 29
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 30
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 31
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;
    .locals 2

    .line 153
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_1
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {v1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 159
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->setWebViewClient(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V

    .line 160
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->setWebchormeClient(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V

    .line 161
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 162
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 108
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->getWebView()Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 110
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->url:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->TAG:Ljava/lang/String;

    const-string p2, "image urls is null"

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 61
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 62
    invoke-virtual {v0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeAllViews()V

    .line 64
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroy()V

    .line 68
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 70
    :cond_1
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->activity:Landroid/app/Activity;

    .line 72
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLowMemory()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onPause()V

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onResume()V

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public setWebViewClient(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 128
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebclient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public setWebchormeClient(Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 143
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewFragment;->mChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    :cond_0
    return-void
.end method
