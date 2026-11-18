.class public Landroid/taobao/windvane/jsbridge/api/WVUI;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    const-string/jumbo v0, "showLoadingBox"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVUI;->showLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_0
    const-string v0, "hideLoadingBox"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVUI;->hideLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hideLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 42
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->hideLoadingView()V

    .line 43
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    return-void
.end method

.method public final showLoading(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 34
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUI;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->showLoadingView()V

    .line 35
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    return-void
.end method
