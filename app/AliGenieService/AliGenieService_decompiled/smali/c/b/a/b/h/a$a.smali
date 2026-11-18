.class public Lc/b/a/b/h/a$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/b/h/a;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/h/a$a;->a:Lc/b/a/b/h/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive battery broadcast type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lc/b/a/b/h/a;

    invoke-static {v3, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v3, Lc/b/a/b/k/b;

    invoke-direct {v3}, Lc/b/a/b/k/b;-><init>()V

    const-string v4, "event_type"

    const-string v5, "battery"

    invoke-virtual {v3, v4, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "charging"

    const/4 v6, 0x0

    const-string v7, "event_name"

    if-eqz v4, :cond_0

    invoke-virtual {v3, v7, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :goto_0
    const/4 v8, 0x1

    goto/16 :goto_a

    :cond_0
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "no_charged"

    :goto_1
    invoke-virtual {v3, v7, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_0

    :cond_1
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "low_battery"

    invoke-virtual {v3, v7, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const v1, 0x18a8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v3, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "ok_battery"

    goto :goto_1

    :cond_3
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "level"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v9, -0x1

    const-string v10, "status"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "health"

    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "temperature"

    invoke-virtual {v1, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v8, "plugged"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v16, v8

    const-string v8, "voltage"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v17, v12

    const-string v12, "present"

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, v0, Lc/b/a/b/h/a$a;->a:Lc/b/a/b/h/a;

    .line 1
    iget v0, v5, Lc/b/a/b/h/a;->c:I

    if-ne v0, v4, :cond_5

    .line 2
    iget v0, v5, Lc/b/a/b/h/a;->e:I

    if-ne v0, v13, :cond_5

    .line 3
    iget v0, v5, Lc/b/a/b/h/a;->d:I

    if-ne v0, v11, :cond_5

    .line 4
    iget v0, v5, Lc/b/a/b/h/a;->g:I

    if-eq v0, v6, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_5
    :goto_2
    const-string v0, "battery_status"

    .line 5
    invoke-virtual {v3, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v14, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "unknown"

    const/4 v2, 0x4

    const/4 v5, 0x2

    if-ne v11, v5, :cond_6

    move-object/from16 v7, v18

    :goto_3
    invoke-virtual {v3, v10, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_4

    :cond_6
    const/4 v7, 0x5

    if-ne v11, v7, :cond_7

    const-string v7, "full_battery"

    goto :goto_3

    :cond_7
    const/4 v7, 0x3

    if-ne v11, v7, :cond_8

    const-string v7, "discharging"

    goto :goto_3

    :cond_8
    if-ne v11, v2, :cond_9

    const-string v7, "not_chargind"

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    if-ne v11, v7, :cond_a

    invoke-virtual {v3, v10, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_a
    :goto_4
    if-ne v13, v5, :cond_b

    const-string v7, "good"

    move-object/from16 v8, v17

    :goto_5
    invoke-virtual {v3, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v8, v17

    if-ne v11, v2, :cond_c

    const-string v7, "dead"

    goto :goto_5

    :cond_c
    const/4 v7, 0x7

    if-ne v11, v7, :cond_d

    const-string v7, "cold"

    goto :goto_5

    :cond_d
    const/4 v7, 0x5

    if-ne v11, v7, :cond_e

    const-string v7, "over_voltage"

    goto :goto_5

    :cond_e
    const/4 v7, 0x3

    if-ne v11, v7, :cond_f

    const-string v7, "overheat"

    goto :goto_5

    :cond_f
    const/4 v7, 0x6

    if-ne v11, v7, :cond_10

    const-string v7, "unspecified_failure"

    goto :goto_5

    :cond_10
    const/4 v7, 0x1

    if-ne v11, v7, :cond_11

    invoke-virtual {v3, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_11
    :goto_6
    if-ne v6, v7, :cond_13

    const-string v0, "ac"

    move-object/from16 v8, v16

    :cond_12
    :goto_7
    invoke-virtual {v3, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-object/from16 v0, p0

    goto :goto_8

    :cond_13
    move-object/from16 v8, v16

    if-ne v6, v5, :cond_14

    const-string v0, "usb"

    goto :goto_7

    :cond_14
    if-ne v6, v2, :cond_12

    const-string v0, "wireless"

    goto :goto_7

    :goto_8
    iget-object v2, v0, Lc/b/a/b/h/a$a;->a:Lc/b/a/b/h/a;

    .line 6
    iput v4, v2, Lc/b/a/b/h/a;->c:I

    .line 7
    iput v11, v2, Lc/b/a/b/h/a;->d:I

    .line 8
    iput v13, v2, Lc/b/a/b/h/a;->e:I

    .line 9
    iput v15, v2, Lc/b/a/b/h/a;->f:I

    .line 10
    iput v6, v2, Lc/b/a/b/h/a;->g:I

    .line 11
    iput v9, v2, Lc/b/a/b/h/a;->h:I

    .line 12
    iput-boolean v1, v2, Lc/b/a/b/h/a;->i:Z

    move v8, v7

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_16

    .line 13
    invoke-static {v3}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_16
    return-void
.end method
