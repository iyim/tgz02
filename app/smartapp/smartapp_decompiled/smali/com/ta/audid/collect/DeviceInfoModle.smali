.class public Lcom/ta/audid/collect/DeviceInfoModle;
.super Ljava/lang/Object;
.source "DeviceInfoModle.java"


# static fields
.field private static final D10_PHONENUMBER:Ljava/lang/String; = "D10"

.field private static final D11_CPUCOUNT:Ljava/lang/String; = "D11"

.field private static final D12_MAXCPUFREQ:Ljava/lang/String; = "D12"

.field private static final D13_MEM_SIZE:Ljava/lang/String; = "D13"

.field private static final D14_EXTMEM_SIZE:Ljava/lang/String; = "D14"

.field private static final D15_SCREEN_DPI:Ljava/lang/String; = "D15"

.field private static final D16_SCREEN_RESOLUTION:Ljava/lang/String; = "D16"

.field private static final D17_UMID:Ljava/lang/String; = "D17"

.field private static final D18_TFCARD:Ljava/lang/String; = "D18"

.field private static final D19_GRAVITY:Ljava/lang/String; = "D19"

.field private static final D1_IMEI:Ljava/lang/String; = "D1"

.field private static final D20_FINGERPRINT:Ljava/lang/String; = "D20"

.field private static final D21_GYROSCOPE:Ljava/lang/String; = "D21"

.field private static final D22_GPS:Ljava/lang/String; = "D22"

.field private static final D2_IMSI:Ljava/lang/String; = "D2"

.field private static final D3_WIFI_MAC:Ljava/lang/String; = "D3"

.field private static final D4_BLUETOOTH_MAC:Ljava/lang/String; = "D4"

.field private static final D5_GSID:Ljava/lang/String; = "D5"

.field private static final D6_SN:Ljava/lang/String; = "D6"

.field private static final D7_SSN:Ljava/lang/String; = "D7"

.field private static final D8_MMC_CID:Ljava/lang/String; = "D8"

.field private static final D9_CPU_SERIAL:Ljava/lang/String; = "D9"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getDeviceInfoModle(Landroid/content/Context;)Ljava/util/Map;
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

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->getModuleImei()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-static {}, Lcom/ta/audid/store/SdcardDeviceModle;->getModuleImsi()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "D1"

    .line 52
    invoke-static {v0, v3, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "D2"

    .line 53
    invoke-static {v0, v1, v2}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getWifiMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D3"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getBluetoothMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D4"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D5"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getSerialNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D6"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getSimSerialNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D7"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getNandID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D8"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getCPUSerial()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D9"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D10"

    invoke-static {v0, v2, v1}, Lcom/ta/audid/collect/DeviceInfoModle;->putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getCpuCount()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D11"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D12"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getMemTotalSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D13"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getTotalExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D14"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getScreenDpi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D15"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D16"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p0}, Lcom/ta/audid/utils/UmidUtils;->getUmidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D17"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->checkTfCard(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const-string v4, "D18"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 71
    invoke-static {p0, v1}, Lcom/ta/audid/collect/DeviceInfo2;->checkSensor(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    const-string v4, "D19"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->hasFingerprintDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    const-string v4, "D20"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 73
    invoke-static {p0, v1}, Lcom/ta/audid/collect/DeviceInfo2;->checkSensor(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    const-string v4, "D21"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->hasGPSDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v3

    :goto_4
    const-string p0, "D22"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static putMapWithoutEmptyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
