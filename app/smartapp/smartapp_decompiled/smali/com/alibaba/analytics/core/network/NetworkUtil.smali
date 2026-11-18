.class public Lcom/alibaba/analytics/core/network/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;,
        Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;
    }
.end annotation


# static fields
.field public static final NETWORK_CLASS_2_3_G:Ljava/lang/String; = "2G/3G"

.field public static final NETWORK_CLASS_2_G:Ljava/lang/String; = "2G"

.field public static final NETWORK_CLASS_3_G:Ljava/lang/String; = "3G"

.field public static final NETWORK_CLASS_4_G:Ljava/lang/String; = "4G"

.field public static final NETWORK_CLASS_5_G:Ljava/lang/String; = "5G"

.field public static final NETWORK_CLASS_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_CLASS_WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static final WIFIADDRESS_UNKNOWN:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static arrayOfString:[Ljava/lang/String;

.field private static b5GSupported:Z

.field private static bCheck5GSupported:Z

.field private static mHaveNetworkStatus:Z

.field private static netStatusChecker:Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

.field private static netStatusReceiver:Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Unknown"

    .line 34
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->mHaveNetworkStatus:Z

    .line 37
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->bCheck5GSupported:Z

    .line 38
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z

    .line 289
    new-instance v0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;-><init>(Lcom/alibaba/analytics/core/network/NetworkUtil$1;)V

    sput-object v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusReceiver:Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;

    .line 290
    new-instance v0, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    invoke-direct {v0, v1}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;-><init>(Lcom/alibaba/analytics/core/network/NetworkUtil$1;)V

    sput-object v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusChecker:Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusChecker:Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkStatus(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static convertIntToIp(I)Ljava/lang/String;
    .locals 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccess(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 139
    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "5G"

    const-string v1, "Unknown"

    .line 147
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 148
    aget-object v2, p0, v2

    const-string v3, "2G/3G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 149
    aget-object p0, p0, v3

    return-object p0

    .line 151
    :cond_0
    aget-object p0, p0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static getNetworkClass(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "3G"

    return-object p0

    :pswitch_1
    const-string p0, "2G"

    return-object p0

    :cond_0
    :pswitch_2
    const-string p0, "4G"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 130
    sget-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->mHaveNetworkStatus:Z

    if-nez v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkStatus(Landroid/content/Context;)V

    .line 133
    :cond_0
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized getNetworkStatus(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/alibaba/analytics/core/network/NetworkUtil;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 322
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 326
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v1

    .line 330
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v3, "connectivity"

    .line 334
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_2

    .line 336
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v1

    .line 337
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    monitor-exit v0

    return-void

    .line 341
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 342
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 343
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 344
    sget-object v3, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v4, "Wi-Fi"

    aput-object v4, v3, v1

    .line 345
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->isWifi5G(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 346
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "5G"

    aput-object v3, p0, v2

    goto :goto_0

    .line 348
    :cond_3
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v2

    goto :goto_0

    .line 350
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_6

    .line 351
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v4, "2G/3G"

    aput-object v4, p0, v1

    .line 352
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    goto :goto_0

    .line 355
    :cond_5
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v1

    .line 356
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->arrayOfString:[Ljava/lang/String;

    const-string v3, "Unknown"

    aput-object v3, p0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string v3, "NetworkUtil"

    .line 359
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_6
    :goto_0
    sget-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->mHaveNetworkStatus:Z

    if-nez p0, :cond_7

    .line 363
    sput-boolean v2, Lcom/alibaba/analytics/core/network/NetworkUtil;->mHaveNetworkStatus:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :cond_7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 5

    .line 43
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unknown"

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v2, "connectivity"

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v0, "Wi-Fi"

    return-object v0

    .line 61
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkClass(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 164
    invoke-static {}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getWifiMacID23()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v1, "wifi"

    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 218
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->convertIntToIp(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "00:00:00:00:00:00"

    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v1, "wifi"

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static getWifiMacID23()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    const-string/jumbo v0, "wlan0"

    .line 174
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 178
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    const-string v4, "%02X%s"

    const/4 v5, 0x2

    .line 179
    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    array-length v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_0

    const-string v6, ":"

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method private static is5GHz(I)Z
    .locals 1

    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConnectInternet(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "connectivity"

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDevice5GSupported(Landroid/content/Context;)Z
    .locals 3

    .line 394
    sget-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->bCheck5GSupported:Z

    if-eqz v0, :cond_0

    .line 395
    sget-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 401
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p0

    sput-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 403
    sput-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z

    .line 406
    :goto_0
    sget-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->bCheck5GSupported:Z

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 408
    :catch_0
    :try_start_1
    sget-boolean p0, Lcom/alibaba/analytics/core/network/NetworkUtil;->b5GSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->bCheck5GSupported:Z

    return p0

    :goto_1
    sput-boolean v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->bCheck5GSupported:Z

    throw p0
.end method

.method public static isMobile(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 234
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v1, "2G"

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3G"

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4G"

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "NetworkUtil"

    const/4 v1, 0x1

    .line 238
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isMobile"

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 251
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v1, "Wi-Fi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NetworkUtil"

    const/4 v1, 0x1

    .line 252
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "isWifi"

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_0
    return v0
.end method

.method private static isWifi5G(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 373
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 379
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 380
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 383
    :cond_2
    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->is5GHz(I)Z

    move-result p0

    return p0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    sget-object v1, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusReceiver:Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->registerSIMCardChangedInHandler(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :catch_0
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusChecker:Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    invoke-virtual {v1, p0}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->setContext(Landroid/content/Context;)Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unRegister(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 283
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/network/NetworkUtil;->netStatusReceiver:Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;

    if-nez v0, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
