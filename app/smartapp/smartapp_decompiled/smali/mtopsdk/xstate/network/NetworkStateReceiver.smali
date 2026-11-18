.class public Lmtopsdk/xstate/network/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkStateReceiver"

.field static final TYPE_BLUETOOTH:I = 0x7

.field static final TYPE_DUMMY:I = 0x8

.field static final TYPE_ETHERNET:I = 0x9

.field static final TYPE_MOBILE:I = 0x0

.field static final TYPE_MOBILE_CBS:I = 0xc

.field static final TYPE_MOBILE_DUN:I = 0x4

.field static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field static final TYPE_MOBILE_FOTA:I = 0xa

.field static final TYPE_MOBILE_HIPRI:I = 0x5

.field static final TYPE_MOBILE_IA:I = 0xe

.field static final TYPE_MOBILE_IMS:I = 0xb

.field static final TYPE_MOBILE_MMS:I = 0x2

.field static final TYPE_MOBILE_SUPL:I = 0x3

.field static final TYPE_PROXY:I = 0x10

.field static final TYPE_VPN:I = 0x11

.field static final TYPE_WIFI:I = 0x1

.field static final TYPE_WIFI_P2P:I = 0xd

.field static final TYPE_WIMAX:I = 0x6

.field public static volatile apn:Ljava/lang/String; = "unknown"

.field public static volatile bssid:Ljava/lang/String; = ""

.field private static mConnectivityManager:Landroid/net/ConnectivityManager; = null

.field private static mWifiManager:Landroid/net/wifi/WifiManager; = null

.field public static volatile ssid:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getNetworkTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "VPN"

    return-object p0

    :pswitch_1
    const-string p0, "PROXY"

    return-object p0

    :pswitch_2
    const-string p0, "MOBILE_EMERGENCY"

    return-object p0

    :pswitch_3
    const-string p0, "MOBILE_IA"

    return-object p0

    :pswitch_4
    const-string p0, "WIFI_P2P"

    return-object p0

    :pswitch_5
    const-string p0, "MOBILE_CBS"

    return-object p0

    :pswitch_6
    const-string p0, "MOBILE_IMS"

    return-object p0

    :pswitch_7
    const-string p0, "MOBILE_FOTA"

    return-object p0

    :pswitch_8
    const-string p0, "ETHERNET"

    return-object p0

    :pswitch_9
    const-string p0, "DUMMY"

    return-object p0

    :pswitch_a
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_b
    const-string p0, "WIMAX"

    return-object p0

    :pswitch_c
    const-string p0, "MOBILE_HIPRI"

    return-object p0

    :pswitch_d
    const-string p0, "MOBILE_DUN"

    return-object p0

    :pswitch_e
    const-string p0, "MOBILE_SUPL"

    return-object p0

    :pswitch_f
    const-string p0, "MOBILE_MMS"

    return-object p0

    :pswitch_10
    const-string p0, "WIFI"

    return-object p0

    :pswitch_11
    const-string p0, "MOBILE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_7

    .line 149
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cmwap"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "uniwap"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "3gwap"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    const-string v0, "ctwap"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    const-string v0, "cmnet"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v0, "uninet"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    const-string v0, "3gnet"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_6
    const-string v0, "ctnet"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v0

    :cond_7
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 40
    sget-object p2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "mtopsdk.NetworkStateReceiver"

    const-string v0, "[onReceive] networkStateReceiver onReceive"

    .line 41
    invoke-static {p2, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance p2, Lmtopsdk/xstate/network/NetworkStateReceiver$1;

    invoke-direct {p2, p0, p1}, Lmtopsdk/xstate/network/NetworkStateReceiver$1;-><init>(Lmtopsdk/xstate/network/NetworkStateReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method updateNetworkStatus(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    const-string v0, "mtopsdk.NetworkStateReceiver"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 64
    :try_start_0
    sget-object v2, Lmtopsdk/xstate/network/NetworkStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    const-string v2, "connectivity"

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lmtopsdk/xstate/network/NetworkStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    :cond_1
    sget-object v2, Lmtopsdk/xstate/network/NetworkStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getNetworkInfo error."

    .line 69
    invoke-static {v0, v3, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    const-string v3, "netType"

    const-string v4, "nq"

    if-eqz v2, :cond_b

    .line 72
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 82
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 83
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNetworkStatus] NetworkInfo isConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAvailable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lmtopsdk/xstate/network/NetworkStateReceiver;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v5, :cond_9

    const/4 v2, 0x1

    if-eq v5, v2, :cond_5

    const/16 p1, 0x9

    if-eq v5, p1, :cond_4

    .line 125
    invoke-static {v5}, Lmtopsdk/xstate/network/NetworkStateReceiver;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v4, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v3, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :cond_4
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_ETHERNET:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_ETHERNET:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 101
    :cond_5
    :try_start_1
    sget-object v2, Lmtopsdk/xstate/network/NetworkStateReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_6

    const-string/jumbo v2, "wifi"

    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    sput-object p1, Lmtopsdk/xstate/network/NetworkStateReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 104
    :cond_6
    sget-object p1, Lmtopsdk/xstate/network/NetworkStateReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v2, "[updateNetworkStatus]getWifiInfo error."

    .line 106
    invoke-static {v0, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v1, :cond_7

    .line 110
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmtopsdk/xstate/network/NetworkStateReceiver;->bssid:Ljava/lang/String;

    .line 111
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmtopsdk/xstate/network/NetworkStateReceiver;->ssid:Ljava/lang/String;

    .line 114
    :cond_7
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateNetworkStatus]WIFI network.ssid= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmtopsdk/xstate/network/NetworkStateReceiver;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bssid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmtopsdk/xstate/network/NetworkStateReceiver;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_8
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_9
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    .line 89
    invoke-static {p1}, Lmtopsdk/xstate/network/NetworkStatus;->getNetworkClassByType(I)Lmtopsdk/xstate/NetworkClassEnum;

    move-result-object v1

    .line 90
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateNetworkStatus]Mobile network,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_a
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmtopsdk/xstate/network/NetworkStateReceiver;->parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmtopsdk/xstate/network/NetworkStateReceiver;->apn:Ljava/lang/String;

    .line 94
    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lmtopsdk/xstate/network/NetworkStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 73
    :cond_b
    :goto_3
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "[updateNetworkStatus]no network"

    .line 74
    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_c
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p1, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {p1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
