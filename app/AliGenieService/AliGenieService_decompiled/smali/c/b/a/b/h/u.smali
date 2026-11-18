.class public Lc/b/a/b/h/u;
.super Lc/b/a/b/h/h;
.source ""


# static fields
.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = "INIT_STATE"

.field public static h:I

.field public static i:I


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v0, -0x1

    sput v0, Lc/b/a/b/h/u;->h:I

    const/16 v0, -0x7f

    sput v0, Lc/b/a/b/h/u;->i:I

    return-void
.end method

.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/h;-><init>(Lc/b/a/b/h/i$a;)V

    const/4 p1, 0x0

    iput p1, p0, Lc/b/a/b/h/u;->d:I

    iput p1, p0, Lc/b/a/b/h/u;->e:I

    return-void
.end method

.method public static a(I)V
    .locals 3

    const-string v0, "WiFiInfoCollector"

    const/16 v1, -0x7f

    if-lt p0, v1, :cond_1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set rssi to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lc/b/a/b/h/u;->i:I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pass wrong rssi, return"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WiFiInfoCollector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "bssid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    const/16 v3, -0x457

    const-string v5, "reasonCode"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    const-string v6, "CONNECTED"

    .line 1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x1

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    sget-object v7, Lc/b/a/b/h/u;->g:Ljava/lang/String;

    if-eq v7, v1, :cond_0

    sput-object v5, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v7, "CONNECT_STATE, no need report. prev state: "

    invoke-static {v7}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lc/b/a/b/h/u;->g:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    const-string v5, "CONNECT_STATE, routerMac is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v3, v8, :cond_2

    const-string v5, "DISCONN_STATE, reasonCode is -1"

    :goto_0
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    sget-object v5, Lc/b/a/b/h/u;->g:Ljava/lang/String;

    if-eq v5, v1, :cond_3

    :goto_1
    sput-object v1, Lc/b/a/b/h/u;->g:Ljava/lang/String;

    move v5, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    if-eqz v5, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NoValue"

    .line 3
    iput-object v5, p0, Lc/b/a/b/h/u;->b:Ljava/lang/String;

    iput-object v5, p0, Lc/b/a/b/h/u;->c:Ljava/lang/String;

    iput v2, p0, Lc/b/a/b/h/u;->e:I

    iput v2, p0, Lc/b/a/b/h/u;->d:I

    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/16 v7, -0x7f

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lc/b/a/b/h/u;->c:Ljava/lang/String;

    iget-object v12, p0, Lc/b/a/b/h/u;->c:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iput-object v5, p0, Lc/b/a/b/h/u;->c:Ljava/lang/String;

    :cond_4
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    sput v5, Lc/b/a/b/h/u;->h:I

    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    if-eq v5, v7, :cond_6

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    sput v5, Lc/b/a/b/h/u;->i:I

    .line 4
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    sget v11, Lc/b/a/b/h/u;->h:I

    if-eq v11, v8, :cond_8

    iget v12, v5, Landroid/net/wifi/ScanResult;->frequency:I

    if-ne v12, v11, :cond_8

    iget v11, p0, Lc/b/a/b/h/u;->e:I

    add-int/2addr v11, v10

    iput v11, p0, Lc/b/a/b/h/u;->e:I

    :cond_8
    sget v11, Lc/b/a/b/h/u;->h:I

    iget v5, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v11, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(II)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lc/b/a/b/h/u;->d:I

    add-int/2addr v5, v10

    iput v5, p0, Lc/b/a/b/h/u;->d:I

    goto :goto_4

    :cond_9
    const-string p1, "ScanResults is null, or size is 0"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string p1, "mScanResultSize: "

    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v5, p0, Lc/b/a/b/h/u;->d:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCachedFrequency: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lc/b/a/b/h/u;->h:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFrequencyMatchRouterNum: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lc/b/a/b/h/u;->e:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string p1, "Router Mac is "

    .line 5
    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v5, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v4, 0x8

    if-lt p1, v4, :cond_c

    sget-object p1, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/h/u;->b:Ljava/lang/String;

    :cond_c
    const-string p1, "connectFail"

    const/16 v2, -0x457

    .line 6
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "localGenerated"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "event_type"

    const-string v4, "network"

    const-string v5, "event_name"

    const-string v8, "wifi_info"

    invoke-static {v2, v4, v5, v8}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    const-string v4, "state"

    invoke-virtual {v2, v4, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v4, "up_time"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v0, Lc/b/a/b/h/u;->f:Ljava/lang/String;

    const-string v4, "router_mac"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v0, p0, Lc/b/a/b/h/u;->b:Ljava/lang/String;

    const-string v4, "router_oui"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget v0, p0, Lc/b/a/b/h/u;->d:I

    if-lez v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "scan_result_size"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_d
    iget v0, p0, Lc/b/a/b/h/u;->e:I

    if-lez v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "freq_match_num"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_e
    sget v0, Lc/b/a/b/h/u;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "freq"

    invoke-virtual {v2, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lc/b/a/b/h/u;->c:Ljava/lang/String;

    const-string p2, "SSID"

    goto :goto_5

    :cond_f
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "connect_fail"

    invoke-virtual {v2, v0, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "reason_code"

    invoke-virtual {v2, v0, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "local_generated"

    :goto_5
    invoke-virtual {v2, p2, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_10
    sget p1, Lc/b/a/b/h/u;->i:I

    const-string p2, "rssi"

    if-ne p1, v7, :cond_11

    .line 7
    sget-object p1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;)I

    move-result p1

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    return v10

    :cond_12
    const-string p1, "Drop this broadcast"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v2
.end method
