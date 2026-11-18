.class public Lcom/ta/audid/store/SdcardDeviceModle;
.super Ljava/lang/Object;
.source "SdcardDeviceModle.java"


# static fields
.field private static final MODULE_GSID:Ljava/lang/String; = "gsid"

.field private static final MODULE_IMEI:Ljava/lang/String; = "imei"

.field private static final MODULE_IMSI:Ljava/lang/String; = "imsi"

.field private static mSdcardDeviceModle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkSdcardDeviceModle()Z
    .locals 3

    .line 106
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readSdcardDeviceModleFile()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/ta/audid/store/UtdidContentUtil;->getDecodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_0
    invoke-static {v0}, Lcom/ta/audid/utils/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    .line 114
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v2, "gsid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/audid/collect/DeviceInfo2;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 123
    :catch_0
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V

    return v1
.end method

.method private static clearSdcardDeviceModle()V
    .locals 1

    .line 97
    :try_start_0
    sget-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v0, ""

    .line 99
    invoke-static {v0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardDeviceModleFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static declared-synchronized getModule(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ta/audid/store/SdcardDeviceModle;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-object p0

    .line 83
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 86
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->checkSdcardDeviceModle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    sget-object v1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 89
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->clearSdcardDeviceModle()V

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getModuleImei()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "imei"

    .line 29
    invoke-static {v0}, Lcom/ta/audid/store/SdcardDeviceModle;->getModule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static getModuleImsi()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "imsi"

    .line 37
    invoke-static {v0}, Lcom/ta/audid/store/SdcardDeviceModle;->getModule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized writeSdcardDeviceModle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/ta/audid/store/SdcardDeviceModle;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 46
    monitor-exit v0

    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->checkSdcardDeviceModle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    sget-object v1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v2, "imei"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 55
    sget-object p0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v1, "imsi"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    sget-object v2, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v3, "imei"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 63
    sget-object p0, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v2, "imsi"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_4
    invoke-static {v1}, Lcom/ta/audid/collect/DeviceInfo2;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 67
    sget-object p1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    const-string v1, "gsid"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_5
    new-instance p0, Lorg/json/JSONObject;

    sget-object p1, Lcom/ta/audid/store/SdcardDeviceModle;->mSdcardDeviceModle:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/ta/audid/store/UtdidContentUtil;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardDeviceModleFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catch_0
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
