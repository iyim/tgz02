.class public Lorg/eclipse/paho/android/service/MqttService$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lorg/eclipse/paho/android/service/MqttService;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "Internal network status receive."

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "MQTT"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "Reconnect for Network recovery."

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "Online,reconnect."

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/MqttService;->b()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
