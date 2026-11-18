.class public Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;
.super Landroid/taobao/windvane/jsbridge/api/WVReporter;
.source "WVReporterExtra.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVReporter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string/jumbo v0, "reportPerformanceCheckResult"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->reportPerformanceCheckResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "reportPrerenderStatus"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->reportPrerenderStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 30
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVReporter;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public reportPerformanceCheckResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 36
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "score"

    const-wide/16 v2, 0x0

    .line 37
    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo p2, "version"

    .line 38
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo p2, "result"

    .line 39
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p2, "detail"

    .line 40
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 44
    :try_start_1
    iget-object v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v4, v4, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v4, Landroid/taobao/windvane/webview/WVWebView;

    iget-object v1, v4, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v4, v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v4, :cond_1

    .line 47
    iget-object v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    iget-object v1, v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "wvBizCode"

    .line 54
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v9, v4

    goto :goto_1

    :cond_2
    move-object v9, v1

    .line 60
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v4

    move-object v5, v0

    move-wide v6, v2

    invoke-interface/range {v4 .. v10}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didPerformanceCheckResult(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "WindVaneWebPerfCheck"

    const-string v4, "WindVaneWebPerfCheck: %s|%d|%s"

    const/4 v5, 0x3

    .line 64
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 68
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_2
    return-void
.end method

.method public reportPrerenderStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "success"

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v0, v0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVReporterExtra;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v0, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    invoke-virtual {v0, p2}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->setPreRenderSuccess(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const-string/jumbo v0, "reportPrerenderStatus"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreRenderSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 89
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 90
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_1
    return-void
.end method
