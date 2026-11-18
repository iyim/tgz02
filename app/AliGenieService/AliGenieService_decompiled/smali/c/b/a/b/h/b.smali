.class public Lc/b/a/b/h/b;
.super Lc/b/a/b/h/h;
.source ""


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/h;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "disconnected"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v1, "connected"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v1, "connecting"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string v1, "disconnecting"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "class"

    const-string v7, "address"

    const-string v8, "elapsed_real_time"

    const-string v9, "name"

    const-string v10, "prev_state"

    const-string v11, "state"

    const-string v12, "event_name"

    const-string v13, "bt_config"

    const-string v14, "event_type"

    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 p1, v2

    const/4 v2, -0x1

    const/16 v16, 0x0

    if-eqz v5, :cond_6

    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v0, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v17, "bonding"

    move-object/from16 p1, v1

    const/16 v1, 0xb

    const-string v18, "none"

    const-string v19, "bonded"

    move-object/from16 v20, v7

    const/16 v7, 0xc

    if-ne v15, v1, :cond_1

    move-object/from16 v5, v17

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_2

    move-object/from16 v5, v19

    goto :goto_0

    :cond_2
    move-object/from16 v5, v18

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v1, :cond_3

    move-object/from16 v18, v17

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_4

    move-object/from16 v18, v19

    :cond_4
    :goto_1
    move-object/from16 v0, v18

    new-instance v1, Lc/b/a/b/i/c;

    move-object/from16 v17, v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v3, "bt_bond_state"

    invoke-direct {v1, v7, v8, v3}, Lc/b/a/b/i/c;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v14, v13}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v1, v12, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v1, v11, v5}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v1, v10, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    :cond_5
    invoke-virtual {v1, v9, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-virtual {v1, v5, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-object/from16 v0, p1

    move-object/from16 v7, v20

    invoke-virtual {v1, v7, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v2, Lc/b/a/b/d;

    .line 2
    iget-object v2, v2, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v2, v1}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    goto/16 :goto_2

    :cond_6
    move-object v5, v8

    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v2, p1

    .line 3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v8, -0x1

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v7

    const-string v7, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lc/b/a/b/h/b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7}, Lc/b/a/b/h/b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    new-instance v15, Lc/b/a/b/i/c;

    move-object/from16 p1, v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v3, "bt_connection_state"

    invoke-direct {v15, v0, v1, v3}, Lc/b/a/b/i/c;-><init>(JLjava/lang/String;)V

    invoke-virtual {v15, v14, v13}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v15, v12, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v15, v11, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v15, v10, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    :cond_8
    invoke-virtual {v15, v9, v8}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v5, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v15, v1, v0}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v1, Lc/b/a/b/d;

    .line 5
    iget-object v1, v1, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v1, v15}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    :cond_9
    :goto_2
    const/4 v1, 0x1

    return v1
.end method
