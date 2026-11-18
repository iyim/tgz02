.class public Lanet/channel/TaobaoNetworkAdapter;
.super Ljava/lang/Object;
.source "TaobaoNetworkAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.TaobaoNetworkAdapter"

.field public static isInited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "0rtt"

    const-string v1, "http2"

    const-string v2, "isNextLaunch"

    .line 42
    sget-object v3, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    new-instance v3, Lanet/channel/log/TLogAdapter;

    invoke-direct {v3}, Lanet/channel/log/TLogAdapter;-><init>()V

    invoke-static {v3}, Lanet/channel/util/ALog;->setLog(Lanet/channel/util/ALog$ILog;)V

    .line 48
    new-instance v3, Lanet/channel/config/OrangeConfigImpl;

    invoke-direct {v3}, Lanet/channel/config/OrangeConfigImpl;-><init>()V

    invoke-static {v3}, Lanetwork/channel/config/NetworkConfigCenter;->setRemoteConfig(Lanetwork/channel/config/IRemoteConfig;)V

    .line 51
    new-instance v3, Lanet/channel/appmonitor/DefaultAppMonitor;

    invoke-direct {v3}, Lanet/channel/appmonitor/DefaultAppMonitor;-><init>()V

    invoke-static {v3}, Lanet/channel/appmonitor/AppMonitor;->setInstance(Lanet/channel/appmonitor/IAppMonitor;)V

    .line 54
    new-instance v3, Lanet/channel/analysis/DefaultNetworkAnalysis;

    invoke-direct {v3}, Lanet/channel/analysis/DefaultNetworkAnalysis;-><init>()V

    invoke-static {v3}, Lanet/channel/flow/NetworkAnalysis;->setInstance(Lanet/channel/flow/INetworkAnalysis;)V

    .line 57
    new-instance v3, Lanet/channel/analysis/DefaultFullTraceAnalysis;

    invoke-direct {v3}, Lanet/channel/analysis/DefaultFullTraceAnalysis;-><init>()V

    invoke-static {v3}, Lanet/channel/fulltrace/AnalysisFactory;->setInstance(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    .line 60
    new-instance v3, Lanet/channel/TaobaoNetworkAdapter$1;

    invoke-direct {v3}, Lanet/channel/TaobaoNetworkAdapter$1;-><init>()V

    sget v6, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->NORMAL:I

    invoke-static {v3, v6}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_3

    :try_start_0
    const-string v3, "outline"

    .line 81
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    const-string v3, "awcn.TaobaoNetworkAdapter"

    const-string/jumbo v6, "taobao speed mode enable."

    const/4 v7, 0x0

    .line 83
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "tbspeed"

    const-string/jumbo v6, "speed"

    .line 84
    invoke-static {v3, v6}, Lanet/channel/GlobalAppRuntimeInfo;->addBucketInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isRemoteNetworkServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {p0, v5}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->initRemoteGetterAndWait(Landroid/content/Context;Z)V

    .line 88
    :cond_0
    invoke-static {v4}, Lanet/channel/AwcnConfig;->setAsyncLoadStrategyEnable(Z)V

    .line 93
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "NEXT_LAUNCH_FORBID"

    .line 95
    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "true"

    .line 97
    invoke-static {v2, p0}, Lanet/channel/GlobalAppRuntimeInfo;->addBucketInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 100
    :goto_0
    invoke-static {p0}, Lanet/channel/AwcnConfig;->setTbNextLaunch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    const-string p0, "process"

    .line 107
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "com.taobao.taobao"

    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "onlineAppKey"

    .line 110
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "guide-acs.m.taobao.com"

    const-string v2, "acs"

    .line 111
    invoke-static {v1, v0, v2}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    invoke-static {p1, p0, v2, v4}, Lanet/channel/TaobaoNetworkAdapter;->registerPresetSession(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;Z)V

    const-string p1, "cdn"

    .line 112
    invoke-static {v1, v0, p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    const-string v0, "gw.alicdn.com"

    .line 113
    invoke-static {v0, p0, p1, v5}, Lanet/channel/TaobaoNetworkAdapter;->registerPresetSession(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;Z)V

    const-string v0, "dorangesource.alicdn.com"

    .line 114
    invoke-static {v0, p0, p1, v5}, Lanet/channel/TaobaoNetworkAdapter;->registerPresetSession(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;Z)V

    const-string v0, "ossgw.alicdn.com"

    .line 115
    invoke-static {v0, p0, p1, v5}, Lanet/channel/TaobaoNetworkAdapter;->registerPresetSession(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method

.method private static registerPresetSession(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;Z)V
    .locals 7

    .line 124
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p3

    .line 126
    invoke-static/range {v1 .. v6}, Lanet/channel/SessionInfo;->create(Ljava/lang/String;ZZLanet/channel/IAuth;Lanet/channel/heartbeat/IHeartbeat;Lanet/channel/DataFrameCb;)Lanet/channel/SessionInfo;

    move-result-object p0

    .line 127
    new-instance p2, Lanet/channel/Config$Builder;

    invoke-direct {p2}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object p1

    sget-object p2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    invoke-virtual {p1, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lanet/channel/SessionCenter;->registerSessionInfo(Lanet/channel/SessionInfo;)V

    :cond_0
    return-void
.end method
