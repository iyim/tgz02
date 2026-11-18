.class public Lanet/channel/quic/QuicConnectionDetector;
.super Ljava/lang/Object;
.source "QuicConnectionDetector.java"


# static fields
.field private static final DETECT_VALID_TIME:J = 0x1b7740L

.field private static final SP_QUIC_DETECTOR_HOST:Ljava/lang/String; = "quic_detector_host"

.field private static final TAG:Ljava/lang/String; = "awcn.QuicConnDetector"

.field private static detectedNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static host:Ljava/lang/String;

.field private static isCertInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static quicFilter:Lanet/channel/strategy/IStrategyFilter;

.field private static seq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/quic/QuicConnectionDetector;->detectedNetworks:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanet/channel/quic/QuicConnectionDetector;->isCertInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Lanet/channel/quic/QuicConnectionDetector$1;

    invoke-direct {v0}, Lanet/channel/quic/QuicConnectionDetector$1;-><init>()V

    sput-object v0, Lanet/channel/quic/QuicConnectionDetector;->quicFilter:Lanet/channel/strategy/IStrategyFilter;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/quic/QuicConnectionDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 36
    sget-object v0, Lanet/channel/quic/QuicConnectionDetector;->isCertInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lanet/channel/quic/QuicConnectionDetector;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    sput-object p0, Lanet/channel/quic/QuicConnectionDetector;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 36
    sget-object v0, Lanet/channel/quic/QuicConnectionDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static registerListener()V
    .locals 4

    const/4 v0, 0x0

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.QuicConnDetector"

    const-string/jumbo v2, "registerListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "quic_detector_host"

    const-string v2, ""

    .line 124
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lanet/channel/quic/QuicConnectionDetector;->host:Ljava/lang/String;

    .line 126
    new-instance v1, Lanet/channel/quic/QuicConnectionDetector$3;

    invoke-direct {v1}, Lanet/channel/quic/QuicConnectionDetector$3;-><init>()V

    invoke-static {v1}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 133
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v1

    new-instance v2, Lanet/channel/quic/QuicConnectionDetector$4;

    invoke-direct {v2, v0}, Lanet/channel/quic/QuicConnectionDetector$4;-><init>(Landroid/content/SharedPreferences;)V

    invoke-interface {v1, v2}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startDetect(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 12

    .line 64
    invoke-static {}, Lanet/channel/AwcnConfig;->isQuicEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "startDetect"

    const-string v5, "awcn.QuicConnDetector"

    if-nez v0, :cond_0

    .line 65
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "quic global config close."

    aput-object v0, p0, v1

    invoke-static {v5, v4, v3, p0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    sget-object v0, Lanet/channel/quic/QuicConnectionDetector;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "host is null"

    aput-object v0, p0, v1

    invoke-static {v5, v4, v3, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    sget-object v0, Lanet/channel/quic/QuicConnectionDetector;->detectedNetworks:Ljava/util/HashMap;

    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    cmp-long v0, v8, v6

    if-lez v0, :cond_3

    return-void

    .line 84
    :cond_3
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    sget-object v8, Lanet/channel/quic/QuicConnectionDetector;->host:Ljava/lang/String;

    sget-object v9, Lanet/channel/quic/QuicConnectionDetector;->quicFilter:Lanet/channel/strategy/IStrategyFilter;

    invoke-interface {v0, v8, v9}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "quic strategy is null."

    aput-object v0, p0, v1

    invoke-static {v5, v4, v3, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_4
    sget-object v1, Lanet/channel/quic/QuicConnectionDetector;->detectedNetworks:Ljava/util/HashMap;

    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p0, Lanet/channel/quic/QuicConnectionDetector$2;

    invoke-direct {p0, v0}, Lanet/channel/quic/QuicConnectionDetector$2;-><init>(Ljava/util/List;)V

    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {p0, v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method
