.class public Lmtopsdk/mtop/intf/Mtop;
.super Ljava/lang/Object;
.source "Mtop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/intf/Mtop$Id;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.Mtop"

.field protected static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/intf/Mtop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final initLock:[B

.field final initTask:Lmtopsdk/mtop/global/init/IMtopInitTask;

.field volatile instanceId:Ljava/lang/String;

.field private volatile isInit:Z

.field volatile isInited:Z

.field final mtopConfig:Lmtopsdk/mtop/global/MtopConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/intf/Mtop;->instanceMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;Lmtopsdk/mtop/global/MtopConfig;)V
    .locals 2
    .param p2    # Lmtopsdk/mtop/global/MtopConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    .line 88
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    .line 93
    new-array v0, v0, [B

    iput-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    .line 97
    iput-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    .line 99
    invoke-static {p1}, Lmtopsdk/mtop/global/init/MtopInitTaskFactory;->getMtopInitTask(Ljava/lang/String;)Lmtopsdk/mtop/global/init/IMtopInitTask;

    move-result-object p2

    iput-object p2, p0, Lmtopsdk/mtop/intf/Mtop;->initTask:Lmtopsdk/mtop/global/init/IMtopInitTask;

    .line 100
    iget-object p2, p0, Lmtopsdk/mtop/intf/Mtop;->initTask:Lmtopsdk/mtop/global/init/IMtopInitTask;

    if-eqz p2, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMtopInitTask is null,instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 201
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "mtopsdk.Mtop"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [init] The Parameter context can not be null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 208
    :cond_1
    :try_start_2
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mtopsdk.Mtop"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [init] context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ttid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    .line 213
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 214
    iget-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iput-object p2, p1, Lmtopsdk/mtop/global/MtopConfig;->ttid:Ljava/lang/String;

    .line 218
    :cond_3
    new-instance p1, Lmtopsdk/mtop/intf/Mtop$1;

    invoke-direct {p1, p0}, Lmtopsdk/mtop/intf/Mtop$1;-><init>(Lmtopsdk/mtop/intf/Mtop;)V

    invoke-static {p1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-static {v0, p0, v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-static {v0, p0, p1}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Ljava/lang/String;Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 134
    invoke-static {p0, p1, v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "INNER"

    .line 148
    :goto_0
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_3

    .line 151
    const-class v1, Lmtopsdk/mtop/intf/Mtop;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_2

    .line 154
    sget-object v0, Lmtopsdk/mtop/intf/MtopSetting;->mtopConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/global/MtopConfig;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lmtopsdk/mtop/global/MtopConfig;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/global/MtopConfig;-><init>(Ljava/lang/String;)V

    .line 158
    :cond_1
    new-instance v2, Lmtopsdk/mtop/intf/Mtop;

    invoke-direct {v2, p0, v0}, Lmtopsdk/mtop/intf/Mtop;-><init>(Ljava/lang/String;Lmtopsdk/mtop/global/MtopConfig;)V

    .line 159
    iput-object v2, v0, Lmtopsdk/mtop/global/MtopConfig;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 160
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 162
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 165
    :cond_3
    :goto_1
    iget-boolean p0, v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    if-nez p0, :cond_4

    .line 166
    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/Mtop;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static setAppKeyIndex(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {p0, p1}, Lmtopsdk/mtop/intf/MtopSetting;->setAppKeyIndex(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    invoke-static {p0}, Lmtopsdk/mtop/intf/MtopSetting;->setAppVersion(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    invoke-static {p0, p1, p2}, Lmtopsdk/mtop/intf/MtopSetting;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSecurityAppKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    invoke-static {p0}, Lmtopsdk/mtop/intf/MtopSetting;->setSecurityAppKey(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 684
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 694
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public checkMtopSDKInit()Z
    .locals 5

    .line 350
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    if-eqz v0, :cond_0

    .line 351
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    monitor-enter v0

    .line 355
    :try_start_0
    iget-boolean v1, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    if-nez v1, :cond_1

    .line 356
    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop;->initLock:[B

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 357
    iget-boolean v1, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    if-nez v1, :cond_1

    const-string v1, "mtopsdk.Mtop"

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [checkMtopSDKInit]Didn\'t call Mtop.instance(...),please execute global init."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "mtopsdk.Mtop"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [checkMtopSDKInit] wait Mtop initLock failed---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    return v0

    .line 364
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 600
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    const-string v1, "deviceId"

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;
    .locals 1

    .line 190
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    return-object v0
.end method

.method public getMultiAccountSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 569
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DEFAULT"

    :cond_0
    invoke-static {v0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sid"

    invoke-static {p1, v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMultiAccountUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 586
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DEFAULT"

    :cond_0
    invoke-static {v0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 2

    .line 593
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "ttid"

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "utdid"

    .line 607
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    return v0
.end method

.method public logSwitch(Z)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .line 672
    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    return-object p0
.end method

.method public logout()Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/Mtop;->logoutMultiAccountSession(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    return-object v0
.end method

.method public logoutMultiAccountSession(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 496
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DEFAULT"

    :cond_0
    invoke-static {v0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sid"

    .line 498
    invoke-static {p1, v0}, Lmtopsdk/xstate/XState;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "uid"

    .line 499
    invoke-static {p1, v0}, Lmtopsdk/xstate/XState;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [logout] remove sessionInfo succeed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.Mtop"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    if-eqz p1, :cond_2

    .line 507
    iget-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmtopsdk/mtop/network/NetworkPropertyService;->setUserId(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public registerDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 2

    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iput-object p1, v0, Lmtopsdk/mtop/global/MtopConfig;->deviceId:Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    const-string v1, "deviceId"

    invoke-static {v0, v1, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public registerMultiAccountSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 470
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DEFAULT"

    :cond_0
    invoke-static {v0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sid"

    .line 472
    invoke-static {p1, v0, p2}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uid"

    .line 473
    invoke-static {p1, v0, p3}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [registerSessionInfo]register sessionInfo succeed: sid="

    .line 477
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",uid="

    .line 478
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mtopsdk.Mtop"

    invoke-static {p2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    if-eqz p1, :cond_2

    .line 482
    iget-object p1, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    invoke-interface {p1, p3}, Lmtopsdk/mtop/network/NetworkPropertyService;->setUserId(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, v0, p1, p2}, Lmtopsdk/mtop/intf/Mtop;->registerMultiAccountSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p1

    return-object p1
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    .line 387
    invoke-virtual {p0, p2, p1, p3}, Lmtopsdk/mtop/intf/Mtop;->registerMultiAccountSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p1

    return-object p1
.end method

.method public registerTtid(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 2

    if-eqz p1, :cond_0

    .line 519
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iput-object p1, v0, Lmtopsdk/mtop/global/MtopConfig;->ttid:Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    const-string/jumbo v1, "ttid"

    invoke-static {v0, v1, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    invoke-interface {v0, p1}, Lmtopsdk/mtop/network/NetworkPropertyService;->setTtid(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public registerUtdid(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    if-eqz p1, :cond_0

    .line 535
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iput-object p1, v0, Lmtopsdk/mtop/global/MtopConfig;->utdid:Ljava/lang/String;

    const-string/jumbo v0, "utdid"

    .line 536
    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public removeCacheBlock(Ljava/lang/String;)Z
    .locals 1

    .line 630
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->cacheImpl:Lanetwork/network/cache/Cache;

    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0, p1}, Lanetwork/network/cache/Cache;->remove(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 655
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[removeCacheItem] remove CacheItem failed,invalid cacheKey="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mtopsdk.Mtop"

    invoke-static {p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 660
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->cacheImpl:Lanetwork/network/cache/Cache;

    if-eqz v0, :cond_1

    .line 661
    invoke-interface {v0, p1, p2}, Lanetwork/network/cache/Cache;->remove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setCoordinates(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    const-string v0, "lng"

    .line 618
    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lat"

    .line 619
    invoke-static {p1, p2}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;
    .locals 4

    if-eqz p1, :cond_3

    .line 296
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/common/util/MtopUtils;->isApkDebug(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "mtopsdk.Mtop"

    if-nez v0, :cond_1

    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [switchEnvMode]release package can switch environment only once!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 305
    :cond_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [switchEnvMode]MtopSDK switchEnvMode called.envMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    new-instance v0, Lmtopsdk/mtop/intf/Mtop$2;

    invoke-direct {v0, p0, p1}, Lmtopsdk/mtop/intf/Mtop$2;-><init>(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 340
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_0
    return-object p0
.end method

.method public unInit()V
    .locals 2

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInited:Z

    .line 258
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    .line 259
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/mtop/intf/Mtop;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[unInit] MTOPSDK unInit called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtopsdk.Mtop"

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unintallCacheBlock(Ljava/lang/String;)Z
    .locals 1

    .line 642
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->cacheImpl:Lanetwork/network/cache/Cache;

    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, p1}, Lanetwork/network/cache/Cache;->uninstall(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method updateAppKeyIndex()V
    .locals 2

    .line 269
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    sget-object v1, Lmtopsdk/mtop/intf/Mtop$3;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget v1, v0, Lmtopsdk/mtop/global/MtopConfig;->dailyAppkeyIndex:I

    iput v1, v0, Lmtopsdk/mtop/global/MtopConfig;->appKeyIndex:I

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/intf/Mtop;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget v1, v0, Lmtopsdk/mtop/global/MtopConfig;->onlineAppKeyIndex:I

    iput v1, v0, Lmtopsdk/mtop/global/MtopConfig;->appKeyIndex:I

    :goto_0
    return-void
.end method
