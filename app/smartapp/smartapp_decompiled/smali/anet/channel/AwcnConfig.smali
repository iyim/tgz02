.class public Lanet/channel/AwcnConfig;
.super Ljava/lang/Object;
.source "AwcnConfig.java"


# static fields
.field public static final NEXT_LAUNCH_FORBID:Ljava/lang/String; = "NEXT_LAUNCH_FORBID"

.field private static volatile ipv6BlackListEnable:Z = true

.field private static volatile ipv6BlackListTtl:J = 0x2932e00L

.field private static volatile ipv6Enable:Z = true

.field private static volatile isAccsSessionCreateForbiddenInBg:Z = false

.field private static isAppLifeCycleListenerEnable:Z = true

.field private static isAsyncLoadStrategyEnable:Z = false

.field private static volatile isHorseRaceEnable:Z = true

.field private static volatile isHttpsSniEnable:Z = true

.field private static volatile isIdleSessionCloseEnable:Z = false

.field private static volatile isQuicEnable:Z = false

.field private static volatile isTbNextLaunch:Z = false

.field private static volatile isTnetHeaderCacheEnable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIpv6BlackListTtl()J
    .locals 2

    .line 130
    sget-wide v0, Lanet/channel/AwcnConfig;->ipv6BlackListTtl:J

    return-wide v0
.end method

.method public static isAccsSessionCreateForbiddenInBg()Z
    .locals 1

    .line 32
    sget-boolean v0, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg:Z

    return v0
.end method

.method public static isAppLifeCycleListenerEnable()Z
    .locals 1

    .line 138
    sget-boolean v0, Lanet/channel/AwcnConfig;->isAppLifeCycleListenerEnable:Z

    return v0
.end method

.method public static isAsyncLoadStrategyEnable()Z
    .locals 1

    .line 146
    sget-boolean v0, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable:Z

    return v0
.end method

.method public static isHorseRaceEnable()Z
    .locals 1

    .line 48
    sget-boolean v0, Lanet/channel/AwcnConfig;->isHorseRaceEnable:Z

    return v0
.end method

.method public static isHttpsSniEnable()Z
    .locals 1

    .line 44
    sget-boolean v0, Lanet/channel/AwcnConfig;->isHttpsSniEnable:Z

    return v0
.end method

.method public static isIdleSessionCloseEnable()Z
    .locals 1

    .line 76
    sget-boolean v0, Lanet/channel/AwcnConfig;->isIdleSessionCloseEnable:Z

    return v0
.end method

.method public static isIpv6BlackListEnable()Z
    .locals 1

    .line 122
    sget-boolean v0, Lanet/channel/AwcnConfig;->ipv6BlackListEnable:Z

    return v0
.end method

.method public static isIpv6Enable()Z
    .locals 1

    .line 114
    sget-boolean v0, Lanet/channel/AwcnConfig;->ipv6Enable:Z

    return v0
.end method

.method public static isQuicEnable()Z
    .locals 1

    .line 68
    sget-boolean v0, Lanet/channel/AwcnConfig;->isQuicEnable:Z

    return v0
.end method

.method public static isTbNextLaunch()Z
    .locals 1

    .line 158
    sget-boolean v0, Lanet/channel/AwcnConfig;->isTbNextLaunch:Z

    return v0
.end method

.method public static isTnetHeaderCacheEnable()Z
    .locals 1

    .line 56
    sget-boolean v0, Lanet/channel/AwcnConfig;->isTnetHeaderCacheEnable:Z

    return v0
.end method

.method public static registerPresetSessions(Ljava/lang/String;)V
    .locals 10

    .line 80
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 88
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_4

    .line 91
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "host"

    .line 92
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Lanet/channel/strategy/utils/Utils;->checkHostValidAndNotIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "protocol"

    .line 96
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "rtt"

    .line 97
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "publicKey"

    .line 98
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v7

    invoke-static {v3, v5, v6}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    const-string v3, "isKeepAlive"

    .line 101
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 103
    invoke-static/range {v4 .. v9}, Lanet/channel/SessionInfo;->create(Ljava/lang/String;ZZLanet/channel/IAuth;Lanet/channel/heartbeat/IHeartbeat;Lanet/channel/DataFrameCb;)Lanet/channel/SessionInfo;

    move-result-object v2

    .line 104
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lanet/channel/SessionCenter;->registerSessionInfo(Lanet/channel/SessionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method public static setAccsSessionCreateForbiddenInBg(Z)V
    .locals 0

    .line 36
    sput-boolean p0, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setAppLifeCycleListenerEnable(Z)V
    .locals 0

    .line 142
    sput-boolean p0, Lanet/channel/AwcnConfig;->isAppLifeCycleListenerEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setAsyncLoadStrategyEnable(Z)V
    .locals 0

    .line 150
    sput-boolean p0, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHorseRaceEnable(Z)V
    .locals 0

    .line 52
    sput-boolean p0, Lanet/channel/AwcnConfig;->isHorseRaceEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHttpsSniEnable(Z)V
    .locals 0

    .line 40
    sput-boolean p0, Lanet/channel/AwcnConfig;->isHttpsSniEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIdleSessionCloseEnable(Z)V
    .locals 0

    .line 72
    sput-boolean p0, Lanet/channel/AwcnConfig;->isIdleSessionCloseEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIpv6BlackListEnable(Z)V
    .locals 0

    .line 126
    sput-boolean p0, Lanet/channel/AwcnConfig;->ipv6BlackListEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIpv6BlackListTtl(J)V
    .locals 0

    .line 134
    sput-wide p0, Lanet/channel/AwcnConfig;->ipv6BlackListTtl:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIpv6Enable(Z)V
    .locals 0

    .line 118
    sput-boolean p0, Lanet/channel/AwcnConfig;->ipv6Enable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setQuicEnable(Z)V
    .locals 0

    .line 64
    sput-boolean p0, Lanet/channel/AwcnConfig;->isQuicEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTbNextLaunch(Z)V
    .locals 0

    .line 166
    sput-boolean p0, Lanet/channel/AwcnConfig;->isTbNextLaunch:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTnetHeaderCacheEnable(Z)V
    .locals 0

    .line 60
    sput-boolean p0, Lanet/channel/AwcnConfig;->isTnetHeaderCacheEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
