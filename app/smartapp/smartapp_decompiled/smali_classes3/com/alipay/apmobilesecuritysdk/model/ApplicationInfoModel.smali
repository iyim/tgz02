.class public Lcom/alipay/apmobilesecuritysdk/model/ApplicationInfoModel;
.super Ljava/lang/Object;
.source "ApplicationInfoModel.java"


# static fields
.field public static final AA1_PACKAGENAME:Ljava/lang/String; = "AA1"

.field public static final AA2_VERSION:Ljava/lang/String; = "AA2"

.field public static final AA3_SDKNAME:Ljava/lang/String; = "AA3"

.field public static final AA4_SDKVERSION:Ljava/lang/String; = "AA4"

.field public static final AA5_APPLISTINFO:Ljava/lang/String; = "AA5"

.field public static final AA6_APPCHANNEL:Ljava/lang/String; = "AA6"

.field public static final FIELD:Ljava/lang/String; = "AA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/ApplicationInfoModel;

    monitor-enter v0

    :try_start_0
    const-string v1, "appchannel"

    const-string v2, ""

    .line 67
    invoke-static {p1, v1, v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AA1"

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA2"

    .line 71
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alipay/security/mobile/module/deviceinfo/AppInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA3"

    const-string v3, "security-sdk-token"

    .line 72
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA4"

    const-string v3, "3.1.3-20160401174126"

    .line 73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AA5"

    .line 74
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/ApplicationInfoModel;->getAppListByListAndVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AA6"

    .line 75
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAppListByListAndVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 85
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAllAppName(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getAppList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getAppListVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto/16 :goto_6

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string p0, ","

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 100
    array-length v1, p0

    if-ge v1, v3, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_9

    .line 104
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v1, v3, :cond_3

    goto :goto_3

    .line 107
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v3, :cond_4

    goto :goto_2

    .line 113
    :cond_4
    :try_start_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 114
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 115
    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_5
    array-length v4, p0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v6, p0, v3

    .line 118
    div-int/lit8 v7, v5, 0x8

    aget-byte v7, v1, v7

    .line 120
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x80

    .line 121
    rem-int/lit8 v8, v5, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v7, v6

    .line 123
    :cond_6
    div-int/lit8 v6, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_7
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :catch_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_9
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_a
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_b
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_6
    const-string p0, ""

    return-object p0
.end method
