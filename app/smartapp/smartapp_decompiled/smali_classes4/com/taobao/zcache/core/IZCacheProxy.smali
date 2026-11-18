.class public interface abstract Lcom/taobao/zcache/core/IZCacheProxy;
.super Ljava/lang/Object;
.source "IZCacheProxy.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract commitMonitor(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract log(Lcom/taobao/zcache/core/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract networkStatus()Lcom/taobao/zcache/core/NetworkStatus;
.end method

.method public abstract onFirstUpdateQueueFinished(I)V
.end method

.method public abstract onPackUpdated(Ljava/lang/String;)V
.end method

.method public abstract sendRequest(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V
.end method
