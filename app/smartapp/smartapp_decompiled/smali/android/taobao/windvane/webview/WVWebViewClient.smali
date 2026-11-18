.class public Landroid/taobao/windvane/webview/WVWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WVWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebViewClient"


# instance fields
.field private currentUrl:Ljava/lang/String;

.field public extraWebViewClient:Landroid/webkit/WebViewClient;

.field isError:Z

.field protected mContext:Landroid/content/Context;

.field private mPageFinshTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->currentUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mPageFinshTime:J

    .line 66
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    .line 69
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/webview/WVWebViewClient;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mPageFinshTime:J

    return-wide v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebViewClient"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mPageFinshTime:J

    .line 103
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->isError:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 104
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->isError:Z

    .line 105
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p1

    nop

    nop

    const-string v3, "onPageFinished"

    invoke-virtual {v0, p2, v3}, Landroid/taobao/windvane/webview/WVWebView;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0x3ea

    move-object v4, p1

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, p2, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 113
    invoke-static {}, Landroid/taobao/windvane/jspatch/WVJsPatch;->getInstance()Landroid/taobao/windvane/jspatch/WVJsPatch;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Landroid/taobao/windvane/jspatch/WVJsPatch;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 115
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    .line 116
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v1, 0x191

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v0, v1, v3}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "8.5.0"

    aput-object v3, v1, v2

    const-string/jumbo v2, "{\'version\':\'%s\'}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindVaneReady"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/webview/WVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/taobao/windvane/webview/WVWebViewClient$1;

    invoke-direct {v1, p0, p2}, Landroid/taobao/windvane/webview/WVWebViewClient$1;-><init>(Landroid/taobao/windvane/webview/WVWebViewClient;Ljava/lang/String;)V

    const-string v2, "(function(p){if(!p||!p.timing)return;var t=p.timing,s=t.navigationStart,sc=t.secureConnectionStart,dc=t.domComplete,lee=t.loadEventEnd;return JSON.stringify({dns:t.domainLookupEnd-t.domainLookupStart,c:t.connectEnd-t.connectStart,scs:sc>0?sc-s:0,req:t.requestStart-s,rps:t.responseStart-s,rpe:t.responseEnd-s,dl:t.domLoading-s,dcl:t.domContentLoadedEventEnd-s,dc:dc>0?dc-s:0,lee:lee>0?lee-s:0})})(window.performance)"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 138
    new-instance v1, Landroid/taobao/windvane/webview/WVWebViewClient$2;

    invoke-direct {v1, p0, v0}, Landroid/taobao/windvane/webview/WVWebViewClient$2;-><init>(Landroid/taobao/windvane/webview/WVWebViewClient;Landroid/taobao/windvane/webview/WVWebView;)V

    const-string v2, "javascript:(function(f){if(f.__windvane__.call) return true; else return false})(window)"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 149
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->isError:Z

    .line 79
    instance-of v1, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/16 v2, 0x3e9

    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 83
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebViewClient"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->currentUrl:Ljava/lang/String;

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 89
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 90
    invoke-interface {v0, p2, v1, v2}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPageStartLoadAtTime(Ljava/lang/String;J)V

    .line 93
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 94
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 156
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive error, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebViewClient"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v3, 0x3ed

    move-object v4, p1

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 162
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    .line 161
    invoke-virtual {v0, v3, v4, p4, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_1

    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cause"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 170
    invoke-interface {v3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    const/16 v4, 0x192

    invoke-virtual {v1, v4, v3}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 172
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->isError:Z

    const/4 v1, 0x4

    .line 173
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 176
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 177
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v1

    if-nez v0, :cond_4

    move-object v0, p4

    :cond_4
    invoke-interface {v1, v0, p2, p3}, Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    :cond_5
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 358
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError  url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVWebViewClient"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 363
    instance-of v2, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/16 v3, 0x3ee

    if-eqz v2, :cond_1

    .line 364
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 366
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 367
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getErrorMonitor()Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;

    move-result-object v2

    invoke-interface {v2, v1, v3, v0}, Landroid/taobao/windvane/monitor/WVErrorMonitorInterface;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    .line 373
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 264
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/16 v1, 0x15

    const-string v2, "*"

    const-string v3, "Access-Control-Allow-Origin"

    const-string v4, "WVWebViewClient"

    if-eqz v0, :cond_4

    .line 266
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v5, 0x3ec

    move-object v6, p1

    check-cast v6, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    .line 269
    iget-boolean v5, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    if-eqz v5, :cond_4

    .line 271
    iget-object p1, v0, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    check-cast p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    .line 273
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9884\u52a0\u8f7d\u547d\u4e2d : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v5, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mMimeType:Ljava/lang/String;

    iget-object v6, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mEncoding:Ljava/lang/String;

    iget-object v7, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, v5, v6, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 278
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_3

    .line 279
    iget-object v1, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 281
    :try_start_0
    invoke-static {p2}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 282
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 283
    iget-object p1, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 284
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v0, p2}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    const-string p1, "add cross origin header"

    .line 286
    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p1, p1, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {p2}, Landroid/taobao/windvane/config/WVServerConfig;->isAllowAccess(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 294
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 295
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-object v0

    .line 303
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/windvane/cache/WVCacheManager;->isCacheEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 304
    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v0}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 313
    :try_start_2
    new-instance v7, Landroid/webkit/WebResourceResponse;

    const-string v8, "image/png"

    invoke-direct {v7, v8, v5, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 315
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v1, :cond_5

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 317
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v7, v1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    return-object v7

    :catch_1
    nop

    goto :goto_1

    :catch_2
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_6

    .line 325
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    nop

    .line 331
    :cond_6
    :goto_2
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/taobao/windvane/cache/WVMemoryCache;->getMemoryCacheByUrl(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVMemoryCacheInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, v0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x7d0

    cmp-long p1, v1, v7

    if-gez p1, :cond_7

    .line 336
    new-instance v6, Landroid/webkit/WebResourceResponse;

    sget-object p1, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {p1}, Landroid/taobao/windvane/util/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, p1, v5, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 338
    :cond_7
    invoke-static {}, Landroid/taobao/windvane/cache/WVMemoryCache;->getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/cache/WVMemoryCache;->clearCacheByUrl(Ljava/lang/String;)V

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WVMemoryCacheInfo \u547d\u4e2d : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 343
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldInterceptRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 345
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V

    .line 349
    :cond_9
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a

    .line 350
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 352
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 188
    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {p2, v0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "cause"

    const-string v3, "ACCESS_FORBIDDEN"

    .line 192
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "url"

    .line 193
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    check-cast p1, Landroid/taobao/windvane/webview/WVWebView;

    const/16 p2, 0x192

    invoke-virtual {p1, p2, v0}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 200
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mContext:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {p2, v0, v2}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    const-string v3, "WVWebViewClient"

    if-eqz v0, :cond_2

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldOverrideUrlLoading filter url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 204
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_3
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 208
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v5, 0x3eb

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v2, p2, v6}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "mailto:"

    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 224
    :cond_5
    :try_start_0
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 225
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->isOpenURLIntercept()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->isNeedupdateURLRule(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->updateURLRule()V

    .line 230
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVURLIntercepter()Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;

    move-result-object v0

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mContext:Landroid/content/Context;

    move-object v5, p1

    check-cast v5, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0, v2, v5, p2}, Landroid/taobao/windvane/urlintercept/WVURLIntercepterInterface;->shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return v1

    :catch_0
    move-exception v0

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldOverrideUrlLoading: doFilter error, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Landroid/taobao/windvane/util/WVUrlUtil;->shouldTryABTest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;->toABTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " abTestUrl to : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    .line 251
    :cond_9
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_a

    .line 252
    move-object v0, p1

    nop

    nop

    const-string/jumbo v1, "shouldOverrideUrlLoading"

    invoke-virtual {v0, p2, v1}, Landroid/taobao/windvane/webview/WVWebView;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldOverrideUrlLoading : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 256
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    return v4

    .line 213
    :cond_c
    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebViewClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 217
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldOverrideUrlLoading: ActivityNotFoundException, url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1
.end method
