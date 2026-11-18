.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;
.super Ljava/lang/Object;
.source "ApdidModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getStaticUploadData(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;-><init>()V

    .line 28
    invoke-static {p0, v0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;->initialCommonUploadData(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;Ljava/util/Map;)V

    .line 29
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setDataMap(Ljava/util/Map;)V

    return-object v0
.end method

.method private static initialCommonUploadData(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "rpcVersion"

    .line 44
    invoke-static {p2, v2, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appName"

    .line 45
    invoke-static {p2, v3, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p0, p2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getPrivateApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object v3

    .line 49
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getPublicApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getApdid()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    move-object v5, v3

    .line 56
    :goto_0
    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->getPrivateApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 59
    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v6}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {v4}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getApdid()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_2
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->getPublicApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string p0, "android"

    .line 75
    invoke-virtual {p1, p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setOs(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v5}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setPriApdid(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setPubApdid(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setToken(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setUmidToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v3}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setLastTime(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->setVersion(Ljava/lang/String;)V

    return-void
.end method
