.class public Lmtopsdk/xstate/XState;
.super Ljava/lang/Object;
.source "XState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XState"

.field private static asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmtopsdk/common/util/AsyncServiceBinder<",
            "Lmtopsdk/xstate/aidl/IXState;",
            ">;"
        }
    .end annotation
.end field

.field private static isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static volatile isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final localMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/xstate/XState;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lmtopsdk/xstate/XState;->mContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkBindAndRetryAsyncBind()Z
    .locals 3

    .line 306
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 312
    :cond_1
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    sget-object v2, Lmtopsdk/xstate/XState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lmtopsdk/common/util/AsyncServiceBinder;->asyncBind(Landroid/content/Context;)V

    return v1
.end method

.method public static getLat()Ljava/lang/String;
    .locals 1

    const-string v0, "lat"

    .line 121
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLng()Ljava/lang/String;
    .locals 1

    const-string v0, "lng"

    .line 125
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkQuality()Ljava/lang/String;
    .locals 1

    const-string v0, "nq"

    .line 129
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    const-string v0, "netType"

    .line 133
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeOffset()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "t_offset"

    .line 117
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 165
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    :cond_1
    invoke-static {}, Lmtopsdk/xstate/XState;->checkBindAndRetryAsyncBind()Z

    move-result p0

    const-string v0, "[getValue]Attention :Use XState Local Mode: key:"

    const-string v1, "mtopsdk.XState"

    if-eqz p0, :cond_3

    sget-object p0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 176
    :try_start_0
    sget-object p0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {p0, p1}, Lmtopsdk/xstate/aidl/IXState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getValue] IXState.getValue(Key) failed,key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 185
    :cond_3
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_4
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "mtopsdk.XState"

    if-nez p0, :cond_0

    const-string p0, "[init]init error,context is null"

    .line 42
    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lmtopsdk/xstate/XState;->mContext:Landroid/content/Context;

    .line 52
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[init]XState init called"

    .line 53
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-static {p0}, Lmtopsdk/xstate/XState;->initPhoneInfo(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lmtopsdk/xstate/XState$1;

    const-class v1, Lmtopsdk/xstate/aidl/IXState;

    const-class v2, Lmtopsdk/xstate/XStateService;

    invoke-direct {v0, v1, v2}, Lmtopsdk/xstate/XState$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    .line 73
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0, p0}, Lmtopsdk/common/util/AsyncServiceBinder;->asyncBind(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lmtopsdk/xstate/XState;->syncToRemote()V

    :goto_0
    return-void
.end method

.method private static initPhoneInfo(Landroid/content/Context;)V
    .locals 3

    .line 99
    :try_start_0
    invoke-static {p0}, Lmtopsdk/xstate/util/PhoneInfo;->getPhoneBaseInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v1, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 106
    sget-object v0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v0, "t_offset"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "mtopsdk.XState"

    const-string v1, "[initPhoneInfo]initPhoneInfo error"

    .line 111
    invoke-static {v0, v1, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isAppBackground()Z
    .locals 2

    const-string v0, "AppBackground"

    .line 137
    invoke-static {v0}, Lmtopsdk/xstate/XState;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "mtopsdk.XState"

    const-string v1, "[isAppBackground] parse KEY_APP_BACKGROUND error"

    .line 143
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 204
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 208
    :cond_0
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-static {p0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_1
    invoke-static {}, Lmtopsdk/xstate/XState;->checkBindAndRetryAsyncBind()Z

    move-result p0

    const-string v0, "[removeKey]Attention :Use XState Local Mode: key:"

    const-string v2, "mtopsdk.XState"

    if-eqz p0, :cond_3

    sget-object p0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 214
    :try_start_0
    sget-object p0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {p0, p1}, Lmtopsdk/xstate/aidl/IXState;->removeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeKey] IXState.removeKey(key) failed,key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_2
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    :cond_3
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_4
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public static setAppBackground(Z)V
    .locals 1

    .line 150
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppBackground"

    .line 151
    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-static {v0, p0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 242
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 246
    :cond_0
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {p0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_1
    invoke-static {}, Lmtopsdk/xstate/XState;->checkBindAndRetryAsyncBind()Z

    move-result p0

    const-string v0, "[setValue]Attention :Use XState Local Mode: key:"

    const-string v1, ",value:"

    const-string v2, "mtopsdk.XState"

    if-eqz p0, :cond_3

    sget-object p0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 252
    :try_start_0
    sget-object p0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {p0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {p0, p1, p2}, Lmtopsdk/xstate/aidl/IXState;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setValue] IXState.setValue(key,value) failed,key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_3
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_4
    sget-object p0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method static syncToRemote()V
    .locals 9

    const-string v0, ",value:"

    const-string v1, "mtopsdk.XState"

    .line 275
    invoke-static {}, Lmtopsdk/xstate/XState;->checkBindAndRetryAsyncBind()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    sget-object v2, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v2}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmtopsdk/xstate/aidl/IXState;

    .line 278
    :try_start_0
    invoke-interface {v2}, Lmtopsdk/xstate/aidl/IXState;->init()V

    .line 279
    sget-object v3, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :try_start_1
    invoke-interface {v2, v5, v4}, Lmtopsdk/xstate/aidl/IXState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[syncToRemote] sync succeed, key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 288
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[syncToRemote] sync error, key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    :cond_1
    sget-object v0, Lmtopsdk/xstate/XState;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "syncToRemote error."

    .line 294
    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static unInit()V
    .locals 3

    .line 83
    invoke-static {}, Lmtopsdk/xstate/XState;->checkBindAndRetryAsyncBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->asyncServiceBinder:Lmtopsdk/common/util/AsyncServiceBinder;

    invoke-virtual {v0}, Lmtopsdk/common/util/AsyncServiceBinder;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0}, Lmtopsdk/xstate/aidl/IXState;->unInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "mtopsdk.XState"

    const-string v2, "[unInit] unInit error"

    .line 87
    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    :goto_0
    sget-object v0, Lmtopsdk/xstate/XState;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 91
    sget-object v0, Lmtopsdk/xstate/XState;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
