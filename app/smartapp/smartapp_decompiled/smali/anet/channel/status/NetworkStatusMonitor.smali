.class Lanet/channel/status/NetworkStatusMonitor;
.super Ljava/lang/Object;
.source "NetworkStatusMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.NetworkStatusMonitor"

.field static volatile apn:Ljava/lang/String;

.field static volatile bssid:Ljava/lang/String;

.field static volatile carrier:Ljava/lang/String;

.field static volatile context:Landroid/content/Context;

.field private static dftDnsNames:[Ljava/lang/String;

.field static volatile dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static getSubInfoMethod:Ljava/lang/reflect/Method;

.field static volatile isNetworkAvailable:Z

.field private static volatile isRegistered:Z

.field static volatile isRoaming:Z

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field static volatile proxy:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static receiver:Landroid/content/BroadcastReceiver;

.field static volatile simOp:Ljava/lang/String;

.field static volatile ssid:Ljava/lang/String;

.field static volatile status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field static volatile subType:Ljava/lang/String;

.field private static subscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "net.dns1"

    const-string v1, "net.dns2"

    const-string v2, "net.dns3"

    const-string v3, "net.dns4"

    .line 38
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->dftDnsNames:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 42
    sput-boolean v1, Lanet/channel/status/NetworkStatusMonitor;->isNetworkAvailable:Z

    .line 43
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sput-object v2, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v2, "unknown"

    .line 44
    sput-object v2, Lanet/channel/status/NetworkStatusMonitor;->subType:Ljava/lang/String;

    const-string v3, ""

    .line 45
    sput-object v3, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    .line 46
    sput-object v3, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    .line 47
    sput-object v3, Lanet/channel/status/NetworkStatusMonitor;->bssid:Ljava/lang/String;

    .line 48
    sput-object v2, Lanet/channel/status/NetworkStatusMonitor;->carrier:Ljava/lang/String;

    .line 49
    sput-object v3, Lanet/channel/status/NetworkStatusMonitor;->simOp:Ljava/lang/String;

    .line 50
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->proxy:Landroid/util/Pair;

    .line 51
    sput-boolean v1, Lanet/channel/status/NetworkStatusMonitor;->isRoaming:Z

    .line 52
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v2, Lanet/channel/status/NetworkStatusMonitor;->dnsServers:Ljava/util/List;

    .line 54
    sput-boolean v1, Lanet/channel/status/NetworkStatusMonitor;->isRegistered:Z

    .line 55
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 111
    new-instance v0, Lanet/channel/status/NetworkStatusMonitor$2;

    invoke-direct {v0}, Lanet/channel/status/NetworkStatusMonitor$2;-><init>()V

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->receiver:Landroid/content/BroadcastReceiver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static checkNetworkStatus()V
    .locals 15

    const-string/jumbo v0, "wifi"

    const-string/jumbo v1, "unknown"

    const-string v2, "no network"

    const-string v3, "checkNetworkStatus"

    const/4 v4, 0x0

    .line 127
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "awcn.NetworkStatusMonitor"

    const/4 v7, 0x0

    const-string v8, "[checkNetworkStatus]"

    invoke-static {v6, v8, v7, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    sget-object v5, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 129
    sget-object v8, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    .line 130
    sget-object v9, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    const/4 v10, 0x1

    .line 135
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v11

    const/4 v11, 0x0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string v12, "getNetworkInfo exception"

    .line 137
    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v6, v12, v7, v11, v13}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 138
    sget-object v11, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v11, v1}, Lanet/channel/status/NetworkStatusMonitor;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    move-object v12, v7

    const/4 v11, 0x1

    :goto_0
    const/4 v13, 0x2

    if-nez v11, :cond_6

    if-eqz v12, :cond_5

    .line 143
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x4

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    const-string v11, "info.isConnected"

    aput-object v11, v2, v4

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v2, v10

    const-string v11, "info.isAvailable"

    aput-object v11, v2, v13

    const/4 v11, 0x3

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v2, v11

    invoke-static {v6, v3, v7, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, ""

    if-nez v1, :cond_1

    :try_start_2
    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_1
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0, v2}, Lanet/channel/status/NetworkStatusMonitor;->parseNetworkStatus(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0, v2}, Lanet/channel/status/NetworkStatusMonitor;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/status/NetworkStatusMonitor;->parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    .line 153
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->parseCarrierInfo()V

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 155
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v1, v0}, Lanet/channel/status/NetworkStatusMonitor;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lanet/channel/status/NetworkStatusMonitor;->bssid:Ljava/lang/String;

    .line 159
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    .line 161
    :cond_3
    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->carrier:Ljava/lang/String;

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->simOp:Ljava/lang/String;

    .line 162
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->parseWifiProxy()Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->proxy:Landroid/util/Pair;

    goto :goto_1

    .line 164
    :cond_4
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, v1}, Lanet/channel/status/NetworkStatusMonitor;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 166
    :goto_1
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    sput-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isRoaming:Z

    .line 167
    invoke-static {}, Lanet/channel/util/Inet64Util;->startIpStackDetect()V

    goto :goto_3

    .line 144
    :cond_5
    :goto_2
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, v2}, Lanet/channel/status/NetworkStatusMonitor;->resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V

    .line 145
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-static {v6, v3, v7, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_6
    :goto_3
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v5, :cond_7

    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 172
    :cond_7
    invoke-static {v13}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V

    .line 176
    :cond_8
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 179
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    return-void
.end method

.method static getDnsServerFromSystemProperties()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 292
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 293
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 294
    sget-object v2, Lanet/channel/status/NetworkStatusMonitor;->dftDnsNames:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v2, v5

    .line 295
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v6

    invoke-virtual {v1, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 296
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_0

    return-object v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method static getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 259
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 262
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 5

    const/4 v0, 0x0

    .line 268
    :try_start_0
    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lanet/channel/status/NetworkStatusMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 271
    :cond_0
    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 273
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.NetworkStatusMonitor"

    const-string v4, "getWifiInfo"

    invoke-static {v3, v4, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private static parseCarrierInfo()V
    .locals 4

    .line 239
    :try_start_0
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 242
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->simOp:Ljava/lang/String;

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 245
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 246
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 247
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefaultDataSubscriptionInfo"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->getSubInfoMethod:Ljava/lang/reflect/Method;

    .line 249
    :cond_1
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->getSubInfoMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->getSubInfoMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lanet/channel/status/NetworkStatusMonitor;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 251
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanet/channel/status/NetworkStatusMonitor;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_7

    .line 212
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cmwap"

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "uniwap"

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "3gwap"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "ctwap"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    const-string v0, "cmnet"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v0, "uninet"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    const-string v0, "3gnet"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_6
    const-string v0, "ctnet"

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    return-object v1
.end method

.method private static parseNetworkStatus(ILjava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "TD-SCDMA"

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "WCDMA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CDMA2000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 201
    :pswitch_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 199
    :pswitch_1
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 197
    :pswitch_2
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 206
    :cond_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    .line 204
    :cond_1
    :goto_0
    sget-object p0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseWifiProxy()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "http.proxyHost"

    .line 280
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http.proxyPort"

    .line 282
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static registerNetworkCallback()V
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 84
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isNetworkAvailable:Z

    .line 87
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Lanet/channel/status/NetworkStatusMonitor$1;

    invoke-direct {v1}, Lanet/channel/status/NetworkStatusMonitor$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method static registerNetworkReceiver()V
    .locals 4

    .line 63
    sget-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isRegistered:Z

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    :try_start_0
    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    sget-object v2, Lanet/channel/status/NetworkStatusMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.NetworkStatusMonitor"

    const-string/jumbo v3, "registerReceiver failed"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->checkNetworkStatus()V

    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isRegistered:Z

    :cond_0
    return-void
.end method

.method private static resetStatus(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;Ljava/lang/String;)V
    .locals 0

    .line 184
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 185
    sput-object p1, Lanet/channel/status/NetworkStatusMonitor;->subType:Ljava/lang/String;

    const-string p0, ""

    .line 186
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    .line 187
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    .line 188
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->bssid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 189
    sput-object p1, Lanet/channel/status/NetworkStatusMonitor;->proxy:Landroid/util/Pair;

    .line 190
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->carrier:Ljava/lang/String;

    .line 191
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->simOp:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static unregisterNetworkReceiver()V
    .locals 2

    .line 77
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
