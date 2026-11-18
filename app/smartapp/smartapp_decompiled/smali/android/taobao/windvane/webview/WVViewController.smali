.class public Landroid/taobao/windvane/webview/WVViewController;
.super Landroid/widget/LinearLayout;
.source "WVViewController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected isInited:Z

.field protected mContext:Landroid/content/Context;

.field protected mWebView:Landroid/taobao/windvane/webview/WVWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    .line 51
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    .line 46
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    .line 41
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 5

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->setOrientation(I)V

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/taobao/windvane/webview/ParamsParcelable;

    invoke-direct {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;-><init>()V

    .line 71
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Landroid/taobao/windvane/webview/WVWebView;

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 73
    iget-object v2, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/webview/WVViewController;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVViewController;->initWithParams(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 84
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVViewController;->removeAllViews()V

    .line 168
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->destroy()V

    .line 169
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 171
    :cond_0
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getWebview()Landroid/taobao/windvane/webview/WVWebView;
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0
.end method

.method public init(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 1

    .line 60
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    :cond_0
    return-void
.end method

.method protected initWithParams(Landroid/taobao/windvane/webview/ParamsParcelable;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isNavBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/taobao/windvane/view/WebNaviBar;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/view/WebNaviBar;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 91
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->addView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/webview/WVUIModel;->setNaviBar(Landroid/taobao/windvane/view/AbstractNaviBar;)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isShowLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->enableShowLoading()V

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/ParamsParcelable;->isJsbridgeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 115
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1

    .line 116
    :cond_2
    :goto_0
    iget-object p2, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVUIModel;->setErrorView(Landroid/view/View;)V

    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVUIModel;->setLoadingView(Landroid/view/View;)V

    return-void
.end method

.method public setNaviBar(Landroid/taobao/windvane/view/AbstractNaviBar;)V
    .locals 1

    .line 144
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVViewController;->isInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Landroid/taobao/windvane/webview/WVViewController;->initView(Landroid/taobao/windvane/webview/ParamsParcelable;)V

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVViewController;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVViewController;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVUIModel;->setNaviBar(Landroid/taobao/windvane/view/AbstractNaviBar;)V

    return-void
.end method
