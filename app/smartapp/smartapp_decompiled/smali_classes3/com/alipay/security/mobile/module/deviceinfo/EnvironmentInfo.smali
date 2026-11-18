.class public Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;
.super Ljava/lang/Object;
.source "EnvironmentInfo.java"


# static fields
.field private static environmentInfo:Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->environmentInfo:Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;
    .locals 1

    .line 37
    sget-object v0, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->environmentInfo:Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    return-object v0
.end method

.method private getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 260
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 262
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method


# virtual methods
.method public getBuildDisplayId()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildTags()Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildVersionIncremental()Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildVersionRelease()Ljava/lang/String;
    .locals 1

    .line 179
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildVersionSDK()Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public getGsmSimState()Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 234
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGsmSimState2()Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.state.2"

    const-string v1, ""

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKernelQemu()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.kernel.qemu"

    const-string v1, "0"

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "WIFI"

    :try_start_0
    const-string v1, "connectivity"

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 217
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getOSName()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public getProductBoard()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public getProductBrand()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDevice()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getProductManufacturer()Ljava/lang/String;
    .locals 1

    .line 152
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getUsbState()Ljava/lang/String;
    .locals 2

    const-string v0, "sys.usb.state"

    const-string v1, ""

    .line 246
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiInterface()Ljava/lang/String;
    .locals 2

    const-string v0, "wifi.interface"

    const-string v1, ""

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmulator(Landroid/content/Context;)Z
    .locals 3

    .line 78
    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "phone"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isZero(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRooted()Z
    .locals 6

    const-string v0, "/system/bin/"

    const-string v1, "/system/xbin/"

    const-string v2, "/system/sbin/"

    const-string v3, "/sbin/"

    const-string v4, "/vendor/bin/"

    .line 56
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 60
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v1
.end method
