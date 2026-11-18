.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkChangeReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetWorkChangeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getConnectionType(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "3G\u7f51\u7edc\u6570\u636e"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "WIFI\u7f51\u7edc"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "NetWorkChangeReceiver"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v3, "wifi_state"

    .line 26
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive wifiState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "networkInfo"

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_3

    .line 41
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    const-string p2, "network connect -------- BaseService.TASK_TYPE_ALARM_SCHEDULE_SYNC_DATA "

    .line 43
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "schedule_sync_alarm_data"

    .line 44
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "onReceive network is not available ---------- "

    .line 47
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
