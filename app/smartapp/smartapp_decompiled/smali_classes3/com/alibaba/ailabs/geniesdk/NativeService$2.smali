.class Lcom/alibaba/ailabs/geniesdk/NativeService$2;
.super Landroid/content/BroadcastReceiver;
.source "NativeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/NativeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/NativeService;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "ACTION_BOND"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 336
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 340
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 341
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 342
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p2

    const/16 v0, 0x67

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getSpeakerStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    .line 344
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 347
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    const/16 v0, 0x68

    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getPowerStatus(Landroid/content/Intent;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    :cond_2
    const-string v1, "ACTION_BT_PAIR_CHANGED"

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    const/16 v5, 0x66

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    const-string p1, "param"

    .line 350
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    .line 351
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "reason"

    .line 352
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "param:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " status:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " reason:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object v2

    const-string v8, "discoverable"

    .line 355
    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_3

    const-string p1, "blue tooth open"

    .line 357
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput v7, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    goto :goto_0

    :cond_3
    const-string p1, "user"

    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "blue tooth closed by user"

    .line 361
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput v6, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    goto :goto_0

    :cond_4
    const-string p1, "timeout"

    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "blue tooth closed timeout"

    .line 364
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput v4, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    goto :goto_0

    .line 367
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blue tooth closed reason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput v6, v2, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    .line 372
    :cond_6
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    invoke-virtual {p1, v5, v2, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    :cond_7
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_9

    :cond_8
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xca

    if-eqz v0, :cond_9

    .line 383
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getScreenStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    :cond_9
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 385
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getScreenStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    :cond_a
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_e

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 387
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    if-ne p1, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_1

    :cond_c
    const/4 v6, -0x1

    :goto_1
    if-ne v6, v8, :cond_d

    return-void

    .line 398
    :cond_d
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object p1

    .line 399
    iput v6, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    .line 400
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p2

    invoke-virtual {p2, v5, p1, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    .line 401
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p2

    iget p1, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    invoke-interface {p2, v1, v9, p1, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_9

    :cond_e
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 404
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_23

    .line 406
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object p1

    .line 407
    iput v3, p1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    .line 408
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p2

    invoke-virtual {p2, v5, p1, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_9

    :cond_f
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 411
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_23

    .line 413
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p1

    invoke-interface {p1, v1, v9, v4, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_9

    :cond_10
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "unmute"

    const-wide/16 v5, 0x46

    const-string v10, "DO_MUTE"

    const-string v11, "DO_UNMUTE"

    if-eqz v0, :cond_14

    :try_start_1
    const-string p1, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 416
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    :cond_11
    move-object v10, v11

    .line 418
    :goto_2
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;-><init>(Lcom/alibaba/ailabs/geniesdk/NativeService$2;Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, p2, v5, v6, v0}, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->debounceBefore(Ljava/lang/Object;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    if-eqz p1, :cond_12

    const-string v1, "mute"

    .line 428
    :cond_12
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p2

    const/16 v0, 0x6b

    invoke-virtual {p2, v0, v1, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    .line 429
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_23

    .line 431
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p2

    const/16 v0, 0x271e

    if-eqz p1, :cond_13

    goto :goto_3

    :cond_13
    const/4 v3, 0x0

    :goto_3
    invoke-interface {p2, v0, v9, v3, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_9

    :cond_14
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 434
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  KeyEvent----->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne v3, p2, :cond_23

    .line 439
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_16

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_15

    return-void

    .line 445
    :cond_15
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->stopTts(I)V

    const/4 p1, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_17

    goto :goto_5

    :cond_17
    move-object v10, v11

    .line 452
    :goto_5
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/NativeService$2$2;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/geniesdk/NativeService$2$2;-><init>(Lcom/alibaba/ailabs/geniesdk/NativeService$2;Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, p2, v5, v6, v0}, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->debounceBefore(Ljava/lang/Object;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    if-eqz p1, :cond_18

    const-string v1, "mute"

    .line 462
    :cond_18
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p2

    const/16 v0, 0x6b

    invoke-virtual {p2, v0, v1, v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    .line 463
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_23

    .line 465
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p2

    const/16 v0, 0x271e

    if-eqz p1, :cond_19

    goto :goto_6

    :cond_19
    const/4 v3, 0x0

    :goto_6
    invoke-interface {p2, v0, v9, v3, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_9

    :cond_1a
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 469
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 471
    invoke-virtual {p1, v7, v7, v7, v9}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    .line 473
    :cond_1b
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object p1

    const/16 p2, 0x271c

    invoke-interface {p1, p2, v9, v7, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_9

    :cond_1c
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 474
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 477
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_7

    :cond_1d
    const-string p1, "com.alibab.ailabs.genie.assist.BATTERY_LOW"

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 480
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    const-string v0, "low_level_key"

    .line 481
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LOW_BATTERY_LEVEL----->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_1e

    const/4 p2, 0x5

    .line 484
    invoke-virtual {p1, p2, v7, v3, v9}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    goto :goto_9

    :cond_1e
    const/4 p2, 0x6

    .line 486
    invoke-virtual {p1, p2, v7, v3, v9}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    goto :goto_9

    :cond_1f
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 489
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    .line 490
    invoke-virtual {p1, v4, v7, v3, v9}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    goto :goto_9

    :cond_20
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 492
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    const/4 p2, 0x4

    .line 493
    invoke-virtual {p1, p2, v7, v3, v9}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->systemToNotify(IIILjava/lang/Object;)V

    goto :goto_9

    .line 478
    :cond_21
    :goto_7
    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->softWareUpLoad(Landroid/content/Context;)V

    goto :goto_9

    .line 339
    :cond_22
    :goto_8
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/NativeService;->access$000(Lcom/alibaba/ailabs/geniesdk/NativeService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_9
    return-void
.end method
