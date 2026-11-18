.class public Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorage;
.super Ljava/lang/Object;
.source "DeviceInfoStorage.java"


# static fields
.field private static final PRIVATE_PREFS_KEY:Ljava/lang/String; = "device_feature_prefs_key"

.field private static final PRIVATE_PREFS_NAME:Ljava/lang/String; = "device_feature_prefs_name"

.field private static final PUBLIC_FILE_KEY:Ljava/lang/String; = "device_feature_file_key"

.field private static final PUBLIC_FILE_NAME:Ljava/lang/String; = "device_feature_file_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDeviceStorageModel(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "device_feature_prefs_name"

    const-string v2, "device_feature_prefs_key"

    .line 54
    invoke-static {p0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getPrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "device_feature_file_name"

    const-string v1, "device_feature_file_key"

    .line 57
    invoke-static {p0, v1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->getDataFromPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 66
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;-><init>()V

    const-string v2, "imei"

    .line 68
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->setImei(Ljava/lang/String;)V

    const-string v2, "imsi"

    .line 69
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->setImsi(Ljava/lang/String;)V

    const-string v2, "mac"

    .line 70
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->setMac(Ljava/lang/String;)V

    const-string v2, "bluetoothmac"

    .line 71
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->setBluetoothMac(Ljava/lang/String;)V

    const-string v2, "gsi"

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->setGsi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 75
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static saveDeviceStorageModel(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "imei"

    .line 28
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imsi"

    .line 30
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    .line 32
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bluetoothmac"

    .line 34
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getBluetoothMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gsi"

    .line 36
    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getGsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_feature_file_name"

    const-string v1, "device_feature_file_key"

    .line 40
    invoke-static {v0, v1, p1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writeDataToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_feature_prefs_name"

    const-string v1, "device_feature_prefs_key"

    .line 42
    invoke-static {p0, v0, v1, p1}, Lcom/alipay/apmobilesecuritysdk/util/PubPriStorageUtil;->writePrivateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
