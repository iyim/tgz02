.class public Lcom/aligenie/ags/analytics/ICBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static a:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.ALI_BUTTON_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "intent.action.IC_COLLECT_ENGINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICBroadcastReceiver action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    sget-object v1, Lc/b/a/b/o/g;->P:Lc/b/a/b/d;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collect engine is null, ignore action:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;

    .line 3
    invoke-static {p1, p2, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v3, "Got action:"

    .line 4
    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;

    invoke-static {v3, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;

    const-string v4, "ACTION_DEVICE_STORAGE_LOW"

    .line 5
    invoke-static {v4, v3, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string p1, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "muted:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IC"

    invoke-static {v0, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput p1, Lc/b/a/b/o/g;->i:I

    goto/16 :goto_4

    :cond_2
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 7
    const-class p1, Lc/b/a/b/d;

    const-string p2, "time change event happen"

    invoke-static {p2, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean v4, v1, Lc/b/a/b/d;->d:Z

    .line 8
    iput v4, v1, Lc/b/a/b/d;->c:I

    const-wide/16 p1, 0x0

    iput-wide p1, v1, Lc/b/a/b/d;->e:J

    .line 9
    sget-object p1, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 10
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/b/a/b/o/h;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v5, 0xea60

    if-eqz v2, :cond_8

    const-string v0, "connectivity"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 13
    sget-boolean v0, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;->a:Z

    if-nez v0, :cond_7

    .line 14
    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15
    :goto_1
    sput-boolean v4, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;->a:Z

    goto :goto_2

    :cond_6
    sput-boolean v3, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;->a:Z

    .line 16
    :cond_7
    :goto_2
    sget-object v0, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$a;->a:Lcom/aligenie/ags/analytics/util/ICNetworkInfo;

    .line 17
    invoke-virtual {v0, p1}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a(Landroid/content/Context;)V

    new-instance v0, Lc/b/a/b/h/d;

    invoke-direct {v0, v1}, Lc/b/a/b/h/d;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/d;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_4

    :cond_8
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lc/b/a/b/h/u;

    invoke-direct {v0, v1}, Lc/b/a/b/h/u;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/u;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_4

    :cond_9
    const-string v2, "com.aligenie.ic.COLLECTOR_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    iget-object p1, v1, Lc/b/a/b/d;->l:Lc/b/a/b/h/p;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lc/b/a/b/h/p;->a()Z

    goto :goto_4

    :cond_a
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.intent.action.HDMISTATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v0}, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lc/b/a/b/h/t;

    invoke-direct {v0, v1}, Lc/b/a/b/h/t;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/t;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_4

    :cond_c
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    new-instance v0, Lc/b/a/b/h/b;

    invoke-direct {v0, v1}, Lc/b/a/b/h/b;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_4

    :cond_e
    :goto_3
    new-instance v0, Lc/b/a/b/h/g;

    invoke-direct {v0, v1}, Lc/b/a/b/h/g;-><init>(Lc/b/a/b/h/i$a;)V

    invoke-virtual {v0, p1, p2}, Lc/b/a/b/h/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 20
    iget-object p1, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f
    :goto_4
    return-void
.end method
