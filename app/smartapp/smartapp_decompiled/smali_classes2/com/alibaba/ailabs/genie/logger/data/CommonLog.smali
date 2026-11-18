.class public Lcom/alibaba/ailabs/genie/logger/data/CommonLog;
.super Ljava/lang/Object;
.source "CommonLog.java"


# static fields
.field public static EQUIPMENT_OS_NAME:Ljava/lang/String;

.field private static final mConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public logType:I

.field private mKeyValue:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ""

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "Android"

    .line 23
    sput-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->EQUIPMENT_OS_NAME:Ljava/lang/String;

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "os"

    sget-object v3, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->EQUIPMENT_OS_NAME:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "osver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "api"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "display"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "abi"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "abi2"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "screen"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->getScreenPixels(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "dpi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->getScreenDpi(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "opengl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->getVersionFromPackageManager(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "targetSdkVersion"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/DeviceUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "utdid"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "timezone"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/PhoneInfoUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v2, "simoper"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "country"

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    .line 59
    :try_start_1
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    sget-object v5, Lcom/alibaba/ailabs/genie/logger/utils/MCCCode;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "phone"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->getNativePhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "iccid"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/SIMCardInfoUtil;->getSN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "versionName"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    const-string v1, "versionCode"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    .line 78
    iput p1, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->logType:I

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->init()V

    return-void
.end method

.method public static fillByJSON(Lcom/alibaba/ailabs/genie/logger/data/CommonLog;Lorg/json/JSONObject;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v1, "net"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtil;->getNetworkType()Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v1, "cpu_rate"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v1, "ram_free"

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/RuntimeSystemUtils;->getSysRamFreeMemSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->getInternalStorageAvaliableSize(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v2, "inmem"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v1, "sdcard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->isSDCardAvaliable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->getExternalStorageAvaliableSize(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    const-string v2, "exmem"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeyValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public logTypeString()Ljava/lang/String;
    .locals 1

    .line 121
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->logType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/logger/data/CommonLog;
    .locals 1

    .line 129
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string p2, "Do not put a key that exists in Constants already."

    .line 130
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/logger/utils/Check;->d(ZLjava/lang/String;)V

    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected putAndUpdate(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/logger/data/CommonLog;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected putConstants()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putConstantsInfo()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->putConstants()V

    return-void
.end method

.method public removeConstants()V
    .locals 3

    .line 108
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mConstants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/data/CommonLog;->mKeyValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
