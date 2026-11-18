.class public Lc/b/a/b/n/e;
.super Lc/b/a/b/n/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/n/e$a;
    }
.end annotation


# instance fields
.field public d:Lcom/android/internal/app/procstats/ProcessStats;

.field public e:Lcom/android/internal/app/procstats/IProcessStats;

.field public f:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/b/a/b/n/g;-><init>(Lc/b/a/b/h/i$a;)V

    const-string p1, "procstats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/n/e;->e:Lcom/android/internal/app/procstats/IProcessStats;

    iget-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lc/b/a/b/n/e;->f:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "DJJI)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double/2addr p3, v0

    long-to-double p5, p5

    div-double/2addr p3, p5

    double-to-long p3, p3

    const-wide/16 p5, 0x400

    div-long p5, p3, p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " samples)"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr p7, p3

    :cond_0
    return-wide p7
.end method

.method public a()V
    .locals 39

    move-object/from16 v11, p0

    const-string v12, "TOTAL"

    const-string v10, "IC"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v0, 0x5265c00

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, v11, Lc/b/a/b/n/e;->e:Lcom/android/internal/app/procstats/IProcessStats;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/app/procstats/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v1, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    iget-object v0, v11, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v2, "IOException:"

    invoke-static {v0, v2, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v11, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure reading process stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-boolean v2, Lc/b/a/b/o/i;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    iget-object v1, v11, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_1
    iget-object v0, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v15

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v11, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-wide/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/16 v20, -0x1

    move-object/from16 v22, v15

    move/from16 v21, v20

    move-object/from16 v20, v10

    move-wide/from16 v10, v18

    :goto_2
    const/16 v15, 0x8

    if-ge v9, v15, :cond_10

    const/4 v15, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x4

    move/from16 v36, v21

    move-object/from16 v21, v6

    move v6, v15

    move/from16 v15, v36

    move-wide/from16 v37, v10

    move/from16 v10, v23

    move/from16 v11, v24

    move-wide/from16 v23, v37

    :goto_3
    if-ge v10, v11, :cond_f

    add-int v11, v10, v9

    aget-wide v25, v1, v11

    if-ne v2, v11, :cond_1

    sub-long v27, v13, v3

    add-long v25, v27, v25

    const-string v11, " (running)"

    goto :goto_4

    :cond_1
    const-string v11, ""

    :goto_4
    move-object/from16 v27, v1

    move/from16 v28, v2

    move-wide/from16 v1, v25

    cmp-long v25, v1, v18

    if-eqz v25, :cond_e

    if-eq v15, v9, :cond_2

    move v15, v9

    goto :goto_5

    :cond_2
    const/4 v15, -0x1

    :goto_5
    const-string v25, "     "

    move-wide/from16 v29, v3

    const/4 v3, -0x1

    if-eq v15, v3, :cond_5

    if-eqz v15, :cond_4

    const/4 v3, 0x4

    if-eq v15, v3, :cond_3

    const-string v3, "????/"

    goto :goto_6

    :cond_3
    const-string v3, "SOn /"

    goto :goto_6

    :cond_4
    const-string v3, "SOff/"

    goto :goto_6

    :cond_5
    move-object/from16 v3, v25

    :goto_6
    if-eq v6, v10, :cond_6

    move v4, v10

    goto :goto_7

    :cond_6
    const/4 v4, -0x1

    :goto_7
    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_8

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    const-string v25, "????"

    goto :goto_8

    :cond_7
    const-string v25, "Crit"

    goto :goto_8

    :cond_8
    const-string v25, "Low "

    goto :goto_8

    :cond_9
    const-string v25, "Mod "

    goto :goto_8

    :cond_a
    const-string v25, "Norm"

    :cond_b
    :goto_8
    move-object/from16 v4, v25

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v8}, Lc/b/a/b/o/o;->a(JLjava/lang/StringBuilder;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v23, v23, v1

    if-nez v9, :cond_c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    goto :goto_9

    :cond_c
    const/4 v3, 0x4

    if-ne v9, v3, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move v1, v3

    :goto_9
    move v11, v1

    move v15, v9

    move v6, v10

    goto :goto_a

    :cond_e
    move-wide/from16 v29, v3

    const/4 v1, 0x4

    move v11, v1

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    goto/16 :goto_3

    :cond_f
    move-object/from16 v27, v1

    move/from16 v28, v2

    move-wide/from16 v29, v3

    add-int/lit8 v9, v9, 0x4

    move-object/from16 v6, v21

    move-wide/from16 v10, v23

    move/from16 v21, v15

    goto/16 :goto_2

    :cond_10
    move-object/from16 v21, v6

    cmp-long v1, v10, v18

    if-eqz v1, :cond_11

    const-string v1, "    TOTAL: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11, v8}, Lc/b/a/b/o/o;->a(JLjava/lang/StringBuilder;)V

    :cond_11
    move-object/from16 v9, p0

    iget-object v1, v9, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    const-string v1, "SOFF"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SON"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "run_time_stats"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v6, v21

    :try_start_4
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v6, v21

    :goto_b
    const-class v1, Lc/b/a/b/k/b;

    const-string v2, "put JSON error"

    invoke-static {v2, v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 9
    :goto_c
    iget-object v1, v9, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v18, 0x2

    move-object/from16 v31, v6

    move-wide v6, v13

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v9, "time_range"

    const-string v6, "event_name"

    const-string v7, "ram"

    const-string v5, "event_type"

    const-string v4, "payload"

    const-string v3, "screen_time"

    const-string v2, "start_time"

    const-wide/16 v23, 0x18

    if-lez v0, :cond_14

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_14

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 10
    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const-string v25, "TOTAL"

    move/from16 v26, v1

    move-object/from16 v1, p0

    move-object/from16 v27, v12

    move-object v12, v2

    move-object v2, v15

    move-object/from16 v32, v3

    move-object v3, v0

    move-object/from16 v33, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v12

    move-object v12, v5

    move-object/from16 v5, v21

    move-object/from16 v28, v6

    move-object/from16 v21, v12

    move-object v12, v7

    move-wide v6, v13

    move-object/from16 v29, v8

    move-object/from16 v34, v9

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    move-object/from16 v35, v12

    const/16 v19, 0x4

    goto/16 :goto_e

    :cond_12
    const/4 v8, 0x1

    new-array v5, v8, [I

    const/16 v30, 0x0

    aput v30, v5, v30

    const-string v4, "Persistent"

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v0

    move-wide v6, v13

    move-object/from16 v35, v12

    move v12, v8

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    aput v12, v5, v30

    const-string v4, "Top"

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    aput v18, v5, v30

    const-string v4, "Imp_Fg"

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    const/4 v1, 0x3

    aput v1, v5, v30

    const-string v4, "Imp_Bg"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    const/16 v19, 0x4

    aput v19, v5, v30

    const-string v4, "Backup"

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v1, v5, v2

    const-string v4, "Heavy_Wgt"

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v1, v5, v2

    const-string v4, "Service"

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x7

    const/4 v12, 0x0

    aput v1, v5, v12

    const-string v4, "Service_Rs"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    const/4 v8, 0x1

    new-array v5, v8, [I

    const/16 v1, 0x8

    aput v1, v5, v12

    const-string v4, "Receiver"

    move-object/from16 v1, p0

    move v12, v8

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    new-array v5, v12, [I

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v1, v5, v2

    const-string v4, "Home"

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    const/4 v12, 0x1

    new-array v5, v12, [I

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v1, v5, v2

    const-string v4, "Last_Act"

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    const/4 v1, 0x3

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const-string v4, "Cached"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lc/b/a/b/n/e;->a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z

    move v1, v12

    :goto_e
    if-nez v1, :cond_13

    const/4 v0, 0x0

    move-object/from16 v4, v21

    move-object/from16 v7, v25

    move-object/from16 v2, v28

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v12, v33

    move-object/from16 v6, v34

    move-object/from16 v3, v35

    goto/16 :goto_11

    :cond_13
    const-string v1, "procstats"

    move-object/from16 v4, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v35

    .line 11
    invoke-static {v4, v3, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, v34

    invoke-virtual {v1, v6, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v25

    invoke-virtual {v1, v7, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "proc_name"

    invoke-virtual {v1, v8, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "package_name"

    invoke-virtual {v1, v8, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "label"

    invoke-virtual {v1, v8, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "uid"

    invoke-virtual {v1, v8, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "version_name"

    invoke-virtual {v1, v8, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 12
    :try_start_5
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v5, v20

    goto :goto_10

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    const/4 v8, 0x0

    :goto_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " getPackageVersionCode error:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 14
    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "version_code"

    invoke-virtual {v1, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    invoke-virtual {v1, v9, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    move-object/from16 v12, v33

    invoke-virtual {v1, v12, v15}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    add-int/lit8 v1, v26, -0x1

    move-object/from16 v20, v5

    move-object/from16 v8, v29

    move-object v5, v4

    move-object v4, v12

    move-object/from16 v12, v27

    move-object/from16 v36, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v3

    move-object v3, v9

    move-object/from16 v9, v36

    goto/16 :goto_d

    :cond_14
    move-object/from16 v27, v12

    move-object/from16 v8, v31

    move-object v12, v4

    move-object v4, v5

    move-object/from16 v36, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v9

    move-object v9, v3

    move-object/from16 v3, v36

    const/4 v0, 0x0

    :goto_11
    const-string v1, "sysstats"

    invoke-static {v4, v3, v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v7, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time_format"

    invoke-virtual {v11, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v11, v9, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    .line 15
    new-instance v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v15, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object/from16 v10, p0

    iget-object v1, v10, Lc/b/a/b/n/e;->d:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v1, v15, v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v14, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-wide/16 v8, 0x0

    const-string v3, "Kernel"

    move-object/from16 v1, p0

    move-object v2, v13

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v8

    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v3, "Native"

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v1

    move-wide v8, v1

    :goto_12
    const/16 v1, 0xe

    if-ge v0, v1, :cond_15

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v1, v0

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget-object v1, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v10, v1, v0

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_15
    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v3, "Cached"

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v8

    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v3, "Free"

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v8

    iget-wide v4, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    iget-wide v6, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    iget v10, v15, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    const-string v3, "ZRam"

    invoke-virtual/range {v1 .. v10}, Lc/b/a/b/n/e;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;DJJI)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v13, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 16
    invoke-virtual {v11, v12, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-static {v11}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public final a(Lorg/json/JSONObject;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;[IJJ)Z
    .locals 6

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    sget-object v1, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v2, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    invoke-direct {v0, v1, v2, p4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    invoke-virtual {p2, v0, p5, p6}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    iget-wide p4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double p4, p4

    long-to-double p6, p7

    div-double/2addr p4, p6

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p4, v1

    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    cmpl-double p2, p4, v3

    const-wide/16 p4, 0x0

    const/4 p8, 0x0

    if-gez p2, :cond_1

    iget-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    cmp-long p2, v3, p4

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return p8

    :cond_1
    :goto_0
    const/4 p2, 0x1

    new-array v3, p2, [Ljava/lang/Object;

    .line 1
    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v4, v4

    div-double/2addr v4, p6

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    aput-object p6, v3, p8

    const-string p6, "%.2f"

    invoke-static {p6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    cmp-long p7, v1, p4

    if-lez p7, :cond_2

    iget-object p7, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v1, " minPss:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avgPss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " maxPss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minUss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avgUss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " maxUss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " over:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_2
    new-instance p7, Ljava/util/LinkedHashMap;

    invoke-direct {p7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "percent"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "minPss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "avgPss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "maxPss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "minUss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "avgUss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const-string v1, "maxUss"

    invoke-virtual {p7, v1, p6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p6, Lorg/json/JSONObject;

    invoke-direct {p6, p7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p3, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string p6, "JSONException:"

    invoke-static {p3, p6, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-wide p6, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long p1, p6, p4

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move p2, p8

    :goto_2
    return p2
.end method

.method public final b()V
    .locals 15

    const-string v0, "avail_memroy"

    const-string v1, "event_type"

    const-string v2, "ram"

    const-string v3, "event_name"

    const-string v4, "lowmemory"

    invoke-static {v1, v2, v3, v4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lc/b/a/b/n/e;->f:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v5, p0, Lc/b/a/b/n/e;->f:Landroid/app/ActivityManager;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v8, [I

    aput v10, v8, v9

    iget-object v10, p0, Lc/b/a/b/n/e;->f:Landroid/app/ActivityManager;

    invoke-virtual {v10, v8}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v8

    new-instance v10, Lc/b/a/b/n/e$a;

    aget-object v8, v8, v9

    invoke-direct {v10, p0, v7, v8}, Lc/b/a/b/n/e$a;-><init>(Lc/b/a/b/n/e;Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v10, "dumpsys cpuinfo"

    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "faults"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v7, Lc/b/a/b/j/b/a;

    invoke-direct {v7}, Lc/b/a/b/j/b/a;-><init>()V

    invoke-virtual {v7, v3}, Lc/b/a/b/j/b/a;->a(Ljava/util/List;)Lc/b/a/b/j/a/a;

    move-result-object v3

    .line 1
    iget-object v7, v3, Lc/b/a/b/j/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 2
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-array v11, v8, [I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v9

    iget-object v12, p0, Lc/b/a/b/n/e;->f:Landroid/app/ActivityManager;

    invoke-virtual {v12, v11}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v11

    new-instance v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v12}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3
    iget-object v13, v3, Lc/b/a/b/j/a/a;->a:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/b/a/b/j/a/a$b;

    iget-object v10, v10, Lc/b/a/b/j/a/a$b;->b:Ljava/lang/String;

    .line 4
    iput-object v10, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v10, Lc/b/a/b/n/e$a;

    aget-object v11, v11, v9

    invoke-direct {v10, p0, v12, v11}, Lc/b/a/b/n/e$a;-><init>(Lc/b/a/b/n/e;Landroid/app/ActivityManager$RunningAppProcessInfo;Landroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, Lc/b/a/b/n/d;

    invoke-direct {v3, p0}, Lc/b/a/b/n/d;-><init>(Lc/b/a/b/n/e;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.java-heap"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "java_heap"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.native-heap"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "native_heap"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.code"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "code"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.stack"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stack"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.graphics"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "graphics"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.private-other"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "private_other"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.system"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "system"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/n/e$a;

    iget-object v7, v7, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.total-swap"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "total_swap"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v10, "summary.total-pss"

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/b/a/b/n/e$a;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v8, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v12, v10}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v8, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v8, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v7, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v7}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    :try_start_1
    const-string v8, "app_memory"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-virtual {v2, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v7

    add-long/2addr v11, v7

    invoke-virtual {v2, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "is_low_memroy"

    iget-boolean v3, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "top_package"

    sget-object v3, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "top_activity"

    sget-object v3, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss_process"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/n/e$a;

    iget-object v3, v3, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/n/e$a;

    iget-object v3, v3, Lc/b/a/b/n/e$a;->b:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v3, v10}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss_package"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/n/e$a;

    iget-object v3, v3, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lc/b/a/b/o/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss_lable"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/n/e$a;

    iget-object v3, v3, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lc/b/a/b/o/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss_version"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/n/e$a;

    iget-object v3, v3, Lc/b/a/b/n/e$a;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "topPss_summary"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v3, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v4, "JSONException:"

    invoke-static {v3, v4, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const-string v0, "payload"

    invoke-virtual {v1, v0, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    const v0, 0x18a8a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v1}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lc/b/a/b/o/j;)V
    .locals 0

    .line 5
    iget-object p1, p1, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lc/b/a/b/n/e;->b()V

    return-void
.end method

.method public c(Lc/b/a/b/o/j;)V
    .locals 0

    return-void
.end method
