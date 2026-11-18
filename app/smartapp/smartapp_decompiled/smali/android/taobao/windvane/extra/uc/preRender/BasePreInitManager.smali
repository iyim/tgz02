.class public abstract Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;
.super Ljava/lang/Object;
.source "BasePreInitManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebView:",
        "Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ATTACH_EVENT:Ljava/lang/String; = "WV.Event.Preload.Attach"

.field public static final INJECT_JS:Ljava/lang/String; = "injectJs"

.field private static final KEY_EXTRA_FULL_URL:Ljava/lang/String; = "fullUrl"

.field public static final ONLOAD_EVENT:Ljava/lang/String; = "WV.Event.Preload.OnLoad"

.field public static final PRE_RENDER_URL_ADDITION:Ljava/lang/String; = "&_wv_preload=true"

.field public static final TAG:Ljava/lang/String; = "BasePreInitManager"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field WebViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TWebView;>;"
        }
    .end annotation
.end field

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;",
            ">;"
        }
    .end annotation
.end field

.field private preInitWebViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TWebView;>;"
        }
    .end annotation
.end field

.field private preRenderWebViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TWebView;>;"
        }
    .end annotation
.end field

.field private preWeb:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebView;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->WebViewClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->WebViewClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePreInitManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearCacheInQueue(Ljava/lang/String;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TWebView;"
        }
    .end annotation

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRealKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 127
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 128
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->removeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSameQuery(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 16

    const-string v0, "]"

    const-string/jumbo v1, "real=["

    const-string v2, "],"

    const-string/jumbo v3, "query value is not equal, require=["

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 453
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 457
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "BasePreInitManager"

    if-eqz v6, :cond_6

    .line 458
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 463
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v9, p1

    .line 464
    invoke-virtual {v9, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    .line 465
    invoke-virtual {v11, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    .line 473
    :cond_3
    :try_start_0
    invoke-static {v10}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 474
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_2

    if-eqz v12, :cond_2

    .line 478
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 479
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 481
    invoke-static {v5, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 494
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_1
    const-string/jumbo v0, "real url miss query"

    .line 459
    invoke-static {v8, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_7
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private isSameUrl(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 8

    .line 428
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "]"

    const-string/jumbo v5, "real=["

    const-string v6, "],"

    const-string v7, "BasePreInitManager"

    if-nez v2, :cond_0

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "host equal=[false],require=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 435
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 437
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path equal=[false],require=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private removeHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 135
    aget-object p1, p1, v0

    return-object p1
.end method


# virtual methods
.method public addPreInitWeb(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;)Z
    .locals 2

    .line 109
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->WebViewClass:Ljava/lang/Class;

    new-instance v1, Landroid/content/MutableContextWrapper;

    invoke-direct {v1, p2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getNewObject(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 118
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 120
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add pre init webview success. key=["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BasePreInitManager"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addPreRenderWeb(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->WebViewClass:Ljava/lang/Class;

    new-instance v1, Landroid/content/MutableContextWrapper;

    invoke-direct {v1, p2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getNewObject(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 247
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderInit(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p2, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    const-string v0, "&_wv_preload=true"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->loadUrl(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add pre render webview success. key=["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], url = ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BasePreInitManager"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preWeb:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    return-void
.end method

.method public clearAll()Z
    .locals 2

    .line 68
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->destroy()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->destroy()V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public clearByKey(Ljava/lang/String;)Z
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroy()V

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroy()V

    .line 97
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method getNewObject(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 504
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 505
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPreRender(Ljava/lang/String;Landroid/content/Context;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")TWebView;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getPreRender(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    move-result-object p1

    return-object p1
.end method

.method public getPreRender(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
    .locals 16
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TWebView;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_9

    .line 278
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreRender for url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BasePreInitManager"

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct/range {p0 .. p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 287
    iget-object v7, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-nez v7, :cond_3

    .line 289
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 290
    iget-object v9, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 292
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 293
    invoke-direct {v0, v11, v8}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->isSameUrl(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 297
    invoke-direct {v0, v11, v8}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->isSameQuery(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 298
    iget-object v7, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    goto :goto_0

    :cond_2
    const-string v8, ""

    move-object v10, v8

    goto :goto_0

    :cond_3
    move-object v10, v4

    :cond_4
    :goto_0
    const-string v8, "],url=["

    const-string v9, "]"

    if-eqz v7, :cond_9

    .line 311
    invoke-virtual {v7}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreRenderSuccess()Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "PreRender is not Success"

    .line 312
    invoke-static {v5, v11}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {v0, v10}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->clearCacheInQueue(Ljava/lang/String;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 315
    invoke-virtual {v7}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->destroy()V

    const-string v7, "H5.preRenderDidNotReportSuccess"

    :goto_1
    move-object v11, v7

    move-object v7, v3

    goto :goto_3

    .line 317
    :cond_5
    invoke-virtual {v7}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getExpireTime()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    const-string v6, "PreRender is expire"

    .line 318
    invoke-static {v5, v6}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 321
    invoke-direct {v0, v10}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->clearCacheInQueue(Ljava/lang/String;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 322
    invoke-virtual {v7}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->destroy()V

    const-string v7, "PreRender.webViewExpired"

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    const-string v11, "fullUrl"

    .line 327
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v11, v3

    .line 329
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v11, v1

    .line 330
    :cond_8
    invoke-virtual {v7, v11}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->setRealUrl(Ljava/lang/String;)V

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hit pre render,key = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",realUrl=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "PreRender.success"

    goto :goto_3

    :cond_9
    const-string v11, "PreRender.urlNotEqual"

    :goto_3
    if-nez v7, :cond_f

    .line 339
    iget-object v7, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-nez v7, :cond_d

    .line 341
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 342
    iget-object v12, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 344
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 346
    invoke-direct {v0, v14, v4}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->isSameUrl(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 351
    invoke-direct {v0, v14, v4}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->isSameQuery(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 352
    iget-object v4, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-interface {v4, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-eqz v4, :cond_b

    .line 355
    invoke-virtual {v4, v1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderInit(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4, v1}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->loadUrl(Ljava/lang/String;)V

    :cond_b
    move-object v7, v4

    goto :goto_4

    :cond_c
    move-object v13, v10

    goto :goto_4

    :cond_d
    move-object v13, v1

    :cond_e
    :goto_4
    if-eqz v7, :cond_10

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hit pre webview,key = ["

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v13, v10

    :cond_10
    :goto_5
    if-eqz v7, :cond_11

    move-object/from16 v4, p2

    .line 373
    invoke-virtual {v7, v4}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->setOuterContext(Landroid/content/Context;)V

    :cond_11
    if-nez v7, :cond_12

    .line 380
    iget-object v4, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;

    goto :goto_6

    .line 383
    :cond_12
    iget-object v4, v0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {v4, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;

    :goto_6
    if-eqz v4, :cond_16

    if-eqz v7, :cond_14

    .line 389
    invoke-interface {v4, v1, v2}, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;->validateTargetUrl(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 390
    invoke-direct {v0, v10}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->clearCacheInQueue(Ljava/lang/String;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 391
    sget-object v2, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;->TYPE_HIT:Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;

    goto :goto_7

    .line 393
    :cond_13
    sget-object v2, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;->TYPE_OUT_OF_SERVICE:Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;

    move-object v7, v3

    goto :goto_7

    :cond_14
    if-eqz v6, :cond_15

    .line 398
    sget-object v2, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;->TYPE_EXPIRE:Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;

    goto :goto_7

    :cond_15
    sget-object v2, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;->TYPE_MISS:Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;

    .line 401
    :goto_7
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v5, "url"

    .line 402
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "reason"

    .line 403
    invoke-virtual {v3, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-interface {v4, v2, v3}, Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;->onPreload(Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback$ScheduleProtocolCallbackType;Ljava/util/HashMap;)V

    goto :goto_8

    .line 406
    :cond_16
    invoke-direct {v0, v10}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->clearCacheInQueue(Ljava/lang/String;)Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    :goto_8
    return-object v7

    :cond_17
    :goto_9
    return-object v3
.end method

.method public getPreWeb()Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TWebView;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preWeb:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    return-object v0
.end method

.method public setPreWeb(Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebView;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preWeb:Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    return-void
.end method

.method public triggerRender(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->triggerRender(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;)Z

    return-void
.end method

.method public triggerRender(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;)Z
    .locals 6
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->triggerRender(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public triggerRender(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;Ljava/util/Map;)Z
    .locals 9
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/taobao/android/tscheduleprotocol/ScheduleProtocolCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerRender() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ctx = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], scheduleProtocolCallback = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], args = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BasePreInitManager"

    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 162
    :cond_1
    invoke-direct {p0, p2}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    .line 169
    :cond_2
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v5}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->destroy()V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preInitWebViews:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getRealKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    if-nez v4, :cond_5

    if-eqz p3, :cond_5

    .line 178
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->WebViewClass:Ljava/lang/Class;

    new-instance v5, Landroid/content/MutableContextWrapper;

    invoke-direct {v5, p3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4, v5}, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->getNewObject(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;

    .line 179
    invoke-virtual {v4, p2}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->preRenderInit(Ljava/lang/String;)V

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obtain pre init webview failed by key=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], init it"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obtain pre init webview success by key=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v4, :cond_6

    const-string/jumbo p1, "triger render failed, for no inited webview"

    .line 186
    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    const/4 p1, 0x1

    .line 190
    iput-boolean p1, v4, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->isPreLoad:Z

    .line 191
    invoke-virtual {v4}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 192
    invoke-virtual {v4}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/uc/webview/export/extension/UCExtension;->setIsPreRender(Z)V

    :cond_7
    if-eqz p5, :cond_8

    const-string v5, "injectJs"

    .line 195
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 196
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 198
    invoke-virtual {v4, v5}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->injectJsEarly(Ljava/lang/String;)V

    :cond_8
    const-wide v5, 0x7fffffffffffffffL

    if-eqz p5, :cond_9

    const-string/jumbo v7, "timeout"

    .line 203
    invoke-interface {p5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 204
    invoke-interface {p5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 205
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 207
    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, p5

    add-long/2addr v5, v7

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 214
    :cond_9
    :goto_2
    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->setExpireTime(J)V

    .line 216
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 217
    invoke-virtual {v4}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->getView()Landroid/view/View;

    move-result-object p5

    .line 218
    invoke-virtual {p5, v0}, Landroid/view/View;->setTop(I)V

    .line 219
    iget v5, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p5, v5}, Landroid/view/View;->setBottom(I)V

    .line 220
    invoke-virtual {p5, v0}, Landroid/view/View;->setLeft(I)V

    .line 221
    iget v0, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p5, v0}, Landroid/view/View;->setRight(I)V

    .line 222
    iget v0, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p5, v0, p3}, Landroid/view/View;->measure(II)V

    const-string p3, "javascript:window._wv_preload=true"

    .line 225
    invoke-virtual {v4, p3}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->injectJsEarly(Ljava/lang/String;)V

    const-string p3, "&_wv_preload=true"

    .line 226
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v4, p5}, Landroid/taobao/windvane/extra/uc/preRender/PreRenderWebView;->loadUrl(Ljava/lang/String;)V

    .line 229
    iget-object p5, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->preRenderWebViews:Ljava/util/Map;

    invoke-interface {p5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_a

    .line 231
    iget-object p5, p0, Landroid/taobao/windvane/extra/uc/preRender/BasePreInitManager;->callbacks:Ljava/util/Map;

    invoke-interface {p5, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "trigger render success. key=["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "],url = ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_b
    :goto_3
    return v0
.end method
