.class public Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVWebPerformance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebPerformance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    const-string/jumbo p2, "timing"

    .line 22
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p0, p3}, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->timing(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    :cond_0
    const-string p2, "jsBridgeHistory"

    .line 24
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0, p3}, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->jsBridgeHistory(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public jsBridgeHistory(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 51
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 53
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    sget-object v1, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    iget-object v3, p0, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    sget-object v3, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_1
    return-void
.end method

.method public timing(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 33
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_NO_PERMISSION"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVWebPerformance;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getH5MonitorDatas()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "WVWebPerformance"

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "HY_FAILED"

    .line 43
    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 47
    :cond_0
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method
