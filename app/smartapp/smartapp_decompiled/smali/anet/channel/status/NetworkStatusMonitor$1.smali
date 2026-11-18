.class final Lanet/channel/status/NetworkStatusMonitor$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/status/NetworkStatusMonitor;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 104
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "awcn.NetworkStatusMonitor"

    const-string v1, "network onAvailable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 105
    sput-boolean p1, Lanet/channel/status/NetworkStatusMonitor;->isNetworkAvailable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lanet/channel/status/NetworkStatusMonitor;->dnsServers:Ljava/util/List;

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 97
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "awcn.NetworkStatusMonitor"

    const-string v2, "network onLost"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sput-boolean p1, Lanet/channel/status/NetworkStatusMonitor;->isNetworkAvailable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
