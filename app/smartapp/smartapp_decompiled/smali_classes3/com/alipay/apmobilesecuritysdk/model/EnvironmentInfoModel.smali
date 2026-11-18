.class public Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;
.super Ljava/lang/Object;
.source "EnvironmentInfoModel.java"


# static fields
.field public static final AE10_MODEL:Ljava/lang/String; = "AE10"

.field public static final AE11_NAME:Ljava/lang/String; = "AE11"

.field public static final AE12_VERSION:Ljava/lang/String; = "AE12"

.field public static final AE13_SDK:Ljava/lang/String; = "AE13"

.field public static final AE14_TAGS:Ljava/lang/String; = "AE14"

.field public static final AE15_QEMU:Ljava/lang/String; = "AE15"

.field public static final AE16_IP:Ljava/lang/String; = "AE16"

.field public static final AE17_USERAGENT:Ljava/lang/String; = "AE17"

.field public static final AE1_OS:Ljava/lang/String; = "AE1"

.field public static final AE2_ROOT:Ljava/lang/String; = "AE2"

.field public static final AE3_EMULATOR:Ljava/lang/String; = "AE3"

.field public static final AE4_BOARD:Ljava/lang/String; = "AE4"

.field public static final AE5_BRAND:Ljava/lang/String; = "AE5"

.field public static final AE6_DEVICE:Ljava/lang/String; = "AE6"

.field public static final AE7_DISPLAYID:Ljava/lang/String; = "AE7"

.field public static final AE8_VERSION_INCREMENTAL:Ljava/lang/String; = "AE8"

.field public static final AE9_MANUFACTURER:Ljava/lang/String; = "AE9"

.field public static final FIELD:Ljava/lang/String; = "AE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getEnvironmentInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "AE1"

    .line 120
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getOSName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE2"

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_0

    :cond_0
    const-string v5, "0"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE3"

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_1

    :cond_1
    const-string p0, "0"

    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE4"

    .line 123
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE5"

    .line 124
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE6"

    .line 125
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE7"

    .line 126
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE8"

    .line 127
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE9"

    .line 128
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE10"

    .line 129
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE11"

    .line 130
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE12"

    .line 131
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE13"

    .line 132
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE14"

    .line 133
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AE15"

    .line 134
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
