.class public Lcom/ta/audid/collect/SystemInfoModle;
.super Ljava/lang/Object;
.source "SystemInfoModle.java"


# static fields
.field private static final S10_Build_DISPLAY:Ljava/lang/String; = "S10"

.field private static final S11_Build_ID:Ljava/lang/String; = "S11"

.field private static final S12_Build_TIME:Ljava/lang/String; = "S12"

.field private static final S13_Build_BOARD:Ljava/lang/String; = "S13"

.field private static final S14_Build_DEVICE:Ljava/lang/String; = "S14"

.field private static final S15_Build_MANUFACTURER:Ljava/lang/String; = "S15"

.field private static final S16_Build_PRODUCT:Ljava/lang/String; = "S16"

.field private static final S17_Build_INCREMENTAL:Ljava/lang/String; = "S17"

.field private static final S18_GSM_SM_STATE:Ljava/lang/String; = "S18"

.field private static final S19_GSM_SM_STATE2:Ljava/lang/String; = "S19"

.field private static final S20_KERNEL_QEMU:Ljava/lang/String; = "S20"

.field private static final S21_USB_STATE:Ljava/lang/String; = "S21"

.field private static final S22_WIFI_INTERFACE:Ljava/lang/String; = "S22"

.field private static final S23_BAND_VERSON:Ljava/lang/String; = "S23"

.field private static final S24_YUNOS_UUID:Ljava/lang/String; = "S24"

.field private static final S25_YUNOS_VERSON:Ljava/lang/String; = "S25"

.field private static final S26_NETWORK_BSSD:Ljava/lang/String; = "S26"

.field private static final S27_NETWORK_TYPE:Ljava/lang/String; = "S27"

.field private static final S28_OPERATOR_NAME:Ljava/lang/String; = "S28"

.field private static final S29_OPERATOR_TYPE:Ljava/lang/String; = "S29"

.field private static final S2_EMULATOR:Ljava/lang/String; = "S2"

.field private static final S31_STRONGSEMAPHORE:Ljava/lang/String; = "S31"

.field private static final S32_BLUETOOTH:Ljava/lang/String; = "S32"

.field private static final S33_REMANPOWER:Ljava/lang/String; = "S33"

.field private static final S34_FREEMEMORY:Ljava/lang/String; = "S34"

.field private static final S36_APP_LIST:Ljava/lang/String; = "S36"

.field private static final S3_OS_NAME:Ljava/lang/String; = "S3"

.field private static final S4_BRAND:Ljava/lang/String; = "S4"

.field private static final S5_MODEL:Ljava/lang/String; = "S5"

.field private static final S6_BUILD_VERSON_RELEASE:Ljava/lang/String; = "S6"

.field private static final S7_BUILD_VERSON_SDK:Ljava/lang/String; = "S7"

.field private static final S8_Build_TYPE:Ljava/lang/String; = "S8"

.field private static final S9_Build_TAGS:Ljava/lang/String; = "S9"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSystemInfoModle(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
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

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-static {p0}, Lcom/ta/audid/collect/SystemInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "S2"

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getOSName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildDisplay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S11"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBoard()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S13"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S14"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S15"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getProduct()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S16"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S17"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getGsmSimState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S18"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getGsmSimState2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S19"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S20"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getUsbState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S21"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getWifiInterface()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S22"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/ta/audid/collect/SystemInfo;->getBandVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S23"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getYunOSUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S24"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getYunOSVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S25"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S26"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S27"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S28"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->getPhoneOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S29"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->isStrongSemaphore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    const-string v2, "S31"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p0}, Lcom/ta/audid/collect/NetworkInfo;->isBluetoothEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    const-string v1, "S32"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getBattery(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S33"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getMemFreeSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "S34"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/ta/audid/upload/AppsResponse;->getInstance()Lcom/ta/audid/upload/AppsResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ta/audid/upload/AppsResponse;->getAppsList()Ljava/lang/String;

    move-result-object p0

    const-string v1, "S36"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
