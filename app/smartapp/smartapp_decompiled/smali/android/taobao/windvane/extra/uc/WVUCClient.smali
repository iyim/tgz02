.class public Landroid/taobao/windvane/extra/uc/WVUCClient;
.super Lcom/uc/webview/export/extension/UCClient;
.source "WVUCClient.java"


# instance fields
.field tStart:Ljava/lang/String;

.field webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string v0, "0"

    .line 39
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const-string v0, "0"

    .line 39
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method


# virtual methods
.method public getCachedFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 211
    invoke-static {p1}, Landroid/taobao/windvane/extra/config/WindVaneUrlCacheManager;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
    .locals 6

    .line 216
    iget-object v0, p1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    const-string/jumbo v1, "viewType"

    .line 217
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "EmbedView"

    if-eqz v2, :cond_2

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bridgeId"

    .line 219
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 220
    :goto_0
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {v0, v1, v2, p1}, Landroid/taobao/windvane/embed/WVEVManager;->createEV(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;Lcom/uc/webview/export/extension/EmbedViewConfig;)Landroid/taobao/windvane/embed/BaseEmbedView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "failed to create embedView"

    .line 222
    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnParamChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;)V

    .line 225
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnStateChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;)V

    .line 226
    invoke-interface {p2, p1}, Lcom/uc/webview/export/extension/IEmbedViewContainer;->setOnVisibilityChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;)V

    return-object p1

    :cond_2
    const-string/jumbo p1, "viewType should not be lost"

    .line 230
    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    new-instance p1, Landroid/taobao/windvane/embed/Empty;

    invoke-direct {p1}, Landroid/taobao/windvane/embed/Empty;-><init>()V

    .line 233
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-virtual {p1, v3, v1, p2, v0}, Landroid/taobao/windvane/embed/BaseEmbedView;->init(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;Lcom/uc/webview/export/extension/EmbedViewConfig;)Z

    return-object p1
.end method

.method public onGpuProcessGone(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "sandbox"

    const-string v1, "onGpuProcessGone"

    .line 192
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasWebGl"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    sget-boolean v0, Landroid/taobao/windvane/config/GlobalConfig;->isBackground:Z

    const-string v1, "GPU"

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpu process is killed, url = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] , upload information!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "GpuProcessGone"

    .line 198
    invoke-static {v3, v0, v2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v0, v0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "]"

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpu process error, need not reload page, url = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->enableGpuGoneReload:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->refresh()V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpu process error, reload page, url = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 8

    const/16 v0, 0x9

    if-ne p2, v0, :cond_2

    .line 51
    :try_start_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p3

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    .line 56
    :goto_0
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    instance-of v1, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_16

    .line 59
    move-object v1, p1

    nop

    nop

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPEA_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPEB_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_5

    :cond_2
    const/16 v0, 0x6b

    const-string/jumbo v1, "sandbox"

    if-ne p2, v0, :cond_3

    const-string v0, "onRenderProcessReady"

    .line 70
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_16

    .line 74
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 75
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCClient$1;

    invoke-direct {v2, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCClient$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCClient;Lcom/uc/webview/export/WebView;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->getCoreStatus(ILandroid/webkit/ValueCallback;)V

    goto/16 :goto_5

    :cond_3
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_4

    const-string v0, "WEBVIEW_EVENT_TYPE_DESTORY_NON_ISOLATE_STATIC_WEBVIEW"

    .line 98
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_16

    .line 100
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroyStaticWebViewIfNeeded()V

    goto/16 :goto_5

    :cond_4
    const/16 v0, 0x6d

    if-ne p2, v0, :cond_5

    const-string v0, "WEBVIEW_EVENT_TYPE_CREATE_ISOLATE_STATIC_WEBVIEW"

    .line 103
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_16

    .line 105
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 106
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->createStaticWebViewIfNeeded(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_5
    const/4 v0, 0x4

    const-string/jumbo v1, "time"

    if-ne p2, v0, :cond_6

    .line 110
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_16

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCClient;->tStart:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x6

    const-string v2, "AIT"

    const-string v3, "0"

    const-string/jumbo v4, "ts"

    if-ne p2, v0, :cond_8

    .line 116
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_7

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 120
    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 122
    :try_start_1
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v3, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v3, v0, v1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->recordUCT1(J)V

    .line 123
    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v3, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v3, v0, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedT1(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UC_T1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    const/16 v0, 0xe

    const-string v5, ""

    const-string/jumbo v6, "url"

    if-ne p2, v0, :cond_f

    .line 133
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 134
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 135
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object v4, v3

    .line 137
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 138
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    instance-of v3, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v3, :cond_a

    move-object v3, p1

    nop

    nop

    iget-object v7, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    if-eqz v7, :cond_a

    .line 141
    iget-object v3, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    iput-object v1, v3, Landroid/taobao/windvane/extra/performance2/WVWPData;->t2:Ljava/lang/String;

    :cond_a
    move-object v3, v1

    .line 144
    :cond_b
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 145
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_c
    move-object v4, v3

    .line 150
    :cond_d
    :goto_2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    :try_start_2
    move-object v6, p1

    check-cast v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v6, v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v6, v0, v1}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->recordUCT2(J)V

    if-eqz v3, :cond_e

    .line 154
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v5, v0, v1}, Landroid/taobao/windvane/extra/performance2/UCTracker;->commitUCT2(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :catch_1
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UC_T2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const/16 v0, 0x14

    if-ne p2, v0, :cond_15

    .line 163
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "linkId"

    if-eqz v0, :cond_10

    .line 165
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :try_start_4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    nop

    goto :goto_4

    .line 169
    :cond_10
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 170
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 171
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_11
    move-object v2, v5

    .line 173
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 174
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    :catch_3
    :cond_12
    move-object v2, v5

    .line 177
    :cond_13
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 178
    invoke-static {}, Landroid/taobao/windvane/ha/UCHAReporter;->getInstance()Landroid/taobao/windvane/ha/UCHAReporter;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/taobao/windvane/ha/UCHAReporter;->putLinkIdWithUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCHA"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    const/16 v0, 0x6a

    if-ne p2, v0, :cond_16

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page use webgl, url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPU"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 184
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitUseWebgl(Ljava/lang/String;)V

    .line 187
    :catch_4
    :cond_16
    :goto_5
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/extension/UCClient;->onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V

    return-void
.end method
