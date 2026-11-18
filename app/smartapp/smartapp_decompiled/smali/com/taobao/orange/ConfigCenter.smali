.class public Lcom/taobao/orange/ConfigCenter;
.super Ljava/lang/Object;
.source "ConfigCenter.java"


# static fields
.field static final BASE_ACKDELAY_INTERVAL:I = 0xa

.field private static final FAIL_LOAD_INDEX_UPD_INTERVAL:J = 0x2bf20L

.field private static final FAIL_LOAD_INDEX_UPD_NUM:J = 0xaL

.field private static final MAX_LISTENER_NUM:J = 0xaL

.field static final TAG:Ljava/lang/String; = "ConfigCenter"

.field private static volatile failLastIndexUpdTime:J

.field static mInstance:Lcom/taobao/orange/ConfigCenter;


# instance fields
.field failCandidateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getConfigTracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

.field final mFailRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mGlobalListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/orange/aidl/ParcelableConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field mIndexCache:Lcom/taobao/orange/cache/IndexCache;

.field volatile mInitListener:Lcom/taobao/orange/inner/OInitListener;

.field public mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/aidl/ParcelableConfigListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mLoadingConfigSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/taobao/orange/ConfigCenter;

    invoke-direct {v0}, Lcom/taobao/orange/ConfigCenter;-><init>()V

    sput-object v0, Lcom/taobao/orange/ConfigCenter;->mInstance:Lcom/taobao/orange/ConfigCenter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mInitListener:Lcom/taobao/orange/inner/OInitListener;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->getConfigTracks:Ljava/util/Map;

    .line 883
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->failCandidateSet:Ljava/util/Set;

    .line 83
    new-instance v0, Lcom/taobao/orange/cache/IndexCache;

    invoke-direct {v0}, Lcom/taobao/orange/cache/IndexCache;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    .line 84
    new-instance v0, Lcom/taobao/orange/cache/ConfigCache;

    invoke-direct {v0}, Lcom/taobao/orange/cache/ConfigCache;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/orange/ConfigCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/taobao/orange/ConfigCenter;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addFail(Ljava/lang/String;)V
    .locals 6

    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 814
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConfigCenter"

    const-string v3, "addFail"

    .line 815
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "namespace"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkLoading(Ljava/lang/String;Z)Z
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 865
    monitor-exit v0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 868
    iget-object p2, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getConfigObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 269
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "ConfigCenter"

    const-string v2, "getConfigObj error, namespace is empty"

    invoke-static {v0, v2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "orange"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "orange.index"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 277
    :cond_1
    sget-boolean v0, Lcom/taobao/orange/GlobalOrange;->statUsedConfig:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/taobao/orange/util/OrangeMonitor;->mAppMonitorValid:Z

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->getConfigTracks:Ljava/util/Map;

    monitor-enter v0

    .line 279
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 281
    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter;->getConfigTracks:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter;->getConfigTracks:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2710

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    :cond_2
    const-string v5, "OrangeConfig"

    const-string/jumbo v6, "usedConfig"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 282
    invoke-static {v5, v6, p1, v7, v8}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 283
    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter;->getConfigTracks:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 289
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v0}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v0, p1}, Lcom/taobao/orange/cache/ConfigCache;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 295
    :cond_5
    invoke-static {v2}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "namespace"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    aput-object p1, v0, v3

    const/4 v3, 0x2

    const-string v4, "...null"

    aput-object v4, v0, v3

    const-string v3, "ConfigCenter"

    const-string v4, "getConfigObj"

    invoke-static {v3, v4, v0}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v0, p1}, Lcom/taobao/orange/cache/IndexCache;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 299
    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 300
    invoke-direct {p0, p1, v2}, Lcom/taobao/orange/ConfigCenter;->checkLoading(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 305
    :cond_7
    new-instance p1, Lcom/taobao/orange/ConfigCenter$2;

    invoke-direct {p1, p0, v0}, Lcom/taobao/orange/ConfigCenter$2;-><init>(Lcom/taobao/orange/ConfigCenter;Lcom/taobao/orange/model/NameSpaceDO;)V

    invoke-static {p1}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 316
    :cond_8
    invoke-direct {p0, p1}, Lcom/taobao/orange/ConfigCenter;->addFail(Ljava/lang/String;)V

    :goto_1
    return-object v1

    .line 273
    :cond_9
    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "ConfigCenter"

    const-string v2, "getConfigObj error, namespace is occupied by sdk"

    invoke-static {v0, v2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance()Lcom/taobao/orange/ConfigCenter;
    .locals 1

    .line 79
    sget-object v0, Lcom/taobao/orange/ConfigCenter;->mInstance:Lcom/taobao/orange/ConfigCenter;

    return-object v0
.end method

.method private getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 177
    :try_start_0
    invoke-static {}, Lcom/taobao/android/AliUtdidServiceFetcher;->getUtdidService()Lcom/taobao/android/AliUtdidInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/android/AliUtdidInterface;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    const-string v0, "com.ta.utdid2.device.UTDevice"

    .line 180
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 181
    invoke-static {p1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const/4 v0, 0x1

    .line 183
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "not found utdid4all sdk"

    aput-object v2, v0, v1

    const-string v1, "ConfigCenter"

    const-string v2, "init"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadIndex(Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "index_rate"

    const-string v10, "OrangeConfig"

    const-string v11, "ConfigCenter"

    const/4 v12, 0x0

    if-eqz v8, :cond_12

    .line 583
    iget-object v0, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 588
    :cond_0
    iget-object v0, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v0}, Lcom/taobao/orange/cache/IndexCache;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, "loadIndex fail"

    const/4 v14, 0x1

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v0}, Lcom/taobao/orange/cache/IndexCache;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    new-array v0, v14, [Ljava/lang/Object;

    const-string v1, "cdnMd5 is match"

    aput-object v1, v0, v12

    invoke-static {v11, v13, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    .line 593
    :cond_1
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xa

    const/4 v15, 0x3

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 595
    sget-wide v2, Lcom/taobao/orange/ConfigCenter;->failLastIndexUpdTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 596
    sget-wide v2, Lcom/taobao/orange/ConfigCenter;->failLastIndexUpdTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    return v12

    .line 599
    :cond_2
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 600
    sput-wide v4, Lcom/taobao/orange/ConfigCenter;->failLastIndexUpdTime:J

    .line 601
    invoke-static {v15}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 602
    new-array v0, v12, [Ljava/lang/Object;

    const-string/jumbo v1, "updateIndex continuous fail already wait 100s"

    invoke-static {v11, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 606
    :cond_3
    sput-wide v0, Lcom/taobao/orange/ConfigCenter;->failLastIndexUpdTime:J

    .line 607
    invoke-static {v15}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    new-array v0, v12, [Ljava/lang/Object;

    const-string/jumbo v1, "updateIndex continuous fail numbers exceed 10"

    invoke-static {v11, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v12

    .line 613
    :cond_5
    :goto_0
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v6, 0x2

    .line 614
    invoke-static {v6}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 615
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cdn"

    aput-object v1, v0, v12

    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    aput-object v1, v0, v14

    const-string/jumbo v1, "resource"

    aput-object v1, v0, v6

    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    aput-object v1, v0, v15

    const-string v1, "md5"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    iget-object v2, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "loadIndex start"

    invoke-static {v11, v1, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->schema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/taobao/orange/ConfigCenter$6;

    iget-object v2, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-direct {v1, v7, v0, v2}, Lcom/taobao/orange/ConfigCenter$6;-><init>(Lcom/taobao/orange/ConfigCenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->syncRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/IndexDO;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v16, "msg"

    const-string v17, "code"

    if-eqz v0, :cond_8

    .line 632
    :try_start_1
    invoke-virtual {v0}, Lcom/taobao/orange/model/IndexDO;->checkValid()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v15, 0x2

    goto :goto_2

    .line 633
    :cond_8
    :goto_1
    invoke-static {v12}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "loadIndex cdnReq fail downgrade to authReq"

    .line 634
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v17, v2, v12

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    aput-object v16, v2, v6

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v15

    invoke-static {v11, v0, v2}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    :cond_9
    new-instance v0, Lcom/taobao/orange/ConfigCenter$7;

    iget-object v3, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v18, "/downloadResource"

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v15, 0x4

    move-object/from16 v5, v18

    const/4 v15, 0x2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/orange/ConfigCenter$7;-><init>(Lcom/taobao/orange/ConfigCenter;Ljava/lang/String;ZLjava/lang/String;Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;)V

    .line 655
    invoke-virtual {v0}, Lcom/taobao/orange/sync/BaseRequest;->syncRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/model/IndexDO;

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    :goto_2
    if-eqz v0, :cond_f

    .line 657
    invoke-virtual {v0}, Lcom/taobao/orange/model/IndexDO;->checkValid()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 667
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 668
    iget-object v1, v0, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    iget-object v2, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v2}, Lcom/taobao/orange/cache/IndexCache;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    iget-object v2, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v2}, Lcom/taobao/orange/cache/IndexCache;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_5

    .line 672
    :cond_a
    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    .line 673
    iget-object v1, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v1, v0}, Lcom/taobao/orange/cache/IndexCache;->cache(Lcom/taobao/orange/model/IndexDO;)Ljava/util/List;

    move-result-object v1

    .line 674
    iget-object v2, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-static {v10, v9, v2}, Lcom/taobao/orange/util/OrangeMonitor;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {v14}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "loadIndex success"

    .line 676
    new-array v3, v15, [Ljava/lang/Object;

    const-string v4, "indexDO"

    aput-object v4, v3, v12

    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->formatIndexDO(Lcom/taobao/orange/model/IndexDO;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v11, v2, v3}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    :cond_b
    :try_start_2
    new-instance v2, Lcom/taobao/orange/model/IndexAckDO;

    iget-object v0, v0, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    invoke-static {}, Lcom/taobao/orange/util/OrangeUtils;->getCurFormatTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/taobao/orange/model/IndexAckDO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {v2}, Lcom/taobao/orange/util/ReportAckUtils;->reportIndexAck(Lcom/taobao/orange/model/IndexAckDO;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "loadIndex"

    .line 682
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v11, v2, v0, v3}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 685
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 686
    invoke-static {v15}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "loadIndex remove diff namespace"

    .line 687
    new-array v2, v15, [Ljava/lang/Object;

    const-string/jumbo v3, "removeNamespaces"

    aput-object v3, v2, v12

    aput-object v1, v2, v14

    invoke-static {v11, v0, v2}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "private_orange"

    const-string v3, "config_remove_counts"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 690
    invoke-static {v2, v3, v1, v4, v5}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 691
    iget-object v2, v7, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v2, v1}, Lcom/taobao/orange/cache/ConfigCache;->remove(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    return v14

    .line 669
    :cond_e
    :goto_5
    new-array v0, v14, [Ljava/lang/Object;

    const-string v1, "id or version is match"

    aput-object v1, v0, v12

    invoke-static {v11, v13, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_f
    const-string v2, "-200"

    .line 696
    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v0, :cond_10

    .line 697
    invoke-virtual {v0}, Lcom/taobao/orange/model/IndexDO;->checkValid()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, -0x5

    .line 698
    invoke-virtual {v1, v0}, Lcom/taobao/orange/sync/BaseRequest;->setCode(I)V

    const-string v0, "index is invaild"

    .line 699
    invoke-virtual {v1, v0}, Lcom/taobao/orange/sync/BaseRequest;->setMessage(Ljava/lang/String;)V

    .line 701
    :cond_10
    iget-object v0, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v9, v0, v2, v3}, Lcom/taobao/orange/util/OrangeMonitor;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x4

    .line 703
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v17, v0, v12

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    aput-object v16, v0, v15

    invoke-virtual {v1}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v11, v13, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 706
    iget-object v1, v8, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v10, v9, v1, v3, v2}, Lcom/taobao/orange/util/OrangeMonitor;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v13, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_6
    return v12

    .line 585
    :cond_12
    :goto_7
    new-array v0, v12, [Ljava/lang/Object;

    const-string/jumbo v1, "updateIndex param is null"

    invoke-static {v11, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12
.end method

.method private removeLoading(Ljava/lang/String;)V
    .locals 2

    .line 875
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    monitor-enter v0

    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mLoadingConfigSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 880
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addFails([Ljava/lang/String;)V
    .locals 3

    .line 803
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 804
    invoke-direct {p0, v2}, Lcom/taobao/orange/ConfigCenter;->addFail(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addGlobalListener(Lcom/taobao/orange/OConfigListener;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    new-instance v1, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v1, p1}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forceCheckUpdate()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigCenter"

    if-nez v0, :cond_0

    .line 225
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "forceCheckUpdate fail as not finish orange init"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v3, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    if-eq v0, v3, :cond_1

    .line 229
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "forceCheckUpdate start"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v0}, Lcom/taobao/orange/cache/IndexCache;->getAppIndexVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v1}, Lcom/taobao/orange/cache/IndexCache;->getVersionIndexVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/orange/sync/IndexUpdateHandler;->checkIndexUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "forceCheckUpdate fail as not allow in O_XMD mode"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getAllConfigs()Lorg/json/JSONObject;
    .locals 4

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v0}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/orange/util/OrangeUtils;->sortMapByKey(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 950
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 951
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 954
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigCenter"

    const-string v3, "getAllConfigs"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 237
    invoke-virtual {p0, p1}, Lcom/taobao/orange/ConfigCenter;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p3
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/orange/ConfigCenter;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 248
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "namespace"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "ConfigCenter"

    const-string v2, "getConfigs error"

    invoke-static {p1, v2, v0, v1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/orange/ConfigCenter;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 257
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "namespace"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "ConfigCenter"

    const-string v2, "getCustomConfig error"

    invoke-static {p1, v2, v0, v1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getIndex()Lorg/json/JSONObject;
    .locals 4

    .line 962
    :try_start_0
    new-instance v0, Lcom/taobao/orange/model/IndexDO;

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v1}, Lcom/taobao/orange/cache/IndexCache;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/orange/model/IndexDO;-><init>(Lcom/taobao/orange/model/IndexDO;)V

    .line 963
    iget-object v1, v0, Lcom/taobao/orange/model/IndexDO;->mergedNamespaces:Ljava/util/List;

    new-instance v2, Lcom/taobao/orange/ConfigCenter$9;

    invoke-direct {v2, p0}, Lcom/taobao/orange/ConfigCenter$9;-><init>(Lcom/taobao/orange/ConfigCenter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 970
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 971
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 974
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigCenter"

    const-string v3, "getIndex"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIndexAndConfigs()Lorg/json/JSONObject;
    .locals 4

    .line 935
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "index"

    .line 936
    invoke-virtual {p0}, Lcom/taobao/orange/ConfigCenter;->getIndex()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "config"

    .line 937
    invoke-virtual {p0}, Lcom/taobao/orange/ConfigCenter;->getAllConfigs()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 940
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigCenter"

    const-string v3, "getIndexAndConfigs"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p2, Lcom/taobao/orange/OConfig;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/taobao/orange/OConfig;->appVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/taobao/orange/ConfigCenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/orange/ConfigCenter$1;-><init>(Lcom/taobao/orange/ConfigCenter;Landroid/content/Context;Lcom/taobao/orange/OConfig;)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 106
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "input param error"

    aput-object v0, p1, p2

    const-string p2, "ConfigCenter"

    const-string v0, "init start"

    invoke-static {p2, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method loadCaches()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "cost(ms)"

    const-string v2, "loadCaches"

    const-string v3, "ConfigCenter"

    const/4 v4, 0x0

    .line 191
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    .line 192
    new-array v8, v7, [Ljava/lang/Object;

    const-string/jumbo v9, "start index"

    aput-object v9, v8, v4

    invoke-static {v3, v2, v8}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v8, v1, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v8}, Lcom/taobao/orange/cache/IndexCache;->load()V

    .line 196
    iget-object v8, v1, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v8}, Lcom/taobao/orange/cache/IndexCache;->getAllNameSpaces()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x2

    .line 197
    new-array v10, v9, [Ljava/lang/Object;

    const-string/jumbo v11, "start restore configs"

    aput-object v11, v10, v4

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v3, v2, v10}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v10, v1, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v10, v8}, Lcom/taobao/orange/cache/ConfigCache;->load(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    const/4 v5, 0x4

    .line 200
    new-array v6, v5, [Ljava/lang/Object;

    const-string v13, "finish restore configs"

    aput-object v13, v6, v4

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v0, v6, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v6, v11

    invoke-static {v3, v2, v6}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_1

    .line 203
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "start load notMatchNamespaces"

    aput-object v8, v6, v4

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v2, v6}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 206
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/orange/model/NameSpaceDO;

    const-string v14, "private_orange"

    const-string v15, "config_notmatch_counts"

    .line 207
    iget-object v11, v8, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    move-object/from16 v16, v10

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v11, v9, v10}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 208
    invoke-virtual {v1, v8}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    move-object/from16 v10, v16

    const/4 v9, 0x2

    const/4 v11, 0x3

    goto :goto_0

    :cond_0
    move-object/from16 v16, v10

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    .line 211
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "finish load notMatchNamespaces"

    aput-object v6, v5, v4

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v3, v2, v5}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 216
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    sget-object v5, Lcom/taobao/orange/GlobalOrange;->context:Landroid/content/Context;

    new-instance v6, Lcom/taobao/orange/receiver/OrangeReceiver;

    invoke-direct {v6}, Lcom/taobao/orange/receiver/OrangeReceiver;-><init>()V

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 219
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v0, v4}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "config_rate"

    const-string v11, "OrangeConfig"

    const-string v12, "loadConfig fail"

    const-string v13, "ConfigCenter"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v9, :cond_0

    .line 325
    new-array v0, v15, [Ljava/lang/Object;

    const-string v1, "nameSpaceDO is null"

    aput-object v1, v0, v14

    invoke-static {v13, v12, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 329
    :cond_0
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->type:Ljava/lang/String;

    const-string v1, "STANDARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v16, "namespace"

    const/4 v7, 0x4

    const/16 v17, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 330
    const-class v0, Lcom/taobao/orange/model/ConfigDO;

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->type:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 332
    const-class v0, Lcom/taobao/orange/model/CustomConfigDO;

    .line 337
    :goto_0
    iget-object v1, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v1, v15}, Lcom/taobao/orange/ConfigCenter;->checkLoading(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    invoke-static/range {v17 .. v17}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v16, v0, v14

    iget-object v1, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v1, v0, v15

    const-string v1, "loadConfig break as is loading"

    invoke-static {v13, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 344
    :cond_3
    :try_start_0
    iget-object v1, v8, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v1}, Lcom/taobao/orange/cache/IndexCache;->getCdnUrl()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    new-array v0, v15, [Ljava/lang/Object;

    const-string v1, "cdnUrl is null"

    aput-object v1, v0, v14

    invoke-static {v13, v12, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->addFail(Ljava/lang/String;)V

    .line 348
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeLoading(Ljava/lang/String;)V

    return-void

    .line 351
    :cond_4
    invoke-static {v15}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "loadConfig start"

    .line 352
    new-array v3, v15, [Ljava/lang/Object;

    aput-object v9, v3, v14

    invoke-static {v13, v2, v3}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_5
    iget-object v2, v8, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v2}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/orange/model/ConfigDO;

    .line 355
    invoke-virtual {v9, v2}, Lcom/taobao/orange/model/NameSpaceDO;->checkValid(Lcom/taobao/orange/model/ConfigDO;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 356
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeFail(Ljava/lang/String;)V

    .line 357
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeLoading(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_6
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->curCandidateDO:Lcom/taobao/orange/model/CandidateDO;

    if-eqz v2, :cond_7

    .line 364
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->curCandidateDO:Lcom/taobao/orange/model/CandidateDO;

    iget-object v2, v2, Lcom/taobao/orange/model/CandidateDO;->resourceId:Ljava/lang/String;

    .line 365
    iget-object v3, v9, Lcom/taobao/orange/model/NameSpaceDO;->curCandidateDO:Lcom/taobao/orange/model/CandidateDO;

    iget-object v3, v3, Lcom/taobao/orange/model/CandidateDO;->md5:Ljava/lang/String;

    .line 366
    iget-object v4, v9, Lcom/taobao/orange/model/NameSpaceDO;->curCandidateDO:Lcom/taobao/orange/model/CandidateDO;

    iget-object v4, v4, Lcom/taobao/orange/model/CandidateDO;->version:Ljava/lang/String;

    goto :goto_1

    .line 368
    :cond_7
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->resourceId:Ljava/lang/String;

    .line 369
    iget-object v3, v9, Lcom/taobao/orange/model/NameSpaceDO;->md5:Ljava/lang/String;

    .line 370
    iget-object v4, v9, Lcom/taobao/orange/model/NameSpaceDO;->version:Ljava/lang/String;

    :goto_1
    move-object v5, v4

    .line 372
    invoke-static {v14}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "loadConfig check"

    .line 373
    new-array v6, v7, [Ljava/lang/Object;

    const-string v19, "config"

    aput-object v19, v6, v14

    iget-object v7, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v7, v6, v15

    const-string/jumbo v7, "version"

    const/16 v18, 0x2

    aput-object v7, v6, v18

    aput-object v5, v6, v17

    invoke-static {v13, v4, v6}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Lcom/taobao/orange/ConfigCenter$3;

    invoke-direct {v2, v8, v1, v3, v0}, Lcom/taobao/orange/ConfigCenter$3;-><init>(Lcom/taobao/orange/ConfigCenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 383
    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->syncRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/model/ConfigDO;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v20, "msg"

    const-string v21, "code"

    if-eqz v1, :cond_a

    .line 384
    :try_start_1
    invoke-virtual {v1}, Lcom/taobao/orange/model/ConfigDO;->checkValid()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    move-object v14, v5

    const/16 v19, 0x2

    goto :goto_4

    .line 385
    :cond_a
    :goto_2
    invoke-static {v14}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "loadConfig cdnReq fail downgrade to authReq"

    const/4 v7, 0x4

    .line 386
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v21, v3, v14

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const/4 v6, 0x2

    aput-object v20, v3, v6

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v17

    invoke-static {v13, v1, v3}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    const/4 v6, 0x2

    const/4 v7, 0x4

    .line 389
    :goto_3
    new-instance v18, Lcom/taobao/orange/ConfigCenter$4;

    iget-object v3, v9, Lcom/taobao/orange/model/NameSpaceDO;->md5:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v19, "/downloadResource"

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v5, v19

    const/16 v19, 0x2

    move-object/from16 v6, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/orange/ConfigCenter$4;-><init>(Lcom/taobao/orange/ConfigCenter;Ljava/lang/String;ZLjava/lang/String;Lcom/taobao/orange/model/NameSpaceDO;Ljava/lang/Class;)V

    .line 407
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/orange/sync/BaseRequest;->syncRequest()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/orange/model/ConfigDO;

    move-object/from16 v2, v18

    :goto_4
    if-eqz v1, :cond_d

    .line 410
    invoke-virtual {v1}, Lcom/taobao/orange/model/ConfigDO;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    iget-object v3, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 412
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeFail(Ljava/lang/String;)V

    .line 413
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeLoading(Ljava/lang/String;)V

    .line 414
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-static {v11, v10, v0}, Lcom/taobao/orange/util/OrangeMonitor;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->curCandidateDO:Lcom/taobao/orange/model/CandidateDO;

    iput-object v0, v1, Lcom/taobao/orange/model/ConfigDO;->candidate:Lcom/taobao/orange/model/CandidateDO;

    .line 417
    iget-object v0, v8, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v0, v1}, Lcom/taobao/orange/cache/ConfigCache;->cache(Lcom/taobao/orange/model/ConfigDO;)V

    .line 418
    invoke-static/range {v19 .. v19}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "loadConfig success"

    .line 419
    new-array v2, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v13, v0, v2}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :cond_c
    :try_start_2
    new-instance v0, Lcom/taobao/orange/model/ConfigAckDO;

    iget-object v2, v1, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/taobao/orange/model/ConfigDO;->id:Ljava/lang/String;

    invoke-static {}, Lcom/taobao/orange/util/OrangeUtils;->getCurFormatTime()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/taobao/orange/model/ConfigAckDO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {v0}, Lcom/taobao/orange/util/ReportAckUtils;->reportConfigAck(Lcom/taobao/orange/model/ConfigAckDO;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 427
    :cond_d
    :try_start_3
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->addFail(Ljava/lang/String;)V

    .line 428
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/taobao/orange/ConfigCenter;->removeLoading(Ljava/lang/String;)V

    const-string v0, "-200"

    .line 429
    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v1, :cond_e

    .line 430
    invoke-virtual {v1}, Lcom/taobao/orange/model/ConfigDO;->checkValid()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x5

    .line 431
    invoke-virtual {v2, v0}, Lcom/taobao/orange/sync/BaseRequest;->setCode(I)V

    const-string v0, "config is invaild"

    .line 432
    invoke-virtual {v2, v0}, Lcom/taobao/orange/sync/BaseRequest;->setMessage(Ljava/lang/String;)V

    .line 434
    :cond_e
    iget-object v0, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v10, v0, v1, v3}, Lcom/taobao/orange/util/OrangeMonitor;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x6

    .line 436
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v16, v0, v1

    iget-object v1, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v1, v0, v15
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x2

    :try_start_4
    aput-object v21, v0, v1

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v17

    const/4 v3, 0x4

    aput-object v20, v0, v3

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/taobao/orange/sync/BaseRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v13, v12, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v1, 0x2

    .line 439
    :goto_5
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v2}, Lcom/taobao/orange/ConfigCenter;->addFail(Ljava/lang/String;)V

    .line 440
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-direct {v8, v2}, Lcom/taobao/orange/ConfigCenter;->removeLoading(Ljava/lang/String;)V

    .line 441
    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v11, v10, v2, v4, v3}, Lcom/taobao/orange/util/OrangeMonitor;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v2, v1, v15

    invoke-static {v13, v12, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :catch_2
    :goto_6
    return-void

    :cond_10
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 334
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v16, v0, v2

    iget-object v2, v9, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v2, v0, v15

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    iget-object v1, v9, Lcom/taobao/orange/model/NameSpaceDO;->type:Ljava/lang/String;

    aput-object v1, v0, v17

    const-string v1, "loadConfig fail not support type"

    invoke-static {v13, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyListeners(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 523
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "configVersion"

    .line 524
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p3, :cond_1

    .line 526
    iget-object p3, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 527
    iget-object p3, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/aidl/ParcelableConfigListener;

    .line 529
    :try_start_0
    invoke-interface {v1, p1, v0}, Lcom/taobao/orange/aidl/ParcelableConfigListener;->onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 531
    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "ConfigCenter"

    const-string v4, "notifyGlobalListeners"

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 536
    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    monitor-enter v1

    .line 538
    :try_start_1
    iget-object v2, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 539
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 540
    invoke-interface {p3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 542
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    .line 544
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    .line 545
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "namespace"

    aput-object v3, v2, p2

    aput-object p1, v2, v1

    const/4 v1, 0x2

    const-string v3, "args"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v3, "listenerSet.size"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "ConfigCenter"

    const-string v3, "notifyListeners "

    invoke-static {v1, v3, v2}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/aidl/ParcelableConfigListener;

    .line 549
    :try_start_2
    invoke-interface {v1, p1, v0}, Lcom/taobao/orange/aidl/ParcelableConfigListener;->onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 551
    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "ConfigCenter"

    const-string v4, "notifyListeners"

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 542
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public registerListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;Z)V
    .locals 10

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Lcom/taobao/orange/ConfigCenter$5;

    invoke-direct {v1, p0}, Lcom/taobao/orange/ConfigCenter$5;-><init>(Lcom/taobao/orange/ConfigCenter;)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    monitor-exit v0

    return-void

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_3

    .line 466
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {v6}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "ConfigCenter"

    const-string/jumbo v7, "registerListener append"

    .line 468
    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "namespace"

    aput-object v9, v8, v5

    aput-object p1, v8, v6

    const-string/jumbo v9, "size"

    aput-object v9, v8, v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {p3, v7, v8}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_3
    invoke-static {v6}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "ConfigCenter"

    const-string/jumbo v7, "registerListener cover"

    .line 472
    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "namespace"

    aput-object v9, v8, v5

    aput-object p1, v8, v6

    invoke-static {p3, v7, v8}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 475
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object p3, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {p3}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/orange/model/ConfigDO;

    if-eqz p3, :cond_7

    .line 480
    invoke-virtual {p3}, Lcom/taobao/orange/model/ConfigDO;->getCurVersion()Ljava/lang/String;

    move-result-object p3

    .line 481
    invoke-static {v5}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "namespace"

    aput-object v1, v0, v5

    aput-object p1, v0, v6

    const-string/jumbo v1, "version"

    aput-object v1, v0, v4

    aput-object p3, v0, v2

    const-string v1, "ConfigCenter"

    const-string/jumbo v2, "registerListener onConfigUpdate"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_6
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fromCache"

    const-string/jumbo v2, "true"

    .line 486
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "configVersion"

    .line 487
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-interface {p2, p1, v0}, Lcom/taobao/orange/aidl/ParcelableConfigListener;->onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 490
    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "ConfigCenter"

    const-string/jumbo v0, "registerListener"

    invoke-static {p3, v0, p1, p2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 477
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_8
    :goto_2
    return-void
.end method

.method public rematchNamespace(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 886
    new-instance v0, Lcom/taobao/orange/ConfigCenter$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/orange/ConfigCenter$8;-><init>(Lcom/taobao/orange/ConfigCenter;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeFail(Ljava/lang/String;)V
    .locals 6

    .line 822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 827
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConfigCenter"

    const-string/jumbo v3, "removeFail"

    .line 828
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "namespace"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeGlobalListener(Lcom/taobao/orange/OConfigListener;)Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    new-instance v1, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v1, p1}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized retryFailRequests()V
    .locals 10

    monitor-enter p0

    .line 838
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 839
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 840
    :try_start_1
    iget-object v2, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 841
    iget-object v4, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v4, v3}, Lcom/taobao/orange/cache/IndexCache;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 843
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "ConfigCenter"

    const-string/jumbo v4, "retryFailRequests"

    const/4 v5, 0x2

    .line 848
    new-array v6, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "start load retryNamespaces"

    aput-object v7, v6, v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v4, v6}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 850
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/orange/model/NameSpaceDO;

    .line 851
    invoke-virtual {p0, v4}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    goto :goto_1

    .line 853
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string v1, "ConfigCenter"

    const-string/jumbo v4, "retryFailRequests"

    const/4 v6, 0x4

    .line 854
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "finish load retryNamespaces"

    aput-object v7, v6, v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "cost(ms)"

    aput-object v0, v6, v5

    const/4 v0, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v1, v4, v6}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 856
    :cond_3
    invoke-static {v3}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ConfigCenter"

    const-string/jumbo v1, "retryFailRequests no any"

    .line 857
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 860
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 846
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public setGlobalListener(Lcom/taobao/orange/OConfigListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mGlobalListeners:Ljava/util/Set;

    new-instance v1, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v1, p1}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInitListener(Lcom/taobao/orange/inner/OInitListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter;->mInitListener:Lcom/taobao/orange/inner/OInitListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;)V
    .locals 7

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 501
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 502
    invoke-static {p2}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConfigCenter"

    const-string/jumbo v3, "unregisterListener"

    const/4 v4, 0x4

    .line 503
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "namespace"

    aput-object v6, v4, v5

    aput-object p1, v4, p2

    const/4 p1, 0x2

    const-string/jumbo p2, "size"

    aput-object p2, v4, p1

    const/4 p1, 0x3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v2, v3, v4}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterListeners(Ljava/lang/String;)V
    .locals 2

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateIndex(Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;)V
    .locals 9

    monitor-enter p0

    .line 561
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/orange/ConfigCenter;->loadIndex(Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 562
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConfigCenter"

    const-string/jumbo v2, "updateIndex"

    .line 563
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "no need update or update fail index file"

    aput-object v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 565
    :cond_0
    monitor-exit p0

    return-void

    .line 567
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 568
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 569
    iget-object v4, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v4}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 570
    iget-object v4, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 571
    :try_start_2
    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 572
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    :try_start_3
    iget-object v4, p0, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v4, p1}, Lcom/taobao/orange/cache/IndexCache;->getUpdateNameSpaces(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const-string v4, "ConfigCenter"

    const-string/jumbo v5, "updateIndex"

    const/4 v6, 0x2

    .line 574
    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v8, "start load updateNameSpaces"

    aput-object v8, v7, v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v4, v5, v7}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/orange/model/NameSpaceDO;

    .line 576
    invoke-virtual {p0, v5}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v2, "ConfigCenter"

    const-string/jumbo v3, "updateIndex"

    const/4 v7, 0x4

    .line 579
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "finish load updateNameSpaces"

    aput-object v8, v7, v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    const-string p1, "cost(ms)"

    aput-object p1, v7, v6

    const/4 p1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, p1

    invoke-static {v2, v3, v7}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 572
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method updateRandomDelayAckInterval(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 799
    :cond_0
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->hash(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method updateSystemConfig(Ljava/util/Map;)V
    .locals 14

    const-string v0, "ackVips"

    const-string v1, "dcVips"

    const-string v2, "delayAckInterval"

    const-string/jumbo v3, "reportUpdateAck"

    const-string/jumbo v4, "reqRetryNum"

    const-string/jumbo v5, "updateSystemConfig"

    const-string v6, "ConfigCenter"

    const/4 v7, 0x0

    .line 714
    :try_start_0
    iget-object v8, p0, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    const-string v9, "orange"

    invoke-virtual {v8, v9}, Lcom/taobao/orange/cache/ConfigCache;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const/4 v9, 0x2

    .line 715
    invoke-static {v9}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    .line 716
    new-array v10, v10, [Ljava/lang/Object;

    const-string v12, "args"

    aput-object v12, v10, v7

    aput-object p1, v10, v11

    const-string p1, "orangeConfigs"

    aput-object p1, v10, v9

    const/4 p1, 0x3

    aput-object v8, v10, p1

    invoke-static {v6, v5, v10}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v8, :cond_b

    .line 718
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 719
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 720
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 721
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v10, 0x5

    if-le p1, v10, :cond_1

    const/4 p1, 0x5

    .line 722
    :cond_1
    sput p1, Lcom/taobao/orange/GlobalOrange;->reqRetryNum:I

    .line 723
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v4, p1, v7

    sget v4, Lcom/taobao/orange/GlobalOrange;->reqRetryNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    :cond_2
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 728
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v11, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/taobao/orange/GlobalOrange;->reportUpdateAck:Z

    .line 729
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v3, p1, v7

    sget-boolean v3, Lcom/taobao/orange/GlobalOrange;->reportUpdateAck:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    :cond_4
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 734
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 735
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v2, p1, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v12, 0x0

    cmp-long p1, v3, v12

    if-lez p1, :cond_5

    .line 737
    invoke-virtual {p0, v3, v4}, Lcom/taobao/orange/ConfigCenter;->updateRandomDelayAckInterval(J)J

    move-result-wide v2

    sput-wide v2, Lcom/taobao/orange/GlobalOrange;->randomDelayAckInterval:J

    .line 738
    new-array p1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "randomDelayAckInterval"

    aput-object v2, p1, v7

    sget-wide v2, Lcom/taobao/orange/GlobalOrange;->randomDelayAckInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const-string p1, "indexUpdateMode"

    .line 742
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/taobao/orange/OConstant$UPDMODE;->valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;

    move-result-object p1

    sput-object p1, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 745
    new-array p1, v9, [Ljava/lang/Object;

    const-string v2, "indexUpdMode"

    aput-object v2, p1, v7

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v2, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const-string p1, "hosts"

    .line 749
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 751
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 752
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ltz v2, :cond_9

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 754
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 755
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v10, "host"

    .line 756
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 757
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 758
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 761
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 762
    sget-object p1, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 763
    sget-object p1, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 764
    new-array p1, v9, [Ljava/lang/Object;

    const-string v2, "probeHosts"

    aput-object v2, p1, v7

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    aput-object v2, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_9
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 771
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 772
    const-class v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 773
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 774
    sget-object v2, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 775
    sget-object v2, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 776
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v1, p1, v7

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    aput-object v1, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    :cond_a
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 782
    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 783
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 784
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 785
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 786
    new-array p1, v9, [Ljava/lang/Object;

    aput-object v0, p1, v7

    sget-object v0, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    aput-object v0, p1, v11

    invoke-static {v6, v5, p1}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 791
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_b
    :goto_2
    return-void
.end method
