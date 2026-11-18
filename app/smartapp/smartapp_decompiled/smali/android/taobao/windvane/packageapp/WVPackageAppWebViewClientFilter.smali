.class public Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;
.super Ljava/lang/Object;
.source "WVPackageAppWebViewClientFilter.java"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# static fields
.field private static instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;
    .locals 2

    .line 35
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;->instance:Landroid/taobao/windvane/packageapp/WVPackageAppWebViewClientFilter;

    return-object v0
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 50
    new-instance p1, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {p1, v0}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object p1

    :cond_0
    const/16 v1, 0x3ec

    const/16 v2, 0x3f0

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p1, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {p1, v0}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object p1

    .line 57
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string v5, "apmUrl"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "zcache read start: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "msg"

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ZCache.Start"

    .line 60
    invoke-static {v4, v1}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    invoke-static {}, Lcom/taobao/zcache/ZCacheInitTask;->getInstance()Lcom/taobao/zcache/ZCacheInitTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/zcache/ZCacheInitTask;->init()V

    .line 63
    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    const-string v7, "http"

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 67
    :cond_3
    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-ne p1, v2, :cond_4

    .line 71
    :try_start_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    .line 74
    :catch_0
    :cond_4
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object p1

    iget-object p3, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Lcom/taobao/zcache/ZCacheManager;->getZCacheResource(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/zcache/model/ZCacheResourceResponse;

    move-result-object p1

    const-string p3, "H5 use ZCache 3.0, url=["

    const-string v1, "ZCache"

    if-nez p1, :cond_5

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], with response:[false]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p1, Landroid/taobao/windvane/service/WVEventResult;

    invoke-direct {p1, v0}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object p1

    .line 83
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] with response:["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;

    iget-object v0, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->encoding:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    iget-object v4, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    invoke-direct {p3, v0, v1, v2, v4}, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 90
    iget v0, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    iput v0, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->status:I

    .line 91
    iget-object v0, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    iput-object v0, p3, Landroid/taobao/windvane/webview/WVWrapWebResourceResponse;->zcacheInfo:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 94
    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zcache read end: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ZCache.End"

    .line 96
    invoke-static {p2, v0}, Landroid/taobao/windvane/ha/WVHAManager;->uploadApmStage(Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    new-instance p2, Landroid/taobao/windvane/service/WVEventResult;

    iget-boolean p1, p1, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    invoke-direct {p2, p1, p3}, Landroid/taobao/windvane/service/WVEventResult;-><init>(ZLjava/lang/Object;)V

    return-object p2
.end method
