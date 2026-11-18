.class public Lcom/taobao/zcache/ZCacheManager;
.super Ljava/lang/Object;
.source "ZCacheManager.java"


# static fields
.field private static INSTANCE:Lcom/taobao/zcache/ZCacheManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/taobao/zcache/ZCacheManager;
    .locals 2

    .line 23
    sget-object v0, Lcom/taobao/zcache/ZCacheManager;->INSTANCE:Lcom/taobao/zcache/ZCacheManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/taobao/zcache/ZCacheManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/ZCacheManager;->INSTANCE:Lcom/taobao/zcache/ZCacheManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/taobao/zcache/ZCacheManager;

    invoke-direct {v1}, Lcom/taobao/zcache/ZCacheManager;-><init>()V

    sput-object v1, Lcom/taobao/zcache/ZCacheManager;->INSTANCE:Lcom/taobao/zcache/ZCacheManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/zcache/ZCacheManager;->INSTANCE:Lcom/taobao/zcache/ZCacheManager;

    return-object v0
.end method


# virtual methods
.method public getAppPath(Ljava/lang/String;Lcom/taobao/zcachecorewrapper/IZCacheCore$AppInfoCallback;)V
    .locals 2

    .line 75
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    new-instance v1, Lcom/taobao/zcache/ZCacheManager$1;

    invoke-direct {v1, p0, p2}, Lcom/taobao/zcache/ZCacheManager$1;-><init>(Lcom/taobao/zcache/ZCacheManager;Lcom/taobao/zcachecorewrapper/IZCacheCore$AppInfoCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/zcache/core/IZCacheCore;->loadAppReader(Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$AppReaderInfoCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getMiniAppFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p1, p2}, Lcom/taobao/zcache/ZCache;->getACacheRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSeesionID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/zcache/core/IZCacheCore;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZCacheResource(Ljava/lang/String;)Lcom/taobao/zcache/model/ZCacheResourceResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/zcache/ZCacheManager;->getZCacheResource(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/zcache/model/ZCacheResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public getZCacheResource(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/zcache/model/ZCacheResourceResponse;
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/zcache/model/ZCacheResourceResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    new-instance v0, Lcom/taobao/zcache/ResourceRequest;

    invoke-direct {v0, p1, p2}, Lcom/taobao/zcache/ResourceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->getResource(Lcom/taobao/zcache/ResourceRequest;)Lcom/taobao/zcache/ResourceResponse;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;

    invoke-direct {p2}, Lcom/taobao/zcache/model/ZCacheResourceResponse;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    iput-boolean v0, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    .line 50
    iput v0, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    const-string p1, "NO_RESPONSE"

    .line 51
    iput-object p1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getHeader()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    .line 54
    iget-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    const-string v2, "X-ZCache-Info"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "NO_HEADER"

    .line 57
    iput-object v1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->zcacheInfo:Ljava/lang/String;

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getError()Lcom/taobao/zcache/Error;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 60
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/taobao/zcache/ResourceResponse;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->inputStream:Ljava/io/InputStream;

    .line 61
    iput-boolean v2, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    const/4 p1, 0x2

    .line 62
    iput p1, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    goto :goto_1

    .line 64
    :cond_2
    iput-boolean v0, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->isSuccess:Z

    .line 65
    iput v2, p2, Lcom/taobao/zcache/model/ZCacheResourceResponse;->status:I

    :goto_1
    return-object p2
.end method

.method public initApps(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->setInitialPacks(Ljava/util/Set;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public installPreload(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    invoke-static {p1}, Lcom/taobao/zcache/ZCache;->installPreload(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public invokeZCacheDev(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/zcache/core/IZCacheCore$DevCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isAppInstall(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    new-instance v0, Lcom/taobao/zcache/PackRequest;

    invoke-direct {v0, p1}, Lcom/taobao/zcache/PackRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->isPackInstalled(Lcom/taobao/zcache/PackRequest;)Z

    move-result p1

    return p1
.end method

.method public isResourceInstalled(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/taobao/zcache/ZCache;->isResourceInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onBackground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {}, Lcom/taobao/zcache/ZCache;->clientDeactived()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onForeground()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-static {}, Lcom/taobao/zcache/ZCache;->clientActived()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pauseApp(Ljava/lang/String;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->pauseApp(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public receiveZConfigUpdateMessage(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeAZCache(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-static {p1, v0}, Lcom/taobao/zcache/ZCache;->removeACache(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeAllZCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-static {}, Lcom/taobao/zcache/ZCache;->clean()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resumeApp(Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/zcache/core/IZCacheCore;->resumeApp(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startUpdateQueue()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-static {}, Lcom/taobao/zcache/ZCache;->startUpdateQueue()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public syncSubProcessConfig()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {}, Lcom/taobao/zcache/ZCache;->syncSubProcessConfig()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public update(Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taobao/zcache/core/IZCacheCore;->updateDAI(Ljava/util/Set;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updatePack(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    new-instance p3, Lcom/taobao/zcache/PackRequest;

    invoke-direct {p3, p1, p2}, Lcom/taobao/zcache/PackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/taobao/zcache/ZCacheManager$2;

    invoke-direct {p1, p0, p4}, Lcom/taobao/zcache/ZCacheManager$2;-><init>(Lcom/taobao/zcache/ZCacheManager;Lcom/taobao/zcachecorewrapper/IZCacheCore$UpdateCallback;)V

    invoke-static {p3, p1}, Lcom/taobao/zcache/ZCache;->updatePack(Lcom/taobao/zcache/PackRequest;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
