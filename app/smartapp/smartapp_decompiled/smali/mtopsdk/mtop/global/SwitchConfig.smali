.class public Lmtopsdk/mtop/global/SwitchConfig;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfig"

.field public static final authErrorCodeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final config:Lmtopsdk/mtop/global/SwitchConfig;

.field public static final errorMappingMsgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile individualApiLockIntervalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localConfig:Lmtopsdk/common/util/LocalConfig;

.field private static mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

.field private static final remoteConfig:Lmtopsdk/common/util/RemoteConfig;


# instance fields
.field public volatile degradeApiCacheSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile degradeBizErrorMappingApiSet:Ljava/util/Set;
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
    .locals 3

    .line 28
    new-instance v0, Lmtopsdk/mtop/global/SwitchConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SwitchConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    .line 38
    invoke-static {}, Lmtopsdk/common/util/RemoteConfig;->getInstance()Lmtopsdk/common/util/RemoteConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    .line 40
    invoke-static {}, Lmtopsdk/common/util/LocalConfig;->getInstance()Lmtopsdk/common/util/LocalConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->errorMappingMsgMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->authErrorCodeSet:Ljava/util/HashSet;

    .line 70
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->errorMappingMsgMap:Ljava/util/Map;

    const-string v1, "NETWORK_ERROR_MAPPING"

    const-string/jumbo v2, "\u7f51\u7edc\u7adf\u7136\u5d29\u6e83\u4e86"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->errorMappingMsgMap:Ljava/util/Map;

    const-string v1, "FLOW_LIMIT_ERROR_MAPPING"

    const-string/jumbo v2, "\u524d\u65b9\u62e5\u6324\uff0c\u4eb2\u7a0d\u7b49\u518d\u8bd5\u8bd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->errorMappingMsgMap:Ljava/util/Map;

    const-string v1, "SERVICE_ERROR_MAPPING"

    const-string/jumbo v2, "\u670d\u52a1\u7adf\u7136\u51fa\u9519\u4e86"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->authErrorCodeSet:Ljava/util/HashSet;

    const-string v1, "FAIL_SYS_ACCESS_TOKEN_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->authErrorCodeSet:Ljava/util/HashSet;

    const-string v1, "FAIL_SYS_ILLEGAL_ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lmtopsdk/mtop/global/SwitchConfig;->degradeApiCacheSet:Ljava/util/Set;

    .line 57
    iput-object v0, p0, Lmtopsdk/mtop/global/SwitchConfig;->degradeBizErrorMappingApiSet:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SwitchConfig;
    .locals 1

    .line 35
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    return-object v0
.end method

.method public static getMtopConfigListener()Lmtopsdk/common/config/MtopConfigListener;
    .locals 1

    .line 91
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiLockInterval()J
    .locals 2

    .line 152
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-wide v0, v0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J

    return-wide v0
.end method

.method public getGlobalAttackAttackWaitInterval()J
    .locals 2

    .line 161
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-wide v0, v0, Lmtopsdk/common/util/RemoteConfig;->antiAttackWaitInterval:J

    return-wide v0
.end method

.method public getGlobalBizErrorMappingCodeLength()J
    .locals 2

    .line 170
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-wide v0, v0, Lmtopsdk/common/util/RemoteConfig;->bizErrorMappingCodeLength:J

    return-wide v0
.end method

.method public getIndividualApiLockInterval(Ljava/lang/String;)J
    .locals 5

    .line 248
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 251
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v1

    .line 256
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIndividualApiLockInterval]parse individual apiLock interval error.apiKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ---"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.SwitchConfig"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v1
.end method

.method public getIndividualApiLockIntervalMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->individualApiLockIntervalMap:Ljava/util/Map;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 1

    .line 80
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lmtopsdk/common/config/MtopConfigListener;->initConfig(Landroid/content/Context;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isBizErrorCodeMappingOpen()Z
    .locals 1

    .line 105
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableBizErrorCodeMapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableBizErrorCodeMapping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalCacheSwitchOpen()Z
    .locals 1

    .line 190
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    return v0
.end method

.method public isGlobalErrorCodeMappingOpen()Z
    .locals 1

    .line 98
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableErrorCodeMapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableErrorCodeMapping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalSpdySslSwitchOpen()Z
    .locals 1

    .line 131
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1

    .line 112
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalUnitSwitchOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMtopsdkPropertySwitchOpen()Z
    .locals 1

    .line 214
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/LocalConfig;->enableProperty:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->remoteConfig:Lmtopsdk/common/util/RemoteConfig;

    iget-boolean v0, v0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGlobalSpdySslSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 2

    .line 139
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSsl:Z

    .line 140
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setGlobalSpdySslSwitchOpen]set local spdySslSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.SwitchConfig"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 2

    .line 120
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableSpdy:Z

    .line 121
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setGlobalSpdySwitchOpen]set local spdySwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.SwitchConfig"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setGlobalUnitSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableUnit:Z

    .line 202
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setGlobalUnitSwitchOpen]set local unitSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.SwitchConfig"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setMtopConfigListener(Lmtopsdk/common/config/MtopConfigListener;)V
    .locals 0

    .line 86
    sput-object p1, Lmtopsdk/mtop/global/SwitchConfig;->mtopConfigListener:Lmtopsdk/common/config/MtopConfigListener;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setMtopsdkPropertySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 2

    .line 222
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->localConfig:Lmtopsdk/common/util/LocalConfig;

    iput-boolean p1, v0, Lmtopsdk/common/util/LocalConfig;->enableProperty:Z

    .line 223
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setMtopsdkPropertySwitchOpen]set local mtopsdkPropertySwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.SwitchConfig"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
