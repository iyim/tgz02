.class public Lc/b/a/b/h/p;
.super Lc/b/a/b/h/k;
.source ""


# static fields
.field public static l:Landroid/app/PendingIntent;

.field public static m:[Ljava/lang/String;

.field public static n:J


# instance fields
.field public c:Landroid/app/ActivityManager;

.field public d:Landroid/app/usage/StorageStatsManager;

.field public e:Lcom/android/internal/os/ProcessCpuTracker;

.field public f:J

.field public final g:Landroid/os/UserHandle;

.field public h:Landroid/service/dreams/IDreamManager;

.field public i:Landroid/os/PowerManager;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lc/b/a/b/h/p;->f:J

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/h/p;->g:Landroid/os/UserHandle;

    iget-object p1, p0, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lc/b/a/b/h/p;->c:Landroid/app/ActivityManager;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    const-string v0, "storagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lc/b/a/b/h/p;->d:Landroid/app/usage/StorageStatsManager;

    new-instance p1, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object p1, p0, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object p1, p0, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    const-string p1, "dreams"

    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/h/p;->h:Landroid/service/dreams/IDreamManager;

    iget-object p1, p0, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lc/b/a/b/h/p;->i:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lc/b/a/b/h/p;->b()Z

    move-result p1

    iput-boolean p1, p0, Lc/b/a/b/h/p;->j:Z

    return-void
.end method

.method public static c()V
    .locals 10

    .line 1
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    sget-object v1, Lc/b/a/b/h/p;->l:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.aligenie.ic.COLLECTOR_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.aligenie.ic"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lc/b/a/b/h/p;->l:Landroid/app/PendingIntent;

    :cond_0
    sget-object v9, Lc/b/a/b/h/p;->l:Landroid/app/PendingIntent;

    .line 3
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const-string v1, "alarm"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5
    sget-wide v0, Lc/b/a/b/o/f;->a:J

    const-string v4, "sys.genie.heartbeat.seconds"

    invoke-static {v4, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 6
    sput-wide v0, Lc/b/a/b/h/p;->n:J

    sget-wide v0, Lc/b/a/b/h/p;->n:J

    invoke-static {}, Lc/b/a/b/o/f;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 7
    sput v5, Lc/b/a/b/o/g;->M:I

    goto :goto_0

    :cond_1
    sput v2, Lc/b/a/b/o/g;->M:I

    .line 8
    :goto_0
    invoke-static {}, Lc/b/a/b/o/f;->a()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lc/b/a/b/o/g;->g:I

    if-eq v2, v5, :cond_3

    :cond_2
    sget v2, Lc/b/a/b/o/g;->h:I

    if-ne v2, v5, :cond_4

    :cond_3
    sget-wide v0, Lc/b/a/b/h/p;->n:J

    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    :cond_4
    move-wide v7, v0

    const-string v0, "heartbeatInterval\uff1a"

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lc/b/a/b/h/p;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 36

    move-object/from16 v1, p0

    const-class v0, Lc/b/a/b/h/p;

    const-string v2, "start collect runtime info"

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInUse:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lc/b/a/b/h/p;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInUse:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lc/b/a/b/h/p;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDreaming:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v0, v1, Lc/b/a/b/h/p;->h:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "IC"

    const-string v5, "Failed to query dream manager."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 2
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/b/o/b;->a(Ljava/util/Date;)Ljava/lang/String;

    invoke-static {}, Lc/b/a/b/o/f;->a()Z

    move-result v2

    iget-boolean v0, v1, Lc/b/a/b/h/p;->j:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc/b/a/b/h/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v4

    :goto_2
    iput-boolean v0, v1, Lc/b/a/b/h/p;->k:Z

    invoke-virtual/range {p0 .. p0}, Lc/b/a/b/h/p;->b()Z

    move-result v0

    iput-boolean v0, v1, Lc/b/a/b/h/p;->j:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v6, "dumpsys cpuinfo"

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_20

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_3

    iget-boolean v6, v1, Lc/b/a/b/h/p;->k:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lc/b/a/b/j/b/a;

    invoke-direct {v9}, Lc/b/a/b/j/b/a;-><init>()V

    invoke-virtual {v9, v5}, Lc/b/a/b/j/b/a;->a(Ljava/util/List;)Lc/b/a/b/j/a/a;

    move-result-object v9

    new-instance v10, Lc/b/a/b/j/b/a;

    invoke-direct {v10}, Lc/b/a/b/j/b/a;-><init>()V

    invoke-virtual {v10, v5, v4}, Lc/b/a/b/j/b/a;->a(Ljava/util/List;Z)Lc/b/a/b/j/a/a;

    move-result-object v4

    const-string v10, "json:"

    invoke-static {v10}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lc/b/a/b/j/a/a;->a()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IC"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lc/b/a/b/k/b;

    invoke-direct {v10}, Lc/b/a/b/k/b;-><init>()V

    const-string v11, "event_type"

    const-string v12, "heartbeat"

    invoke-virtual {v10, v11, v12}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v11, "event_name"

    const-string v12, "cpuinfo"

    invoke-virtual {v10, v11, v12}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v11, "load"

    invoke-virtual {v10, v11, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "time"

    invoke-virtual {v10, v0, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "total"

    invoke-virtual {v10, v0, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    aget-object v0, v8, v3

    const-string v7, "total_cpu"

    invoke-virtual {v10, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-wide v7, v1, Lc/b/a/b/h/p;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "count"

    invoke-virtual {v10, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-virtual {v4}, Lc/b/a/b/j/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "cpuinfo"

    invoke-virtual {v10, v4, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-static {v10}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto :goto_4

    :cond_3
    const-string v6, ""

    move-object v9, v0

    :goto_4
    iget-object v0, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v0, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    iget-object v4, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    iget-object v8, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    iget-object v10, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v10

    iget-object v11, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v11

    iget-object v12, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v12

    iget-object v13, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v13}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :goto_5
    if-ge v3, v0, :cond_6

    iget-object v15, v1, Lc/b/a/b/h/p;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v15, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v15

    move/from16 v16, v0

    iget v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move/from16 v19, v13

    iget v13, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v0, v13

    move/from16 v20, v12

    int-to-long v12, v0

    move/from16 v21, v10

    move/from16 v22, v11

    iget-wide v10, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v23, 0x0

    cmp-long v0, v10, v23

    if-nez v0, :cond_4

    const-wide/16 v17, 0x1

    goto :goto_6

    :cond_4
    move-wide/from16 v17, v10

    :goto_6
    const-wide/16 v10, 0x3e8

    mul-long/2addr v12, v10

    .line 3
    div-long v12, v12, v17

    const-wide/16 v10, 0xa

    move/from16 v25, v7

    move/from16 v26, v8

    div-long v7, v12, v10

    cmp-long v0, v7, v10

    if-gez v0, :cond_5

    mul-long/2addr v10, v7

    sub-long/2addr v12, v10

    cmp-long v0, v12, v23

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_5
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_7
    iget-object v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v14, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cpu ration: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "IC"

    invoke-static {v7, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v16

    move/from16 v13, v19

    move/from16 v12, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v7, v25

    move/from16 v8, v26

    goto/16 :goto_5

    :cond_6
    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v20, v12

    move/from16 v19, v13

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lc/b/a/b/h/p;->c:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v7, v1, Lc/b/a/b/h/p;->c:Landroid/app/ActivityManager;

    invoke-virtual {v7, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    sget-object v0, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v12, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    monitor-enter v12

    .line 5
    :try_start_2
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    monitor-exit v12

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    :goto_9
    const-string v0, "event_type"

    const-string v12, "heartbeat"

    const-string v13, "event_name"

    const-string v15, "procinfo"

    invoke-static {v0, v12, v13, v15}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v12

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v13, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez v2, :cond_9

    :try_start_3
    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x190

    if-ne v0, v13, :cond_9

    if-nez v11, :cond_8

    const-string v0, "0"

    goto :goto_a

    :cond_8
    move-object v0, v11

    :goto_a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    cmpg-double v0, v15, v23

    if-gez v0, :cond_9

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_8

    :cond_9
    const-string v0, "top_app"

    const-string v13, "false"

    goto :goto_b

    :cond_a
    const-string v0, "top_app"

    const-string v13, "true"

    :goto_b
    invoke-virtual {v12, v0, v13}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v15, 0x0

    aput v13, v0, v15

    iget-object v15, v1, Lc/b/a/b/h/p;->c:Landroid/app/ActivityManager;

    invoke-virtual {v15, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v15

    move-object/from16 v16, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    move/from16 v23, v2

    aget-object v2, v15, v0

    const-string v0, "summary.java-heap"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java_heap"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.native-heap"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "native_heap"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.code"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "code"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.stack"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stack"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.graphics"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "graphics"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.private-other"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "private_other"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v2, v15, v0

    const-string v0, "summary.system"

    invoke-virtual {v2, v0}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "system"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v15, v0

    const-string v2, "summary.total-swap"

    invoke-virtual {v0, v2}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "total_swap"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_b
    move/from16 v23, v2

    :goto_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_4
    iget-object v0, v1, Lc/b/a/b/h/p;->d:Landroid/app/usage/StorageStatsManager;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_14

    move-object/from16 v24, v14

    :try_start_5
    sget-object v14, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_11

    move-object/from16 v27, v3

    :try_start_6
    iget-object v3, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v3, v3, v28
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_e

    move-object/from16 v28, v9

    :try_start_7
    iget-object v9, v1, Lc/b/a/b/h/p;->g:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v3, v9}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v29

    const-wide/16 v31, 0x400

    div-long v29, v29, v31

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v33
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_b

    move-object v3, v5

    move-object v9, v6

    :try_start_8
    div-long v5, v33, v31

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v33
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v35, v9

    move-object v14, v10

    :try_start_9
    div-long v9, v33, v31

    const-string v0, "appSizeKB"
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    move-object/from16 v31, v3

    :try_start_a
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appDataSizeKB"

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "cacheSizeKB"

    invoke-virtual {v2, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v11, :cond_c

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide v29, 0x4062c00000000000L    # 150.0

    cmpl-double v0, v9, v29

    if-lez v0, :cond_c

    const-string v0, "errorCode"

    const v3, 0x1925f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    aget-object v0, v15, v0

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    const v3, 0x7a120

    if-le v0, v3, :cond_d

    const-string v0, "errorCode"

    const v3, 0x1925e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_d
    const-wide/32 v9, 0x7a120

    cmp-long v0, v5, v9

    if-lez v0, :cond_e

    const-string v0, "errorCode"

    const v3, 0x19260

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_d
    invoke-virtual {v12, v0, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_16

    :catch_2
    move-exception v0

    goto/16 :goto_15

    :catch_3
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_15

    :catch_5
    move-exception v0

    :goto_e
    move-object/from16 v31, v3

    goto :goto_15

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    :goto_f
    move-object/from16 v31, v3

    move-object/from16 v35, v9

    :goto_10
    move-object v14, v10

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    goto :goto_f

    :catch_b
    move-exception v0

    :goto_11
    move-object/from16 v31, v5

    move-object/from16 v35, v6

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_11

    :catch_e
    move-exception v0

    :goto_12
    move-object/from16 v31, v5

    move-object/from16 v35, v6

    move-object/from16 v28, v9

    goto :goto_10

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_13
    move-object/from16 v27, v3

    goto :goto_12

    :catch_12
    move-exception v0

    goto :goto_13

    :catch_13
    move-exception v0

    goto :goto_13

    :catch_14
    move-exception v0

    :goto_14
    move-object/from16 v27, v3

    move-object/from16 v31, v5

    move-object/from16 v35, v6

    move-object/from16 v28, v9

    move-object/from16 v24, v14

    goto :goto_10

    :catch_15
    move-exception v0

    goto :goto_14

    :catch_16
    move-exception v0

    goto :goto_14

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_16
    const/4 v0, 0x0

    aget-object v0, v15, v0

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pss"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_f

    const-string v0, "true"

    goto :goto_17

    :cond_f
    const-string v0, "false"

    :goto_17
    const-string v3, "lowmem"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/task/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/fd/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_10

    array-length v5, v5

    goto :goto_18

    :cond_10
    const/4 v5, 0x0

    :goto_18
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v0, v0

    goto :goto_19

    :cond_11
    const/4 v0, 0x0

    :goto_19
    move v6, v0

    .line 8
    iget-boolean v0, v1, Lc/b/a/b/h/p;->k:Z

    if-eqz v0, :cond_1e

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v0, v0, v9

    invoke-static {v0}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "label"

    invoke-virtual {v12, v10, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v9

    const-string v10, "packageName"

    invoke-virtual {v12, v10, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "appVersion"

    invoke-virtual {v12, v9, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "processName"

    invoke-virtual {v12, v0, v14}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "importance"

    invoke-virtual {v12, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v7, "meminfo"

    invoke-virtual {v12, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v7, 0xa

    if-le v0, v7, :cond_14

    const-string v0, "dumpsys_cpuinfo_time"

    move-object/from16 v7, v35

    invoke-virtual {v12, v0, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-object/from16 v9, v28

    .line 9
    iget-object v0, v9, Lc/b/a/b/j/a/a;->a:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_1a

    :cond_12
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_13

    .line 10
    iget-object v0, v9, Lc/b/a/b/j/a/a;->a:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/b/j/a/a$b;

    iget-wide v14, v0, Lc/b/a/b/j/a/a$b;->a:D

    .line 11
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_13
    const-string v0, "NoValue"

    :goto_1b
    const-string v8, "dumpsys_cpuinfo"

    invoke-virtual {v12, v8, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_1c

    :cond_14
    move-object/from16 v9, v28

    move-object/from16 v7, v35

    :goto_1c
    const-string v0, "cpuinfo"

    invoke-virtual {v12, v0, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v0, "diskinfo"

    invoke-virtual {v12, v0, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    const/16 v0, 0xc8

    if-le v5, v0, :cond_1c

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v2

    const/4 v0, 0x0

    move v11, v0

    :goto_1d
    if-ge v11, v10, :cond_15

    aget-object v0, v2, v11

    :try_start_b
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_19

    move-object/from16 v28, v2

    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18

    move-object/from16 v29, v4

    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/comm"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17

    goto :goto_20

    :catch_17
    move-exception v0

    goto :goto_1f

    :catch_18
    move-exception v0

    :goto_1e
    move-object/from16 v29, v4

    goto :goto_1f

    :catch_19
    move-exception v0

    move-object/from16 v28, v2

    goto :goto_1e

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    goto :goto_1d

    :cond_15
    move-object/from16 v29, v4

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RuntimeInfoCollector"

    const-string v3, ""

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v4, v14, :cond_1a

    if-gt v4, v11, :cond_16

    move v4, v11

    :cond_16
    add-int/lit8 v11, v4, 0x1

    const/4 v14, 0x1

    move-object/from16 v30, v3

    move/from16 v28, v4

    move v15, v14

    move v14, v11

    :goto_22
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_18

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v35, v7

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v3, v28, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v32, v9

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v14, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v3

    goto :goto_23

    :cond_17
    move-object/from16 v32, v9

    :goto_23
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v32

    move-object/from16 v7, v35

    goto :goto_22

    :cond_18
    move-object/from16 v35, v7

    move-object/from16 v32, v9

    if-le v15, v10, :cond_19

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v10, v15

    goto :goto_24

    :cond_19
    move-object/from16 v3, v30

    :goto_24
    move v4, v11

    move/from16 v11, v28

    move-object/from16 v9, v32

    move-object/from16 v7, v35

    goto :goto_21

    :cond_1a
    move-object/from16 v30, v3

    move-object/from16 v35, v7

    move-object/from16 v32, v9

    goto :goto_25

    :cond_1b
    move-object/from16 v35, v7

    move-object/from16 v32, v9

    const-string v4, "taskNameList is null or taskNameList size is zero"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxTaskName:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " maxTaskNum:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "name"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "num"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "thread_num"

    invoke-virtual {v12, v3, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "max_thread"

    invoke-virtual {v12, v3, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "num"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "max_thread_num"

    invoke-virtual {v12, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_26

    :cond_1c
    move-object/from16 v29, v4

    move-object/from16 v35, v7

    move-object/from16 v32, v9

    :goto_26
    const/16 v0, 0x3e8

    if-le v6, v0, :cond_1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "fd_num"

    invoke-virtual {v12, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_1d
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {v12, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-wide v2, v1, Lc/b/a/b/h/p;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "count"

    invoke-virtual {v12, v2, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v12}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto :goto_27

    :cond_1e
    move-object/from16 v29, v4

    move-object/from16 v32, v28

    :goto_27
    move-object/from16 v7, v16

    move/from16 v2, v23

    move-object/from16 v14, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    move-object/from16 v5, v31

    move-object/from16 v9, v32

    move-object/from16 v6, v35

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v27, v3

    const-string v0, "event_type"

    const-string v2, "heartbeat"

    const-string v3, "event_name"

    const-string v4, "sysinfo"

    invoke-static {v0, v2, v3, v4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    const-wide/16 v11, 0x64

    mul-long/2addr v11, v5

    div-long/2addr v11, v9

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v0, "avail"

    mul-long/2addr v5, v3

    const-wide/16 v13, 0x400

    div-long/2addr v5, v13

    invoke-virtual {v9, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "free"

    mul-long/2addr v7, v3

    div-long/2addr v7, v13

    invoke-virtual {v9, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "avail_ratio"

    invoke-virtual {v9, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1a

    goto :goto_28

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_28
    const-string v0, "diskinfo"

    invoke-virtual {v2, v0, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    add-int v7, v25, v26

    add-int v7, v7, v21

    add-int v7, v7, v22

    add-int v7, v7, v20

    add-int v13, v7, v19

    if-nez v13, :cond_20

    const/4 v13, 0x1

    :cond_20
    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v13

    const/4 v4, 0x2

    :try_start_f
    const-string v0, "total"

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "user"

    mul-int/lit8 v5, v25, 0x64

    div-int/2addr v5, v13

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "system"

    mul-int/lit8 v8, v26, 0x64

    div-int/2addr v8, v13

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "iowait"

    mul-int/lit8 v10, v21, 0x64

    div-int/2addr v10, v13

    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "irq"

    mul-int/lit8 v11, v22, 0x64

    div-int/2addr v11, v13

    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "softirq"

    mul-int/lit8 v12, v20, 0x64

    div-int/2addr v12, v13

    invoke-virtual {v3, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "load1"
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1c

    const/4 v5, 0x0

    :try_start_10
    aget-object v6, v27, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "load5"

    const/4 v6, 0x1

    aget-object v6, v27, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "load15"

    aget-object v6, v27, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\r|\n"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception v0

    goto :goto_29

    :catch_1c
    move-exception v0

    const/4 v5, 0x0

    :goto_29
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2a
    const/16 v0, 0x5a

    if-le v7, v0, :cond_21

    const v0, 0x18a8b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "errorCode"

    invoke-virtual {v2, v6, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    :cond_21
    const-string v0, "cpuinfo"

    invoke-virtual {v2, v0, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    :try_start_11
    const-string v6, "cachedKb"

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "freeKb"

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "zramKb"

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "kernelKb"

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1d

    goto :goto_2b

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2b
    const-string v0, "meminfo"

    invoke-virtual {v2, v0, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    iget-boolean v0, v1, Lc/b/a/b/h/p;->k:Z

    if-eqz v0, :cond_28

    .line 15
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a()[Ljava/lang/String;

    move-result-object v3

    :try_start_12
    sget-object v0, Lc/b/a/b/h/p;->m:[Ljava/lang/String;

    if-eqz v0, :cond_23

    if-eqz v3, :cond_23

    const/16 v0, 0xa

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lc/b/a/b/h/p;->m:[Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v6, v0

    const/16 v0, 0xb

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Lc/b/a/b/h/p;->m:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v7, v0

    if-nez v6, :cond_22

    goto :goto_2c

    :cond_22
    mul-int/lit8 v7, v7, 0x64

    div-int v5, v7, v6
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_1e

    goto :goto_2c

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 16
    :cond_23
    :goto_2c
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;)I

    move-result v0

    .line 18
    sget-object v6, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 19
    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(Landroid/content/Context;)Z

    move-result v6

    if-eqz v0, :cond_27

    const/4 v7, 0x1

    if-eq v0, v7, :cond_27

    if-eqz v6, :cond_27

    const/16 v7, 0xa

    if-lt v5, v7, :cond_24

    goto :goto_2d

    :cond_24
    const/4 v7, 0x3

    if-eq v0, v7, :cond_25

    const/4 v7, 0x4

    if-ne v0, v7, :cond_26

    :cond_25
    if-eqz v6, :cond_26

    if-gt v5, v4, :cond_26

    const-string v4, "good"

    goto :goto_2e

    :cond_26
    const-string v4, "normal"

    goto :goto_2e

    :cond_27
    :goto_2d
    const-string v4, "bad"

    :goto_2e
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v8, "condition"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "connected"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "strength"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "retrans_rate"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_1f

    goto :goto_2f

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2f
    const-string v0, "netinfo"

    invoke-virtual {v2, v0, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    sput-object v3, Lc/b/a/b/h/p;->m:[Ljava/lang/String;

    .line 20
    iget-wide v3, v1, Lc/b/a/b/h/p;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "count"

    invoke-virtual {v2, v3, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    iget-wide v2, v1, Lc/b/a/b/h/p;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lc/b/a/b/h/p;->f:J

    :cond_28
    const/4 v0, 0x1

    return v0

    :catch_20
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lc/b/a/b/h/p;->i:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/b/h/p;->h:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IC"

    const-string v3, "Failed to query dream manager."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
