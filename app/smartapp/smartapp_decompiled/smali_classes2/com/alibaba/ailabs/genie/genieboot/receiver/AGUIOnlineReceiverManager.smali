.class public Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;
.super Ljava/lang/Object;
.source "AGUIOnlineReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;


# instance fields
.field private receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;
    .locals 2

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->instance:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->instance:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->instance:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->instance:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    return-object v0
.end method


# virtual methods
.method public registerBrocast(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;-><init>(Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.alibaba.ailabs.genie.assistant.ONLINE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "BootApp"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGUIOnlineReceiverManager registerBrocast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unRetisterBrocast(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->receiver:Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;

    const-string p1, "BootApp"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGUIOnlineReceiverManager unRetisterBrocast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
