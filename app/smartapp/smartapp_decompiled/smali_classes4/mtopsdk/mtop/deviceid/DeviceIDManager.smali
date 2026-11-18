.class public Lmtopsdk/mtop/deviceid/DeviceIDManager;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    }
.end annotation


# static fields
.field private static final CREATED_NO:Ljava/lang/String; = "0"

.field private static final CREATED_YES:Ljava/lang/String; = "1"

.field private static final DEVICEID_CREATED_KEY:Ljava/lang/String; = "deviceId_created"

.field private static final DEVICEID_KEY:Ljava/lang/String; = "deviceId"

.field private static final MTOPSDK_DEVICEID_STORE_PREFIX:Ljava/lang/String; = "MTOPSDK_DEVICEID_STORE."

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DeviceIDManager"

.field private static deviceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;
    .locals 2

    .line 46
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-direct {v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;-><init>()V

    sput-object v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    return-object v0
.end method

.method private saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "MtopConfigStore"

    const-string v5, "deviceId"

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "MtopConfigStore"

    const-string v5, "deviceId_created"

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    sget-object v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 250
    :cond_1
    iput-object p3, v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 251
    iput-boolean v2, v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mCreated:Z

    .line 252
    sget-object v2, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[saveDeviceIdToStore] appkey="

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; deviceId="

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mCreated="

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtopsdk.DeviceIDManager"

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 171
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    const-string v1, "0"

    .line 172
    invoke-direct {p0, p1, p2, v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "mtopsdk.DeviceIDManager"

    if-eqz v0, :cond_0

    const-string p1, "appkey is null,get DeviceId error"

    .line 65
    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mLastFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDeviceID] appKey="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " return mLastFuture"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 79
    :cond_2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;

    invoke-direct {v1, p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 99
    new-instance p1, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;

    invoke-direct {p1, p0, v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/FutureTask;)V

    invoke-static {p1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    new-instance p1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    invoke-direct {p1, p0, v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 107
    sget-object v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 118
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object p1, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 126
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MtopConfigStore"

    const-string v5, "deviceId"

    invoke-virtual {v1, p1, v4, v2, v5}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "deviceId_created"

    invoke-virtual {v2, p1, v4, v3, v5}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    new-instance p1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    invoke-direct {p1, p0, v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 130
    iput-object v1, p1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p1, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mCreated:Z

    .line 132
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getLocalDeviceID]get DeviceId from store appkey="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; deviceId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mtopsdk.DeviceIDManager"

    invoke-static {p2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "utdid"

    .line 149
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "INNER"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v2, v3}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmtopsdk/mtop/intf/Mtop;->registerUtdid(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    return-object v0

    :cond_0
    if-nez p1, :cond_2

    .line 155
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mtopsdk.DeviceIDManager"

    const-string v0, "[getLocalUtdid] Context is null,get Utdid failed"

    .line 156
    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v3

    .line 160
    :cond_2
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {v2, v3}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/intf/Mtop;->registerUtdid(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    return-object p1
.end method

.method getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 181
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    const-string v1, "mtopsdk.DeviceIDManager"

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRemoteDeviceID] called!appkey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    const-string p1, "[getRemoteDeviceID]device_global_id is blank"

    .line 200
    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 203
    :cond_4
    new-instance v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;-><init>()V

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    const/4 v4, 0x1

    .line 205
    iput-boolean v4, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    .line 206
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v4, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    .line 207
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 208
    iput-object v2, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 209
    iput-object v3, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 210
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 211
    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    const-string v2, "INNER"

    .line 214
    invoke-static {v2, v5}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    const/16 v2, 0x1003

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 218
    :try_start_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    const-class v2, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponse;

    invoke-static {v0, v2}, Lmtopsdk/mtop/util/MtopConvert;->convertJsonToOutputDO([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/BaseOutDo;

    if-eqz v0, :cond_6

    .line 220
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;

    .line 221
    iget-object v0, v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;->device_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :try_start_1
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "1"

    .line 223
    invoke-direct {p0, p1, p2, v0, v2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move-object v5, v0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 227
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getRemoteDeviceID] error ---"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v5
.end method
