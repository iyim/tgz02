.class public Lcom/alipay/apmobilesecuritysdk/model/DeviceInfoModel;
.super Ljava/lang/Object;
.source "DeviceInfoModel.java"


# static fields
.field public static final AD10_GSID:Ljava/lang/String; = "AD10"

.field public static final AD11_CPUID:Ljava/lang/String; = "AD11"

.field public static final AD12_CPUCOUNT:Ljava/lang/String; = "AD12"

.field public static final AD13_CPUFREQUENT:Ljava/lang/String; = "AD13"

.field public static final AD14_RAMSIZE:Ljava/lang/String; = "AD14"

.field public static final AD15_ROMSIZE:Ljava/lang/String; = "AD15"

.field public static final AD16_SDCARDSIEZE:Ljava/lang/String; = "AD16"

.field public static final AD17_VKEY:Ljava/lang/String; = "AD17"

.field public static final AD18_BLUEMAC:Ljava/lang/String; = "AD18"

.field public static final AD19_NETWORKTYPE:Ljava/lang/String; = "AD19"

.field public static final AD1_IMEI:Ljava/lang/String; = "AD1"

.field public static final AD20_BASEBANDCODE:Ljava/lang/String; = "AD20"

.field public static final AD21_PHONENUMBER:Ljava/lang/String; = "AD21"

.field public static final AD22_CAMERALEVEL:Ljava/lang/String; = "AD22"

.field public static final AD23_SERIAL_NUMBER:Ljava/lang/String; = "AD23"

.field public static final AD23_WIFIBSSID:Ljava/lang/String; = "AL3"

.field public static final AD24_SENSORATTRIBUTES:Ljava/lang/String; = "AD24"

.field public static final AD2_IMSI:Ljava/lang/String; = "AD2"

.field public static final AD3_SENSORLIST:Ljava/lang/String; = "AD3"

.field public static final AD4_SENSORDATA:Ljava/lang/String; = "AD4"

.field public static final AD5_RESOLATION:Ljava/lang/String; = "AD5"

.field public static final AD6_WIDTH:Ljava/lang/String; = "AD6"

.field public static final AD7_HEIGHT:Ljava/lang/String; = "AD7"

.field public static final AD8_MAC_ADDRESS:Ljava/lang/String; = "AD8"

.field public static final AD9_ICCID:Ljava/lang/String; = "AD9"

.field public static final FIELD:Ljava/lang/String; = "AD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getStaticDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
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

    .line 164
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorage;->getDeviceStorageModel(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;

    move-result-object v2

    .line 171
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBluMac()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_4

    .line 180
    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_0
    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_1
    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getMac()Ljava/lang/String;

    move-result-object v5

    .line 183
    :cond_2
    invoke-static {v6}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getBluetoothMac()Ljava/lang/String;

    move-result-object v6

    .line 184
    :cond_3
    invoke-static {v7}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->getGsi()Ljava/lang/String;

    move-result-object v7

    .line 188
    :cond_4
    new-instance v2, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p0, v2}, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorage;->saveDeviceStorageModel(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;)V

    const-string v2, "AD1"

    .line 193
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD2"

    .line 194
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD3"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD6"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD7"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD8"

    .line 200
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSIMSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD9"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AD10"

    .line 202
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD11"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD12"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD13"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMemorySize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD14"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getTotalInternalMemorySize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD15"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSDCardSize()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD16"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    const-string v3, "AD17"

    .line 209
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AD18"

    .line 210
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD19"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBandVer()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD20"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD21"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AD22"

    .line 214
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD23"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->gzipCompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AD24"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getWifiBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AL3"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
