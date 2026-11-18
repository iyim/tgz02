.class public Lc/b/a/b/h/s;
.super Lc/b/a/b/h/j;
.source ""


# static fields
.field public static c:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lc/b/a/b/o/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/app/ActivityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/b/a/b/h/j;-><init>(Lc/b/a/b/h/i$a;)V

    .line 1
    sget-object p1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const-string v0, "activity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lc/b/a/b/h/s;->b:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "unknown"

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "full"

    goto :goto_0

    :cond_1
    const-string v1, "low"

    goto :goto_0

    :cond_2
    const-string v1, "normal"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public a(Landroid/util/EventLog$Event;)Z
    .locals 26

    move-object/from16 v0, p0

    const-class v1, Lc/b/a/b/h/s;

    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getTag()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    return v9

    :cond_0
    new-instance v15, Lc/b/a/b/k/b;

    invoke-direct {v15}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "storage_state"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "am_meminfo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "am_process_start_timeout"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "am_finish_activity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "am_create_activity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x0

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "am_activity_launch_time"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "am_on_paused_called"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "boot_progress_start"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "am_process_crashed_too_much"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "volume_changed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "boot_progress_system_run"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "am_new_intent"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "am_on_resume_called"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "am_proc_start"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x5

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "frame_rate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x18

    goto/16 :goto_1

    :sswitch_f
    const-string v9, "boot_progress_ams_ready"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string v9, "am_service_crashed_too_much"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x13

    goto :goto_1

    :sswitch_11
    const-string v9, "am_kill"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x11

    goto :goto_1

    :sswitch_12
    const-string v9, "am_destroy_activity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_13
    const-string v9, "am_proc_died"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_14
    const-string v9, "am_anr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x10

    goto :goto_1

    :sswitch_15
    const-string v9, "frame_drop_cause"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x17

    goto :goto_1

    :sswitch_16
    const-string v9, "boot_progress_enable_screen"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xf

    goto :goto_1

    :sswitch_17
    const-string v9, "boot_progress_pms_ready"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xd

    goto :goto_1

    :sswitch_18
    const-string v9, "am_crash"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0xa

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, -0x1

    :goto_1
    const-string v8, "errorCode"

    const-string v10, "process_name"

    const-string v12, "label"

    const-string v13, "pid"

    const-wide/16 v16, 0x400

    const-string v14, "app_version"

    const-string v11, "am"

    move-wide/from16 v19, v5

    const-string v5, "event_type"

    const-string v6, "event_name"

    move-wide/from16 v21, v3

    const-string v3, "package_name"

    const-string v4, "class java.lang.Integer"

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_2
    move-object v10, v15

    goto/16 :goto_1a

    :pswitch_0
    if-eqz v7, :cond_2

    check-cast v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v8, 0x4

    aget-object v8, v7, v8

    check-cast v8, Ljava/lang/Integer;

    const/4 v9, 0x5

    aget-object v7, v7, v9

    check-cast v7, Ljava/lang/Integer;

    const-string v9, "graphics"

    invoke-virtual {v15, v5, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "frame_rate"

    invoke-virtual {v15, v6, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "windowName"

    invoke-virtual {v15, v9, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "drewFrameCnt"

    invoke-virtual {v15, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "droppedFrameCnt"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "perceptibleDroppedCnt"

    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "seriousDroppedCnt"

    invoke-virtual {v15, v1, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "minFrameRate"

    invoke-virtual {v15, v1, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_2

    :pswitch_1
    if-eqz v7, :cond_2

    check-cast v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Long;

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v8, v7, v8

    check-cast v8, Ljava/lang/Long;

    const/4 v9, 0x5

    aget-object v9, v7, v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Long;

    const-string v10, "graphics"

    invoke-virtual {v15, v5, v10}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v10, "frame_drop_cause"

    invoke-virtual {v15, v6, v10}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v10, "procName"

    invoke-virtual {v15, v10, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "windowName"

    invoke-virtual {v15, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "totalDuration"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v1, "endTs"

    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "maxFrameDuration"

    invoke-virtual {v15, v1, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v1, "appCause"

    invoke-virtual {v15, v1, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "frameNum"

    invoke-virtual {v15, v1, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    goto/16 :goto_2

    :pswitch_2
    if-eqz v7, :cond_2

    check-cast v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "system"

    invoke-virtual {v15, v5, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "volume_change_v2"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "stream"

    invoke-virtual {v15, v7, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "prev_level"

    invoke-virtual {v15, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "level"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "caller"

    goto/16 :goto_3

    :pswitch_3
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lc/b/a/b/h/s;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lc/b/a/b/h/s;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Long;

    const/4 v9, 0x4

    aget-object v7, v7, v9

    check-cast v7, Ljava/lang/Long;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "disk"

    invoke-virtual {v15, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "critical"

    invoke-virtual {v15, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "old_state"

    invoke-virtual {v15, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "new_state"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long v1, v1, v16

    div-long v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "usable_mb"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long v1, v1, v16

    div-long v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_mb"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v1, "full"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x18a89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v8, 0x64

    mul-long/2addr v1, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v1, v7

    const-wide/16 v7, 0xa

    cmp-long v1, v1, v7

    if-lez v1, :cond_4

    const-string v1, "low"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "full"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1
    sget-object v1, Lc/b/a/b/o/g;->P:Lc/b/a/b/d;

    if-eqz v1, :cond_2

    :cond_4
    sget-object v1, Lc/b/a/b/o/g;->P:Lc/b/a/b/d;

    .line 2
    invoke-virtual {v1}, Lc/b/a/b/d;->a()V

    goto/16 :goto_2

    :pswitch_4
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "process_start_timeout"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "uid"

    invoke-virtual {v15, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v4}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v4}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v4}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto/16 :goto_2

    :pswitch_5
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v7, v7, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "service_crashed_too_much"

    invoke-virtual {v15, v6, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const/16 v1, 0x2f

    invoke-static {v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v12, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v3, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v9}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "component_name"

    invoke-virtual {v15, v3, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "service"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "crash_count"

    invoke-virtual {v15, v1, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const v1, 0x1925d

    goto/16 :goto_8

    :pswitch_6
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v4, "process_crashed_too_much"

    invoke-virtual {v15, v6, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const v1, 0x1925c

    goto/16 :goto_8

    :pswitch_7
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "kill"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "oom_adj"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "reason"

    :goto_3
    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto/16 :goto_2

    :pswitch_8
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "anr"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "flags"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "reason"

    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const v1, 0x1925a

    goto/16 :goto_8

    :pswitch_9
    if-eqz v7, :cond_2

    const-string v1, "boot_progress"

    invoke-virtual {v15, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v7, Ljava/lang/Integer;

    const-string v1, "used_time_ms"

    invoke-virtual {v15, v1, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_4

    :cond_5
    check-cast v7, Ljava/lang/Long;

    const-string v1, "used_time_ms"

    invoke-virtual {v15, v1, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :goto_4
    const-string v1, "sys.genie.boot_completed"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "debug.reboot.android"

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "full"

    goto :goto_5

    :cond_6
    const-string v4, "userspace"

    :goto_5
    const-string v7, "boot_type"

    invoke-virtual {v15, v7, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "boot_progress_enable_screen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-lez v3, :cond_2

    const/16 v1, 0xa

    if-gt v3, v1, :cond_2

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug.reboot.android"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logcat -s Watchdog -s ActivityManager -s AndroidRuntime -d"

    const-string v2, "android_reboot"

    invoke-static {v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v1, "sys.genie.boot_completed"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    const-string v1, "GetValueNull"

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast v7, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    array-length v9, v7

    const/16 v13, 0x8

    if-ne v9, v13, :cond_8

    const/4 v1, 0x6

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v7, v7, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v25, v7

    move-object v7, v1

    move-object/from16 v1, v25

    goto :goto_6

    :cond_8
    move-object v7, v1

    :goto_6
    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    goto :goto_7

    :cond_9
    const-string v2, "IC"

    const-string v3, "Error when collect am crash: eventData\'s type is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v7, v4

    :goto_7
    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "crash"

    invoke-virtual {v15, v6, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v12, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "package"

    invoke-virtual {v15, v10, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "exception"

    invoke-virtual {v15, v9, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "message"

    invoke-virtual {v15, v3, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "file"

    invoke-virtual {v15, v3, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v3, "line"

    invoke-virtual {v15, v3, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x18a8c

    goto :goto_8

    :cond_a
    const v1, 0x19259

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto/16 :goto_2

    :pswitch_b
    const-wide/16 v2, 0x0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    check-cast v7, [Ljava/lang/Object;

    array-length v4, v7

    const/4 v8, 0x5

    if-ne v4, v8, :cond_c

    const/4 v4, 0x0

    aget-object v4, v7, v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    aget-object v4, v7, v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    aget-object v8, v7, v4

    instance-of v4, v8, Ljava/lang/Long;

    if-eqz v4, :cond_b

    const/4 v4, 0x3

    aget-object v4, v7, v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    aget-object v4, v7, v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_b

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long v2, v1, v16

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long v8, v8, v16

    const/4 v1, 0x2

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    div-long v12, v12, v16

    const/4 v1, 0x3

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v18, v18, v16

    const/4 v1, 0x4

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    div-long v16, v23, v16

    goto :goto_a

    :cond_b
    const-string v4, "Error when collect am meminfo: eventDataArray[]\'s type is wrong!"

    goto :goto_9

    :cond_c
    const-string v4, "Error when collect am meminfo: eventData\'s type is wrong!"

    :goto_9
    const/4 v7, 0x0

    .line 3
    invoke-static {v4, v1, v7}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    move-wide v8, v2

    move-wide v12, v8

    move-wide/from16 v16, v12

    move-wide/from16 v18, v16

    .line 4
    :goto_a
    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "meminfo"

    invoke-virtual {v15, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cached"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "free"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "zram"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "kernel"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v15, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    goto/16 :goto_2

    :pswitch_c
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    aget-object v3, v7, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "component_name"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "reason"

    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am_on_resume_called"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v1

    sget-object v2, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/o/m;

    iget v7, v4, Lc/b/a/b/o/m;->a:I

    if-ne v7, v1, :cond_d

    iget-object v7, v4, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    iput-boolean v7, v4, Lc/b/a/b/o/m;->e:Z

    goto :goto_c

    :cond_e
    const/4 v7, 0x1

    invoke-virtual {v4, v3}, Lc/b/a/b/o/m;->a(Ljava/lang/String;)V

    :goto_c
    iget-object v4, v4, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/o/m$a;

    iget v8, v4, Lc/b/a/b/o/m$a;->a:I

    add-int/2addr v8, v7

    iput v8, v4, Lc/b/a/b/o/m$a;->a:I

    goto :goto_b

    :pswitch_d
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v7, [Ljava/lang/Object;

    array-length v1, v7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "proc_died"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "package"

    invoke-virtual {v15, v7, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v12, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "oom_adj"

    invoke-virtual {v15, v1, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v1, "proc_stat"

    invoke-virtual {v15, v1, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xd

    if-ge v1, v3, :cond_f

    const v1, 0x1925b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_f
    sget-object v1, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_e
    if-eqz v7, :cond_11

    check-cast v7, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "proc_start"

    invoke-virtual {v15, v6, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v13, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v7, "uid"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v3}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v12, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v3}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "package"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v10, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "type"

    invoke-virtual {v15, v7, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "component"

    invoke-virtual {v15, v7, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v3}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v14, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v7, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v13, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    new-instance v14, Lc/b/a/b/o/m;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-wide v16, Lc/b/a/b/o/g;->z:J

    move-object v7, v14

    move-object v8, v3

    move-object v2, v9

    move v9, v1

    move-object v11, v2

    move-object v12, v4

    move-object v1, v13

    move-object v2, v14

    move-wide/from16 v13, v21

    move-object v4, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v7 .. v16}, Lc/b/a/b/o/m;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_11
    move-object v4, v15

    :goto_d
    move-object v10, v4

    goto/16 :goto_1a

    :pswitch_f
    move-object v8, v15

    const/4 v2, 0x1

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_20

    check-cast v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v10, v7, v9

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1f

    aget-object v10, v7, v2

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_1f

    const/4 v10, 0x2

    aget-object v12, v7, v10

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_1f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    aget-object v1, v7, v2

    check-cast v1, Ljava/lang/Integer;

    aget-object v2, v7, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v9, "activity_launch_time"

    invoke-virtual {v8, v6, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2f

    .line 5
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    .line 6
    :goto_e
    invoke-static {v10}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Lc/b/a/b/o/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "app_name"

    invoke-virtual {v8, v15, v13}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v13, "activity_name_original"

    invoke-virtual {v8, v13, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "activity_name"

    invoke-virtual {v8, v2, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v8, v3, v10}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "token"

    invoke-virtual {v8, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v8, v14, v12}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const/4 v2, 0x3

    aget-object v13, v7, v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "this_time"

    if-eqz v13, :cond_13

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v8, v15, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_f

    :cond_13
    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v8, v15, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :goto_f
    array-length v2, v7

    const-string v13, "total_time"

    move-object/from16 v16, v15

    const/4 v15, 0x5

    if-ne v2, v15, :cond_15

    const/4 v2, 0x4

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v8, v13, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_10

    :cond_14
    const/4 v2, 0x3

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v8, v13, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :cond_15
    :goto_10
    sget-object v2, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v2

    sget-object v2, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/b/o/m;

    if-eqz v2, :cond_1c

    iget-object v15, v2, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    new-instance v15, Lc/b/a/b/k/b;

    invoke-direct {v15}, Lc/b/a/b/k/b;-><init>()V

    move-object/from16 v23, v8

    iget-object v8, v2, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/b/a/b/o/m$a;

    move-object/from16 v18, v13

    iget v13, v8, Lc/b/a/b/o/m$a;->b:I

    move-object/from16 v24, v4

    const/4 v4, 0x1

    add-int/2addr v13, v4

    iput v13, v8, Lc/b/a/b/o/m$a;->b:I

    invoke-virtual {v15, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v8, "activity_launch_time_v2"

    invoke-virtual {v15, v6, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    new-array v4, v4, [I

    iget v8, v2, Lc/b/a/b/o/m;->a:I

    const/4 v13, 0x0

    aput v8, v4, v13

    iget-object v8, v0, Lc/b/a/b/h/s;->b:Landroid/app/ActivityManager;

    invoke-virtual {v8, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    invoke-static {v10}, Lc/b/a/b/o/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "app_name"

    invoke-virtual {v15, v13, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v8, "activity_name"

    invoke-virtual {v15, v8, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v3, v10}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v8, "token"

    invoke-virtual {v15, v8, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v15, v14, v12}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const/4 v8, 0x3

    aget-object v13, v7, v8

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, v24

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v13, 0x3

    aget-object v13, v7, v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_12

    :cond_16
    move-object/from16 v0, v16

    const/4 v13, 0x3

    aget-object v13, v7, v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v15, v0, v13}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :goto_12
    array-length v13, v7

    move-object/from16 v16, v0

    const/4 v0, 0x5

    if-ne v13, v0, :cond_18

    const/4 v0, 0x4

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v13, v18

    invoke-virtual {v15, v13, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_13

    :cond_17
    move-object/from16 v13, v18

    const/4 v0, 0x3

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v15, v13, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    goto :goto_13

    :cond_18
    move-object/from16 v13, v18

    :goto_13
    move-object v0, v7

    move-object/from16 v24, v8

    iget-wide v7, v2, Lc/b/a/b/o/m;->g:J

    sub-long v7, v21, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "proc_time"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    sget-boolean v7, Lc/b/a/b/o/g;->A:Z

    if-nez v7, :cond_19

    iget-wide v7, v2, Lc/b/a/b/o/m;->f:J

    sub-long v7, v19, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "proc_open_click_time"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    sget-wide v7, Lc/b/a/b/o/g;->z:J

    sub-long v7, v19, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "recent_click_time"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :cond_19
    iget-object v7, v2, Lc/b/a/b/o/m;->c:Ljava/lang/String;

    const-string v8, "start_type"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v7, v2, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/o/m$a;

    iget v7, v7, Lc/b/a/b/o/m$a;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "resume_times"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget-object v7, v2, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/o/m$a;

    iget v7, v7, Lc/b/a/b/o/m$a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "launch_times"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget-object v7, v2, Lc/b/a/b/o/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "total_activities"

    invoke-virtual {v15, v8, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    iget-boolean v2, v2, Lc/b/a/b/o/m;->e:Z

    if-eqz v2, :cond_1a

    const-string v2, "true"

    goto :goto_14

    :cond_1a
    const-string v2, "false"

    :goto_14
    const-string v7, "resumed_many_times"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-boolean v2, Lc/b/a/b/o/g;->A:Z

    if-nez v2, :cond_1b

    sget-object v2, Lc/b/a/b/o/g;->B:Ljava/lang/String;

    const-string v7, "click_appname"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 7
    sget-object v2, Lc/b/a/b/o/g;->a:Ljava/lang/String;

    const-string v7, "click_text"

    .line 8
    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v2, Lc/b/a/b/o/g;->G:Ljava/lang/String;

    const-string v7, "click_resId"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v2, Lc/b/a/b/o/g;->C:Ljava/lang/String;

    const-string v7, "click_pkg"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v2, Lc/b/a/b/o/g;->D:Ljava/lang/String;

    const-string v7, "click_class"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v2, Lc/b/a/b/o/g;->E:Ljava/lang/String;

    const-string v7, "click_top_pkg"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    sget-object v2, Lc/b/a/b/o/g;->F:Ljava/lang/String;

    const-string v7, "click_top_activity"

    invoke-virtual {v15, v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_1b
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "pss"

    invoke-virtual {v15, v4, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v15}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto :goto_15

    :cond_1c
    move-object/from16 v24, v4

    move-object v0, v7

    move-object/from16 v23, v8

    :goto_15
    move-object v7, v0

    move-object/from16 v2, v17

    move-object/from16 v8, v23

    move-object/from16 v4, v24

    move-object/from16 v0, p0

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v23, v8

    if-eqz v9, :cond_23

    const-string v0, "com.alibaba.ailabs.genie.launcher.video.search.VideoSearchActivity"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.alibaba.ailabs.genie.launcher.videofind.SearchResultActivity"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.alibaba.ailabs.genie.globalsearch.MainActivity"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1e
    sput-object v1, Lc/b/a/b/o/g;->u:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc/b/a/b/o/g;->v:Ljava/lang/Boolean;

    goto/16 :goto_19

    :cond_1f
    move-object/from16 v23, v8

    const-string v0, "Error when collect  am_activity_launch_time: eventDataArray[]\'s type is wrong!"

    goto :goto_16

    :cond_20
    move-object/from16 v23, v8

    const-string v0, "Error when collect  am_activity_launch_time: eventData\'s type is wrong!"

    :goto_16
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :pswitch_10
    move-object/from16 v23, v15

    if-eqz v7, :cond_23

    .line 10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_23

    check-cast v7, [Ljava/lang/Object;

    array-length v0, v7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "am_destroy_activity"

    invoke-static {v1}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_21

    sget-object v1, Lc/b/a/b/o/g;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_17

    :cond_21
    sget-object v1, Lc/b/a/b/o/g;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->v:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc/b/a/b/o/g;->u:Ljava/lang/Integer;

    goto :goto_19

    :pswitch_11
    move-object/from16 v23, v15

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_23

    check-cast v7, [Ljava/lang/Object;

    array-length v0, v7

    const/16 v1, 0x8

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v7, v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v7, v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v10, v23

    invoke-virtual {v10, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v11, "am_create_activity"

    invoke-static {v11}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v11

    if-ne v2, v11, :cond_22

    const-string v2, "create_activity"

    goto :goto_18

    :cond_22
    const-string v2, "new_intent"

    :goto_18
    invoke-virtual {v10, v6, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "token"

    invoke-virtual {v10, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v0, "task_Id"

    invoke-virtual {v10, v0, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v0, "component_name"

    invoke-virtual {v10, v0, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "action"

    invoke-virtual {v10, v0, v4}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "mime_type"

    invoke-virtual {v10, v0, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "uri"

    invoke-virtual {v10, v0, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "flags"

    invoke-virtual {v10, v0, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    goto :goto_1a

    :cond_23
    :goto_19
    move-object/from16 v10, v23

    .line 11
    :goto_1a
    iget-object v0, v10, Lc/b/a/b/k/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 13
    iget-object v0, v10, Lc/b/a/b/k/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_1b

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "event_process_id"

    invoke-virtual {v10, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "event_time_ms"

    invoke-virtual {v10, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    move-wide/from16 v3, v21

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_time_readable"

    .line 16
    invoke-virtual {v10, v1, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v10}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    const/4 v0, 0x1

    return v0

    :cond_25
    :goto_1b
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x75e1fe2c -> :sswitch_18
        -0x74175eeb -> :sswitch_17
        -0x681edbfd -> :sswitch_16
        -0x652132d5 -> :sswitch_15
        -0x544d40ae -> :sswitch_14
        -0x4aab7926 -> :sswitch_13
        -0x41116e99 -> :sswitch_12
        -0x35565c6f -> :sswitch_11
        -0x2b71f152 -> :sswitch_10
        -0x2419dffa -> :sswitch_f
        -0x1020c78e -> :sswitch_e
        -0x9eb57d4 -> :sswitch_d
        -0xd61ede -> :sswitch_c
        0x242ac0e -> :sswitch_b
        0x260ed00 -> :sswitch_a
        0xd62368f -> :sswitch_9
        0x1e3be234 -> :sswitch_8
        0x220184bd -> :sswitch_7
        0x3a8f1d01 -> :sswitch_6
        0x3b5914dc -> :sswitch_5
        0x5ca668df -> :sswitch_4
        0x618c9728 -> :sswitch_3
        0x71ff5ce1 -> :sswitch_2
        0x7618def0 -> :sswitch_1
        0x7a3c61cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
