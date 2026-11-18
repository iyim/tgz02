.class public Lmtopsdk/mtop/intf/MtopBuilder;
.super Ljava/lang/Object;
.source "MtopBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBuilder"


# instance fields
.field public listener:Lmtopsdk/mtop/common/MtopListener;

.field protected mtopContext:Lmtopsdk/framework/domain/MtopContext;

.field protected mtopInstance:Lmtopsdk/mtop/intf/Mtop;

.field public final mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public request:Lmtopsdk/mtop/domain/MtopRequest;

.field public requestContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p2}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-static {p2}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 71
    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 77
    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 106
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 107
    iput-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 108
    iget-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p3, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    const-string p3, "PageName"

    .line 109
    invoke-static {p3}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    .line 110
    iget-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const-string p3, "PageUrl"

    invoke-static {p3}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    .line 111
    iget-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-static {}, Lmtopsdk/xstate/XState;->isAppBackground()Z

    move-result p3

    iput-boolean p3, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->backGround:Z

    .line 112
    new-instance p2, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {p1}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object p1

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    iget-object p3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {p2, p1, p3}, Lmtopsdk/mtop/util/MtopStatistics;-><init>(Lmtopsdk/mtop/stat/IUploadStats;Lmtopsdk/mtop/common/MtopNetworkProp;)V

    iput-object p2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    return-void
.end method

