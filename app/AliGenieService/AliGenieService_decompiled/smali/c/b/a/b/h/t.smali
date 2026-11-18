.class public Lc/b/a/b/h/t;
.super Lc/b/a/b/h/h;
.source ""


# static fields
.field public static b:I


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/h;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-class v2, Lc/b/a/b/h/t;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lc/b/a/b/i/p;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v5, "system_status"

    invoke-direct {v7, v8, v9, v5}, Lc/b/a/b/i/p;-><init>(JLjava/lang/String;)V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "no_electricity"

    const-string v9, "normal"

    const-string v10, "1"

    const-string v11, "persist.sys.bootvideo.mute"

    const-string v12, "system"

    const-string v13, "value"

    const-string v14, "event_name"

    const-string v15, "event_type"

    const/16 v16, 0x1

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v15, v12}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v1, "boot_completed"

    invoke-virtual {v7, v14, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startup_time"

    invoke-virtual {v7, v2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "up_time"

    invoke-virtual {v7, v2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v15, v12}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v1, "shutdown"

    invoke-virtual {v7, v14, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v7, v13, v8}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v7, v13, v9}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    goto/16 :goto_4

    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "com.updatePackage"

    const-string v6, "com.updateActivity"

    if-eqz v4, :cond_3

    const-string v0, "screen_status"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "on"

    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const/4 v0, 0x0

    sput v0, Lc/b/a/b/o/g;->g:I

    invoke-static {}, Lc/b/a/b/h/p;->c()V

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v0, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/b/a/b/o/j;

    invoke-direct {v2, v6, v1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lc/b/a/b/o/j;

    invoke-direct {v2, v5, v0}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, ""

    if-eqz v4, :cond_4

    sput-object v8, Lc/b/a/b/o/g;->j:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->k:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->l:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->m:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->n:Ljava/lang/String;

    sput v16, Lc/b/a/b/o/g;->g:I

    invoke-static {}, Lc/b/a/b/h/p;->c()V

    const-string v0, "screen_status"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "off"

    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    new-instance v0, Lc/b/a/b/o/j;

    const-string v1, "screen_off"

    invoke-direct {v0, v6, v1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lc/b/a/b/o/j;

    const-string v2, "screen_off"

    invoke-direct {v1, v5, v2}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sput-object v8, Lc/b/a/b/o/g;->j:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->k:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->l:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->m:Ljava/lang/String;

    sput-object v8, Lc/b/a/b/o/g;->n:Ljava/lang/String;

    sput v16, Lc/b/a/b/o/g;->h:I

    invoke-static {}, Lc/b/a/b/h/p;->c()V

    const-string v0, "screen_saver"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "dreaming_start"

    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    new-instance v0, Lc/b/a/b/o/j;

    const-string v1, "dream_start"

    invoke-direct {v0, v6, v1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lc/b/a/b/o/j;

    const-string v2, "dream_start"

    invoke-direct {v1, v5, v2}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "screen_saver"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "dreaming_stop"

    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const/4 v0, 0x0

    sput v0, Lc/b/a/b/o/g;->h:I

    invoke-static {}, Lc/b/a/b/h/p;->c()V

    .line 5
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v0, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/b/a/b/o/j;

    invoke-direct {v2, v6, v1}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lc/b/a/b/o/j;

    invoke-direct {v2, v5, v0}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    const-string v4, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "genie_account"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "bind"

    goto/16 :goto_3

    :cond_7
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sget v1, Lc/b/a/b/h/t;->b:I

    if-eq v0, v1, :cond_8

    sput v0, Lc/b/a/b/h/t;->b:I

    invoke-virtual {v7, v15, v12}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "volume_change"

    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    sget v0, Lc/b/a/b/h/t;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/b/a/b/h/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_9
    const-string v4, "android.media.ALI_BUTTON_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v3, "aliKeyName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isKeyDown"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "key_down = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v1, :cond_a

    const-string v1, "button"

    invoke-virtual {v7, v15, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v7, v14, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    goto :goto_4

    :cond_a
    move v0, v5

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    const-string v4, "intent.action.IC_COLLECT_ENGINE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "eventType"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "eventName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ext"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "event name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v7, v14, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v7, v13, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    goto :goto_4

    :cond_c
    const-string v1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "genie_account"

    invoke-virtual {v7, v15, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "unbind"

    :goto_3
    invoke-virtual {v7, v14, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    :goto_4
    move/from16 v0, v16

    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    .line 9
    iget-object v1, v0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v1, Lc/b/a/b/d;

    .line 10
    iget-object v1, v1, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v1, v7}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    :goto_6
    return v16
.end method
