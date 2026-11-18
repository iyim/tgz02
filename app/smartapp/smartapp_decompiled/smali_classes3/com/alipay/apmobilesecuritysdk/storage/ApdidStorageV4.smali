.class public Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;
.super Ljava/lang/Object;
.source "ApdidStorageV4.java"


# static fields
.field public static final PRIVATE_KEY_NAME:Ljava/lang/String; = "key_deviceid_v4"

.field public static final PRIVATE_PREFS_NAME:Ljava/lang/String; = "vkeyid_profiles_v4"

.field public static final PUBLIC_FILE_NAME:Ljava/lang/String; = "wxcasxx_v4"

.field public static final PUBLIC_KEY_NAME:Ljava/lang/String; = "key_wxcasxx_v4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter v0

    :try_start_0
    const-string v1, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    .line 57
    invoke-static {p0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getPrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "wxcasxx_v4"

    const-string v1, "key_wxcasxx_v4"

    .line 59
    invoke-static {p0, v1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getDataFromPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getApdidStorageModelV4FromJson(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getApdidStorageModelV4FromJson(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
    .locals 8

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    const-string v2, "apdid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "deviceInfoHash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "utdid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getPrivateApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
    .locals 3

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter v0

    :try_start_0
    const-string v1, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    .line 65
    invoke-static {p0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getPrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 67
    monitor-exit v0

    return-object p0

    .line 69
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getApdidStorageModelV4FromJson(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getPublicApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
    .locals 2

    const-class p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter p0

    :try_start_0
    const-string v0, "wxcasxx_v4"

    const-string v1, "key_wxcasxx_v4"

    .line 73
    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getDataFromPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 75
    monitor-exit p0

    return-object v0

    .line 77
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getApdidStorageModelV4FromJson(Ljava/lang/String;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized printApdidStorageV4(Landroid/content/Context;)V
    .locals 0

    const-class p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter p0

    .line 35
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized resetStorage(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter v0

    :try_start_0
    const-string v1, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    const-string v3, ""

    .line 19
    invoke-static {p0, v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writePrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wxcasxx_v4"

    const-string v1, "key_wxcasxx_v4"

    const-string v2, ""

    .line 20
    invoke-static {p0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writeDataToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveApdid(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;)V
    .locals 4

    const-class v0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;

    monitor-enter v0

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "apdid"

    .line 40
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getApdid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceInfoHash"

    .line 41
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    .line 42
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tid"

    .line 43
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "utdid"

    .line 44
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getUtdid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    .line 46
    invoke-static {p0, v1, v2, p1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writePrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wxcasxx_v4"

    const-string v1, "key_wxcasxx_v4"

    .line 47
    invoke-static {p0, v1, p1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writeDataToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 49
    :try_start_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