.method private asyncRequest(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/ApiID;
    .locals 3

    .line 628
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    .line 629
    invoke-virtual {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopContext(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/framework/domain/MtopContext;

    move-result-object p1

    .line 630
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    .line 631
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Lmtopsdk/network/Call;Lmtopsdk/framework/domain/MtopContext;)V

    iput-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    .line 633
    :try_start_0
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v0

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    if-eqz v0, :cond_1

    .line 649
    invoke-interface {v0, v1, p1}, Lmtopsdk/framework/manager/FilterManager;->start(Ljava/lang/String;Lmtopsdk/framework/domain/MtopContext;)V

    .line 651
    :cond_1
    invoke-static {v0, p1}, Lmtopsdk/framework/util/FilterUtils;->checkFilterManager(Lmtopsdk/framework/manager/FilterManager;Lmtopsdk/framework/domain/MtopContext;)V

    goto :goto_1

    .line 634
    :cond_2
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lmtopsdk/mtop/intf/MtopBuilder$1;

    invoke-direct {v1, p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder$1;-><init>(Lmtopsdk/mtop/intf/MtopBuilder;Lmtopsdk/framework/domain/MtopContext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :goto_1
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    return-object p1

    :catchall_0
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    return-object p1
.end method

.method private createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    .locals 1

    if-nez p1, :cond_0

    .line 707
    new-instance p1, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    new-instance v0, Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-direct {v0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    invoke-direct {p1, v0}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    move-object v0, p1

    goto :goto_0

    .line 708
    :cond_0
    instance-of v0, p1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v0, :cond_1

    .line 709
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    goto :goto_0

    .line 711
    :cond_1
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addCacheKeyParamBlackList(Ljava/util/List;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .line 347
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    .line 357
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 348
    :cond_2
    :goto_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addHttpQueryParameter]add HttpQueryParameter error,key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mtopsdk.MtopBuilder"

    invoke-static {p2, p1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 316
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-object p0
.end method

.method public addMteeUa(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    const-string/jumbo v0, "ua"

    .line 335
    invoke-virtual {p0, v0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    return-object p0
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .line 460
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    .line 461
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    .line 462
    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public asyncRequest()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .line 663
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public createMtopContext(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/framework/domain/MtopContext;
    .locals 3

    .line 674
    new-instance v0, Lmtopsdk/framework/domain/MtopContext;

    invoke-direct {v0}, Lmtopsdk/framework/domain/MtopContext;-><init>()V

    .line 675
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iput-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 676
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    .line 677
    iget-object v1, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    iput-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iput-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 679
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v2, v0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 680
    iput-object p1, v0, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    .line 681
    iput-object p0, v0, Lmtopsdk/framework/domain/MtopContext;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    if-eqz v1, :cond_0

    .line 684
    iget-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 687
    :cond_0
    iget-object p1, v0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 688
    iget-object p1, v0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1}, Lmtopsdk/mtop/intf/Mtop;->getTtid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 691
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 692
    invoke-virtual {p0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_2
    return-object v0
.end method

.method public enableProgressListener()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .line 571
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->enableProgressListener:Z

    return-object p0
.end method

.method public forceRefreshCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .line 386
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    return-object p0
.end method

.method public getMtopContext()Lmtopsdk/framework/domain/MtopContext;
    .locals 1

    .line 197
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    return-object v0
.end method

.method public getMtopInstance()Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    .line 193
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    return-object v0
.end method

.method public getReqContext()Ljava/lang/Object;
    .locals 1

    .line 184
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    return-object v0
.end method

.method protected handleAsyncTimeoutException()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 5

    .line 607
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const-string/jumbo v4, "\u670d\u52a1\u7adf\u7136\u51fa\u9519\u4e86"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/mtop/util/ErrorConstant;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 612
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    iget-object v2, v0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v1, v2}, Lmtopsdk/mtop/util/ErrorConstant;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 614
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->mappingCode:Ljava/lang/String;

    .line 615
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v2, 0x2

    iput v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->retType:I

    .line 616
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 617
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onEndAndCommit()V

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 368
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 212
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected mtopCommitStatData(Z)V
    .locals 1

    .line 720
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-boolean p1, v0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    return-void
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    :cond_0
    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 176
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    :cond_0
    return-object p0
.end method

.method public retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 204
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    return-object p0
.end method

.method public setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 500
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    return-object p0
.end method

.method public setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 3

    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "cache-control"

    const-string v2, "no-cache"

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v0, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-lez p1, :cond_0

    .line 474
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    :cond_0
    return-object p0
.end method

.method public setCustomDomain(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 270
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->customOnlineDomain:Ljava/lang/String;

    .line 274
    :cond_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customPreDomain:Ljava/lang/String;

    .line 278
    :cond_1
    invoke-static {p3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 279
    iget-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p3, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customDailyDomain:Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/JsonTypeEnum;->getJsonType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_0
    return-object p0
.end method

.method public setNetInfo(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 325
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    .line 549
    iget-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    iput-object v0, p1, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 535
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 536
    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public setReqBizExt(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 511
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    return-object p0
.end method

.method public setReqSource(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 561
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    return-object p0
.end method

.method public setReqUserId(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 523
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    if-lez p1, :cond_0

    .line 488
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    :cond_0
    return-object p0
.end method

.method public setUnitStrategy(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, -0x1

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x15d5bb9f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x15200537

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "UNIT_TRADE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "UNIT_GUIDE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "guide-acs.m.taobao.com"

    const-string v0, "guide-acs.wapa.taobao.com"

    const-string v1, "guide-acs.waptest.taobao.com"

    .line 299
    invoke-virtual {p0, p1, v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "trade-acs.m.taobao.com"

    const-string/jumbo v0, "trade-acs.wapa.taobao.com"

    const-string/jumbo v1, "trade-acs.waptest.taobao.com"

    .line 295
    invoke-virtual {p0, p1, v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->setCustomDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_5
    :goto_1
    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DEFAULT"

    :cond_0
    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    return-object p0
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 4

    .line 581
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    move-result-object v0

    .line 583
    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/ApiID;

    .line 586
    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v1, :cond_0

    const-wide/32 v1, 0xea60

    .line 589
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "mtopsdk.MtopBuilder"

    const-string v3, "[syncRequest] callback wait error"

    .line 592
    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    iget-object v1, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 597
    iget-object v2, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->reqContext:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->reqContext:Ljava/lang/Object;

    iput-object v0, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 600
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->handleAsyncTimeoutException()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    :goto_1
    return-object v1

    .line 594
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public ttid(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 168
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public useCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .line 377
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    return-object p0
.end method

.method public useWua()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    const/4 v0, 0x4

    .line 396
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useWua(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    return-object p0
.end method
