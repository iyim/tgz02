.class public Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;
.super Ljava/lang/Object;
.source "TokenStorage.java"


# static fields
.field private static apdid:Ljava/lang/String; = ""

.field private static deviceInfoHash:Ljava/lang/String; = ""

.field private static tid:Ljava/lang/String; = ""

.field private static timestamp:Ljava/lang/String; = ""

.field private static tokenCacheMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static utdid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getApdid()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->apdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getApdidStorageModelV4()Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
    .locals 8

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 94
    :try_start_0
    new-instance v7, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->apdid:Ljava/lang/String;

    sget-object v3, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->deviceInfoHash:Ljava/lang/String;

    sget-object v4, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->timestamp:Ljava/lang/String;

    sget-object v5, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tid:Ljava/lang/String;

    sget-object v6, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->utdid:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getApdidToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apdidTokenCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 66
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 67
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDeviceInfoHash()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->deviceInfoHash:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTid()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeStamp()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->timestamp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUtdid()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->utdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isTokenValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    const-wide/32 v1, 0x5265c00

    .line 50
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 51
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getApdidValidTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr v3, p0

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    const/4 p0, 0x1

    .line 53
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    :try_start_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 p0, 0x0

    .line 58
    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized printTokenStorage()V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 45
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static resetApdid()V
    .locals 1

    .line 148
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    .line 149
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->apdid:Ljava/lang/String;

    .line 150
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->deviceInfoHash:Ljava/lang/String;

    .line 151
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tid:Ljava/lang/String;

    .line 152
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->utdid:Ljava/lang/String;

    .line 153
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->timestamp:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized saveApdidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apdidTokenCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tokenCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setApdid(Ljava/lang/String;)V
    .locals 0

    .line 109
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->apdid:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDeviceInfoHash(Ljava/lang/String;)V
    .locals 0

    .line 113
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->deviceInfoHash:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTid(Ljava/lang/String;)V
    .locals 0

    .line 121
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->tid:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 117
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->timestamp:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 125
    sput-object p0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->utdid:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized updateByApdidStorageModel(Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;)V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setApdid(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setDeviceInfoHash(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getTimestamp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTimestamp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 144
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized updateByApdidStorageModelV4(Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;)V
    .locals 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setApdid(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setDeviceInfoHash(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTid(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setUtdid(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getTimestamp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTimestamp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 136
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method
