.class Lanet/channel/strategy/StrategyInfoHolder;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
    }
.end annotation


# static fields
.field static final CONFIG_FILE:Ljava/lang/String; = "StrategyConfig"

.field static final MAX_TABLE_NUM_IN_MEM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "awcn.StrategyInfoHolder"


# instance fields
.field private final loadingFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final localDnsStrategyTable:Lanet/channel/strategy/LocalDnsStrategyTable;

.field volatile strategyConfig:Lanet/channel/strategy/StrategyConfig;

.field strategyTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uniqueId:Ljava/lang/String;

.field private final unknownStrategyTable:Lanet/channel/strategy/StrategyTable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    .line 34
    new-instance v0, Lanet/channel/strategy/LocalDnsStrategyTable;

    invoke-direct {v0}, Lanet/channel/strategy/LocalDnsStrategyTable;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->localDnsStrategyTable:Lanet/channel/strategy/LocalDnsStrategyTable;

    .line 37
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->unknownStrategyTable:Lanet/channel/strategy/StrategyTable;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->init()V

    .line 50
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->restore()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 54
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->checkInit()V

    throw v0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->checkInit()V

    return-void
.end method

.method private checkInit()V
    .locals 2

    .line 68
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    goto :goto_0

    .line 72
    :cond_0
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lanet/channel/strategy/StrategyConfig;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyConfig;-><init>()V

    .line 75
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyConfig;->checkInit()V

    .line 76
    invoke-virtual {v0, p0}, Lanet/channel/strategy/StrategyConfig;->setHolder(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 77
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    .line 79
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .locals 2

    .line 215
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 1

    .line 63
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 64
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyInfoHolder;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static newInstance()Lanet/channel/strategy/StrategyInfoHolder;
    .locals 1

    .line 44
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder;-><init>()V

    return-object v0
.end method

.method private restore()V
    .locals 4

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "awcn.StrategyInfoHolder"

    const-string/jumbo v3, "restore"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    .line 86
    invoke-static {}, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 89
    invoke-virtual {p0, v0, v2}, Lanet/channel/strategy/StrategyInfoHolder;->loadFile(Ljava/lang/String;Z)V

    :cond_0
    const-string v2, "StrategyConfig"

    .line 92
    invoke-static {v2, v1}, Lanet/channel/strategy/StrategySerializeHelper;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyConfig;

    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    .line 96
    :cond_1
    new-instance v1, Lanet/channel/strategy/StrategyInfoHolder$1;

    invoke-direct {v1, p0, v0}, Lanet/channel/strategy/StrategyInfoHolder$1;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/AmdcThreadPoolExecutor;->submitTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 0

    .line 59
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;
    .locals 4

    .line 197
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->unknownStrategyTable:Lanet/channel/strategy/StrategyTable;

    .line 198
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected loadFile(Ljava/lang/String;Z)V
    .locals 6

    .line 146
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Lanet/channel/statist/StrategyStatObject;

    invoke-direct {v0, v1}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 156
    iput-object p1, v0, Lanet/channel/statist/StrategyStatObject;->readStrategyFileId:Ljava/lang/String;

    .line 158
    :cond_0
    invoke-static {p1, v0}, Lanet/channel/strategy/StrategySerializeHelper;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable;->checkInit()V

    .line 161
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    monitor-enter v3

    .line 162
    :try_start_1
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    iget-object v5, v2, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 165
    :cond_1
    :goto_0
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    monitor-enter v3

    .line 166
    :try_start_2
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->loadingFiles:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_3

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 171
    :cond_2
    iput v1, v0, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 172
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    invoke-interface {p1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 167
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 150
    :cond_4
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .line 239
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyInfoHolder;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder;->uniqueId:Ljava/lang/String;

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lanet/channel/strategy/StrategyInfoHolder$2;

    invoke-direct {v1, p0, p1}, Lanet/channel/strategy/StrategyInfoHolder$2;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/AmdcThreadPoolExecutor;->submitTask(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method saveData()V
    .locals 4

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyTableMap:Ljava/util/Map;

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

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    .line 182
    iget-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    if-eqz v2, :cond_0

    .line 183
    new-instance v2, Lanet/channel/statist/StrategyStatObject;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 184
    iget-object v3, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    iput-object v3, v2, Lanet/channel/statist/StrategyStatObject;->writeStrategyFileId:Ljava/lang/String;

    .line 185
    iget-object v3, v1, Lanet/channel/strategy/StrategyTable;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lanet/channel/strategy/StrategySerializeHelper;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    const/4 v2, 0x0

    .line 186
    iput-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->isChanged:Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    const-string v1, "StrategyConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/StrategySerializeHelper;->persist(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 2

    .line 228
    iget v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->fcLevel:I

    if-eqz v0, :cond_0

    .line 229
    iget v0, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->fcLevel:I

    iget v1, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->fcTime:I

    invoke-static {v0, v1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->updateAmdcLimit(II)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V

    .line 234
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->update(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V

    return-void
.end method
