.class public Lanet/channel/status/NetworkStatusHelper;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;,
        Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.NetworkStatusHelper"

.field static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .locals 1

    .line 70
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getApn()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public static getDnsServerAddress()Ljava/lang/String;
    .locals 2

    .line 133
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->dnsServers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->getDnsServerFromSystemProperties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkSubType()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyType()Ljava/lang/String;
    .locals 3

    .line 171
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 172
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "proxy"

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    const-string/jumbo v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 176
    :cond_1
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lanet/channel/util/ProxySetting;->get()Lanet/channel/util/ProxySetting;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "auth"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static getSimOp()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->simOp:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .line 96
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static getWifiBSSID()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiProxy()Landroid/util/Pair;
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

    .line 188
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->proxy:Landroid/util/Pair;

    return-object v0
.end method

.method public static getWifiSSID()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public static isConnected()Z
    .locals 3

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 141
    sget-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isNetworkAvailable:Z

    if-eqz v0, :cond_1

    return v1

    .line 145
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v2, :cond_1

    return v1

    .line 151
    :cond_1
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :catch_0
    :goto_0
    return v1
.end method

.method public static isProxy()Z
    .locals 3

    .line 159
    sget-object v0, Lanet/channel/status/NetworkStatusMonitor;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 160
    sget-object v1, Lanet/channel/status/NetworkStatusMonitor;->apn:Ljava/lang/String;

    .line 161
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "wap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lanet/channel/util/ProxySetting;->get()Lanet/channel/util/ProxySetting;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isRoaming()Z
    .locals 1

    .line 121
    sget-boolean v0, Lanet/channel/status/NetworkStatusMonitor;->isRoaming:Z

    return v0
.end method

.method static notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 1

    .line 78
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$1;

    invoke-direct {v0, p0}, Lanet/channel/status/NetworkStatusHelper$1;-><init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static printNetworkDetail()V
    .locals 4

    .line 196
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\nNetwork detail*******************************\n"

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Status: "

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Subtype: "

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v3, :cond_1

    .line 202
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Apn: "

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Carrier: "

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "BSSID: "

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "SSID: "

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Proxy: "

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getProxyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "ProxyHost: "

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ProxyPort: "

    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "*********************************************"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "awcn.NetworkStatusHelper"

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V
    .locals 1

    .line 74
    sget-object v0, Lanet/channel/status/NetworkStatusHelper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized startListener(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lanet/channel/status/NetworkStatusHelper;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    sput-object p0, Lanet/channel/status/NetworkStatusMonitor;->context:Landroid/content/Context;

    .line 61
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->registerNetworkReceiver()V

    .line 62
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->registerNetworkCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public stopListener(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-static {}, Lanet/channel/status/NetworkStatusMonitor;->unregisterNetworkReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
