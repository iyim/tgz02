.class public Lc/b/a/b/n/a;
.super Lc/b/a/b/n/g;
.source ""


# instance fields
.field public d:Lcom/android/internal/os/ProcessCpuTracker;

.field public e:J

.field public f:J

.field public g:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/b/a/b/n/g;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lc/b/a/b/n/a;->g:Ljava/text/SimpleDateFormat;

    new-instance p1, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object p1, p0, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object p1, p0, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/b/a/b/n/a;->e:J

    iget-wide v0, p0, Lc/b/a/b/n/a;->e:J

    iput-wide v0, p0, Lc/b/a/b/n/a;->f:J

    iget-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Lc/b/a/b/o/j;)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v2, "CPUUsageCollector onEventReceive UPDATE_ACTIVITY"

    invoke-static {v0, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v0, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    iget-object v4, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    aget-object v7, v4, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "load1"

    invoke-virtual {v5, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "load3"

    invoke-virtual {v5, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\r|\n"

    const-string v9, ""

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "load15"

    invoke-virtual {v5, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    if-ge v8, v0, :cond_5

    iget-object v7, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v7

    iget v9, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v9, v10

    int-to-long v9, v9

    iget-wide v11, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_1

    const-wide/16 v11, 0x1

    :cond_1
    const-wide/16 v15, 0x3e8

    mul-long/2addr v9, v15

    .line 1
    div-long/2addr v9, v11

    const-wide/16 v11, 0xa

    move-object/from16 v16, v7

    div-long v6, v9, v11

    cmp-long v17, v6, v13

    const-string v15, "0"

    if-nez v17, :cond_2

    move-object v6, v15

    goto :goto_1

    :cond_2
    cmp-long v17, v6, v11

    if-gez v17, :cond_3

    mul-long/2addr v11, v6

    sub-long/2addr v9, v11

    cmp-long v11, v9, v13

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 2
    :goto_1
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v7, v16

    iget-object v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    new-instance v6, Lc/b/a/b/i/r;

    const-string v0, "cpu_usage"

    invoke-direct {v6, v2, v3, v0}, Lc/b/a/b/i/r;-><init>(JLjava/lang/String;)V

    const-string v0, "event_type"

    const-string v7, "usage"

    invoke-virtual {v6, v0, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v0, "event_name"

    const-string v7, "cpu"

    invoke-virtual {v6, v0, v7}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    .line 3
    iget-object v7, v6, Lc/b/a/b/i/i;->b:Lorg/json/JSONObject;

    .line 4
    iget-object v0, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v0

    iget-object v8, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    iget-object v9, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v9

    iget-object v10, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v10

    iget-object v11, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v11

    iget-object v12, v1, Lc/b/a/b/n/a;->d:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int v13, v0, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :cond_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    move-object/from16 v16, v6

    const-string v6, "dumpsys cpuinfo"

    invoke-virtual {v15, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move/from16 v17, v11

    new-instance v11, Lc/b/a/b/j/b/a;

    invoke-direct {v11}, Lc/b/a/b/j/b/a;-><init>()V

    move/from16 v18, v10

    const/4 v10, 0x1

    invoke-virtual {v11, v14, v10}, Lc/b/a/b/j/b/a;->a(Ljava/util/List;Z)Lc/b/a/b/j/a/a;

    move-result-object v10

    :try_start_1
    const-string v11, "process_cpu_ration"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dumpsys_cpuinfo_time"

    invoke-virtual {v7, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dumpsys_cpuinfo_total"

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dumpsys_cpuinfo_list"

    invoke-virtual {v10}, Lc/b/a/b/j/a/a;->a()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pre_acitivity"

    sget-object v6, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pre_package"

    sget-object v6, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pre_label"

    sget-object v6, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-static {v6}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pre_version"

    sget-object v6, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-static {v6}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cur_activity"

    sget-object v6, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cur_package"

    sget-object v6, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "duration"

    iget-wide v10, v1, Lc/b/a/b/n/a;->f:J

    sub-long v10, v2, v10

    invoke-virtual {v7, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "start_time"

    iget-wide v10, v1, Lc/b/a/b/n/a;->f:J

    invoke-virtual {v7, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "start_time_format"

    iget-object v6, v1, Lc/b/a/b/n/a;->g:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    iget-wide v14, v1, Lc/b/a/b/n/a;->f:J

    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "end_time"

    invoke-virtual {v7, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "end_time_format"

    iget-object v6, v1, Lc/b/a/b/n/a;->g:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "average_load_split"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "total_cpu_percent"

    mul-int/lit8 v13, v13, 0x64

    div-int/2addr v13, v12

    invoke-virtual {v7, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "user"

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v12

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "system"

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v12

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "iowait"

    mul-int/lit8 v9, v9, 0x64

    div-int/2addr v9, v12

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "irq"

    mul-int/lit8 v10, v18, 0x64

    div-int/2addr v10, v12

    invoke-virtual {v7, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "softirq"

    mul-int/lit8 v11, v17, 0x64

    div-int/2addr v11, v12

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v4, v1, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v5, "JSONException:"

    invoke-static {v4, v5, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const-string v0, "payload"

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, v16

    goto :goto_5

    :cond_8
    move-object/from16 v4, v16

    if-nez v7, :cond_9

    :try_start_2
    iget-object v5, v4, Lc/b/a/b/i/i;->a:Lorg/json/JSONObject;

    const-string v6, "NoValue"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_9
    iget-object v5, v4, Lc/b/a/b/i/i;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-class v5, Lc/b/a/b/i/i;

    const-string v6, "put JSON error"

    invoke-static {v6, v5, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 6
    :goto_5
    invoke-virtual {v1, v4}, Lc/b/a/b/h/i;->a(Lc/b/a/b/i/i;)Z

    iput-wide v2, v1, Lc/b/a/b/n/a;->f:J

    move-object/from16 v2, p1

    .line 7
    iget-object v0, v2, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
