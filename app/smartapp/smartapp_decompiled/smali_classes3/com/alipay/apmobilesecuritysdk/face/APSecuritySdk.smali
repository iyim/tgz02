.class public Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
.super Ljava/lang/Object;
.source "APSecuritySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;,
        Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;
    }
.end annotation


# static fields
.field private static apSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field private static mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mInstanceLock:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    .locals 2

    .line 65
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->apSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->apSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    .line 69
    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->apSecuritySdk:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    const-string v0, "security-sdk-token"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.3-20160401174126"

    return-object v0
.end method

.method public declared-synchronized getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;
    .locals 3

    monitor-enter p0

    .line 205
    :try_start_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :catch_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getInstance()Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->setEnvConfig(I)V

    .line 95
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getLastDev(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getInstance()Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getOnlineHostAdress()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->resetStorage(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->resetStorage(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;->resetStorage(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->resetApdid()V

    .line 114
    :cond_0
    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->saveLastDev(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string p1, "utdid"

    const-string v0, ""

    .line 119
    invoke-static {p2, p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tid"

    .line 120
    invoke-static {p2, v2, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userId"

    .line 121
    invoke-static {p2, v4, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/otherid/UtdidWrapper;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v5, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appName"

    .line 131
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appKeyClient"

    .line 132
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appchannel"

    .line 133
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rpcVersion"

    const-string p2, "3"

    .line 134
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->getInstance()Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    move-result-object p1

    new-instance p2, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;

    invoke-direct {p2, p0, v5, p3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    invoke-virtual {p1, p2}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
