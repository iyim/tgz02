.class public interface abstract Lcom/taobao/zcache/core/IZCacheCore;
.super Ljava/lang/Object;
.source "IZCacheCore.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;,
        Lcom/taobao/zcache/core/IZCacheCore$DevCallback;
    }
.end annotation


# virtual methods
.method public abstract clientActived()V
.end method

.method public abstract clientDeactived()V
.end method

.method public abstract getACacheRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResource(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;
.end method

.method public abstract getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract installPreload(Ljava/lang/String;)V
.end method

.method public abstract invokeDev(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V
.end method

.method public abstract isInstalled(Lcom/taobao/zcache/PackRequest;)Z
.end method

.method public abstract isResourceInstalled(Lcom/taobao/zcache/ResourceRequest;)Z
.end method

.method public abstract loadAppReader(Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;)V
.end method

.method public abstract pauseApp(Ljava/lang/String;)V
.end method

.method public abstract prefetch(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerPushService(Lcom/taobao/zcache/IZCachePushService;)V
.end method

.method public abstract removeAllZCache()V
.end method

.method public abstract removePack(Lcom/taobao/zcache/PackRequest;)V
.end method

.method public abstract resumeApp(Ljava/lang/String;)V
.end method

.method public abstract setConfig(Lcom/taobao/zcache/ZCacheConfig;)V
.end method

.method public abstract setEnv(Lcom/taobao/zcache/Environment;)V
.end method

.method public abstract setInitialPacks(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocale(Ljava/lang/String;)V
.end method

.method public abstract setupSubProcess()V
.end method

.method public abstract setupWithHTTP(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/Environment;Ljava/lang/String;Lcom/taobao/zcache/ZCacheConfig;)V
.end method

.method public abstract startUpdateQueue()V
.end method

.method public abstract syncSubProcessConfig()V
.end method

.method public abstract updateDAI(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePack(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
.end method
