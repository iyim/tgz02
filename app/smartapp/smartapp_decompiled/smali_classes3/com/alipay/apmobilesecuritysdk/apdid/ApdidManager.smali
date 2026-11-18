.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;
.super Ljava/lang/Object;
.source "ApdidManager.java"


# instance fields
.field private errorCode:I

.field private mContext:Landroid/content/Context;

.field private onlineHostConfig:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getInstance()Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->onlineHostConfig:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->errorCode:I

    .line 53
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private collectAndSendStaticData(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;"
        }
    .end annotation

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;->getStaticUploadData(Landroid/content/Context;Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;

    move-result-object p1

    .line 392
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->onlineHostConfig:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getOnlineHostAdress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/http/UploadFactory;->createV2(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object v0

    .line 393
    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/v2/IUploadV2;->updateStaticData(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 396
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getLocalApdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 554
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getRealLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 486
    :try_start_0
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getApdidToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 492
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;->getApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p1, p0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->saveApdidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getRealLocalApdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 512
    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getApdid()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 518
    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 523
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->updateByApdidStorageModelV4(Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;)V

    .line 524
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->getApdid()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 531
    :cond_1
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->getApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 536
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->updateByApdidStorageModel(Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;)V

    .line 537
    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object p0

    .line 538
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object p0

    :catch_0
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private isWindowClosed()Z
    .locals 11

    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "2016-11-10 2016-11-11"

    const-string v2, "2016-12-11 2016-12-12"

    .line 196
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v4

    mul-double v2, v2, v4

    double-to-int v2, v2

    const/4 v3, 0x1

    mul-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    .line 202
    :try_start_0
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    const-string v8, " "

    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 206
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " 00:00:00"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v7, v3

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 23:59:59"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 223
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v7, 0xd

    .line 224
    invoke-virtual {v10, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 225
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 233
    invoke-virtual {v8, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v4
.end method

.method private mainProcess(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "appName"

    const-string v1, ""

    .line 287
    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->preLoadCache(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->needUpdateApdid(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getInstance()Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getEnvConfig()I

    move-result v3

    invoke-static {v1, v3}, Lcom/alipay/apmobilesecuritysdk/otherid/UmidSdkWrapper;->startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;

    .line 311
    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->collectAndSendStaticData(Ljava/util/Map;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getRequestResult()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 p1, 0x3

    if-eq v3, p1, :cond_3

    if-eqz v1, :cond_2

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server error, result:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Server error, returned null"

    .line 342
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logMessage(Ljava/lang/String;)V

    .line 346
    :goto_1
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 320
    :cond_4
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->saveToStorage(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;Ljava/util/Map;)V

    .line 356
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alipay/apmobilesecuritysdk/macro/AgentStub;->verifyAgentAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private needUpdateApdid(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->isWindowClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->needUpdateApdid_11(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 121
    :cond_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->reset()V

    .line 122
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, ""

    const-string v2, "tid"

    .line 133
    invoke-static {p1, v2, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utdid"

    .line 134
    invoke-static {p1, v3, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 141
    :cond_2
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getUtdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->isTokenValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 158
    :cond_4
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getRealLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private needUpdateApdid_11(Ljava/lang/String;)Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getRealLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private preLoadCache(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getRealLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->printTokenStorage()V

    return-void
.end method

.method private saveToStorage(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getLogSwitch()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->saveLogSwitch(Landroid/content/Context;Z)V

    .line 442
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getAgentSwitch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->saveAgentSwitch(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setDeviceInfoHash(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->saveApdidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setApdid(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getCurrentTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTimestamp(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->updateTid(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTid(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, p3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->updateUtdid(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setUtdid(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->printTokenStorage()V

    .line 455
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getApdidStorageModelV4()Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;

    move-result-object p2

    .line 456
    iget-object p3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->saveApdid(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;)V

    .line 458
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageV4;->printApdidStorageV4(Landroid/content/Context;)V

    .line 461
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getDeviceInfoHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->saveApdid(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;)V

    .line 464
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorage;->printApdidStorage(Landroid/content/Context;)V

    .line 467
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getApdidToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 468
    iget-object p3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;->saveApdidToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/alipay/apmobilesecuritysdk/storage/OpenApdidTokenStorage;->printOpenApdidToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    iget-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->saveApdidValidTime(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private updateTid(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "tid"

    const-string v1, ""

    .line 424
    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setTid(Ljava/lang/String;)V

    return-object p1

    .line 430
    :cond_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getTid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateUtdid(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "utdid"

    const-string v1, ""

    .line 408
    invoke-static {p1, v0, v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getUtdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->setUtdid(Ljava/lang/String;)V

    return-object p1

    .line 414
    :cond_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/storage/TokenStorage;->getUtdid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public initApdid(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, ""

    .line 64
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 67
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    const-string v3, "tid"

    invoke-static {p1, v3, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utdid"

    invoke-static {p1, v4, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;-><init>(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/macro/TmxStub;->initTmxSessionId(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/macro/TmxStub$TmxSdkListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :catch_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mainProcess(Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->errorCode:I

    .line 91
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->onlineHostConfig:Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/constant/OnlineHostConfig;->getOnlineHostAdress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/security/mobile/module/http/UploadFactory;->createV2(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->uploadLog(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/v2/IUploadV2;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 95
    :try_start_3
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :goto_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/macro/TmxStub;->stop()V

    .line 100
    iget p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->errorCode:I

    return p1

    .line 98
    :goto_1
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/macro/TmxStub;->stop()V

    throw p1
.end method
