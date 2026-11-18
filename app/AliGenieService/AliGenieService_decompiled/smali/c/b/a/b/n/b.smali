.class public Lc/b/a/b/n/b;
.super Lc/b/a/b/n/g;
.source ""


# static fields
.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.smile.gifmaker"

    const-string v2, "com.alibaba.ailabs.genie.rtc"

    const-string v3, "com.tencent.qqlive.audiobox"

    const-string v4, "com.qiyi.video.speaker"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lc/b/a/b/n/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/n/g;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;I)J
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {p0, v5, p2}, Lc/b/a/b/n/b;->a(Ljava/io/File;I)J

    move-result-wide v5

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    int-to-float p2, p2

    cmpl-float p2, v2, p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v3, "event_type"

    const-string v4, "disk"

    const-string v5, "event_name"

    const-string v6, "scan_big_file"

    invoke-static {v3, v4, v5, v6}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "directory"

    goto :goto_1

    :cond_1
    const-string p1, "file"

    :goto_1
    const-string v4, "file_type"

    invoke-virtual {v3, v4, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string p1, "file_name"

    invoke-virtual {v3, p1, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "file_size_mb"

    invoke-virtual {v3, v4, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lc/b/a/b/k/b;

    invoke-static {v3}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File: path="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", size= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IC"

    invoke-static {p2, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;Lc/b/a/b/k/b;)J
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    const-wide/16 v11, 0x64

    mul-long/2addr v11, v5

    div-long/2addr v11, v9

    if-eqz v1, :cond_0

    const-string v2, "_AVAIL"

    invoke-static {v0, v2}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-long/2addr v5, v3

    const-wide/16 v13, 0x400

    div-long/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_FREE"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-long/2addr v7, v3

    div-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_TOTAL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-long/2addr v9, v3

    div-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_RATIO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    :cond_0
    return-wide v11
.end method

.method public a()V
    .locals 30

    move-object/from16 v8, p0

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "disk"

    const-string v4, "event_type"

    const-string v5, "event_name"

    const-string v0, "diskstats"

    invoke-static {v4, v3, v5, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v7, "FOLDER_DATA"

    invoke-virtual {v8, v0, v7, v6}, Lc/b/a/b/n/b;->a(Ljava/io/File;Ljava/lang/String;Lc/b/a/b/k/b;)J

    move-result-wide v9

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    const-string v7, "FOLDER_CACHE"

    invoke-virtual {v8, v0, v7, v6}, Lc/b/a/b/n/b;->a(Ljava/io/File;Ljava/lang/String;Lc/b/a/b/k/b;)J

    new-instance v0, Ljava/io/File;

    const-string v7, "/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "FOLDER_SYSTEM"

    invoke-virtual {v8, v0, v7, v6}, Lc/b/a/b/n/b;->a(Ljava/io/File;Ljava/lang/String;Lc/b/a/b/k/b;)J

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v7, "FOLDER_SDCARD"

    invoke-virtual {v8, v0, v7, v6}, Lc/b/a/b/n/b;->a(Ljava/io/File;Ljava/lang/String;Lc/b/a/b/k/b;)J

    iget-object v0, v8, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    const-string v7, "storagestats"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v11, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    iget-object v14, v8, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {v14}, Lc/b/a/b/o/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-wide v15, v11

    move-wide/from16 v17, v15

    :goto_0
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    check-cast v14, Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object/from16 v19, v7

    :try_start_2
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-wide/from16 v21, v9

    :try_start_3
    const-string v9, "com.android"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v9, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, v9, v7, v13}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v23

    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v25

    invoke-virtual {v9}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v9
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    add-long v15, v15, v23

    add-long v17, v17, v25

    add-long/2addr v11, v9

    move-object/from16 v27, v0

    :try_start_4
    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v0, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-wide/from16 v28, v11

    :try_start_5
    const-string v11, "appdiskstats"

    invoke-virtual {v0, v5, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v11, "label"

    invoke-static {v7}, Lc/b/a/b/o/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v11, "apk_name"

    invoke-virtual {v0, v11, v7}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "apk_version"

    iget-object v11, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v7, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "appsize"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v7, "appdatasize"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v7, "appcache"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v7, v19

    move-object/from16 v14, v20

    move-wide/from16 v9, v21

    move-object/from16 v0, v27

    move-wide/from16 v11, v28

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    move-wide/from16 v28, v11

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :goto_2
    move-wide/from16 v11, v28

    goto :goto_8

    :cond_2
    :goto_3
    move-object/from16 v27, v0

    move-object/from16 v7, v19

    move-object/from16 v14, v20

    move-wide/from16 v9, v21

    move-object/from16 v0, v27

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    :goto_4
    move-wide/from16 v21, v9

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v19, v7

    move-wide/from16 v21, v9

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_5
    move-object/from16 v19, v7

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    :goto_6
    move-object/from16 v19, v7

    move-wide/from16 v21, v9

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_6

    :goto_7
    move-wide v15, v11

    move-wide/from16 v17, v15

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "apps_size"

    invoke-virtual {v6, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "apps_data_size"

    invoke-virtual {v6, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "apps_cache_size"

    invoke-virtual {v6, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-virtual {v6, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v6}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lc/b/a/b/n/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    cmp-long v2, v21, v0

    if-gtz v2, :cond_b

    const-string v2, "/data"

    invoke-virtual {v8, v2}, Lc/b/a/b/n/b;->a(Ljava/lang/String;)V

    .line 16
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/sdcard"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    const-string v11, "sdcard: ration ="

    invoke-static {v11}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0x64

    mul-long/2addr v9, v12

    div-long/2addr v9, v6

    long-to-float v6, v9

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "IC"

    invoke-static {v7, v6}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v9, v0

    if-gtz v0, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v1, v0

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v1, :cond_8

    aget-object v9, v0, v6

    invoke-static {v9}, Lc/b/a/b/o/e;->a(Ljava/io/File;)J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File: path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "size:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/Android"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-wide/32 v12, 0x100000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 17
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v12, 0x0

    goto :goto_b

    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v12}, Lc/b/a/b/o/e;->b(Ljava/lang/String;)Z

    move-result v12

    goto :goto_b

    :cond_5
    invoke-static {v12}, Lc/b/a/b/o/e;->a(Ljava/lang/String;)Z

    move-result v12

    .line 18
    :goto_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete File: path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " result:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lc/b/a/b/k/b;

    invoke-direct {v13}, Lc/b/a/b/k/b;-><init>()V

    invoke-virtual {v13, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v14, "clean_sdcard_file"

    invoke-virtual {v13, v5, v14}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v14, "file"

    invoke-virtual {v13, v14, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-wide/16 v14, 0x400

    div-long/2addr v10, v14

    div-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "size_mb"

    invoke-virtual {v13, v10, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    if-eqz v12, :cond_6

    const-string v9, "success"

    goto :goto_c

    :cond_6
    const-string v9, "failed"

    :goto_c
    const-string v10, "result"

    invoke-virtual {v13, v10, v9}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v13}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 19
    :cond_8
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    const-string v0, "data: ration ="

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v5, 0x64

    mul-long/2addr v1, v5

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    cmp-long v0, v1, v3

    if-gtz v0, :cond_b

    .line 20
    :try_start_6
    iget-object v0, v8, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    if-nez v0, :cond_9

    goto :goto_f

    :cond_9
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    iget-object v1, v8, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lc/b/a/b/o/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 21
    sget-object v2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 22
    invoke-static {v2}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_d

    :cond_a
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, v3, v2, v9}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v6

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lc/b/a/b/n/b;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_f
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3, v0}, Lc/b/a/b/n/b;->a(Ljava/io/File;I)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    sub-long v2, p3, p5

    sget-object v4, Lc/b/a/b/n/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/32 v4, 0x1f400000

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    :cond_0
    sget-object v4, Lc/b/a/b/n/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-wide/32 v4, 0xc800000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_d

    :cond_1
    const-string v2, "disk"

    const-string v3, "event_type"

    const-string v4, "event_name"

    const-string v5, "clean_big_appdata"

    invoke-static {v3, v2, v4, v5}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v5

    const-string v6, "apk_name"

    invoke-virtual {v5, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v7, "apk_version"

    invoke-virtual {v5, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "appdatasize"

    invoke-virtual {v5, v9, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "appcache"

    invoke-virtual {v5, v10, v8}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v5}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    const-string v5, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/File;

    const-string v8, "/data/data/com.alibaba.ailabs.genie.smartapp/databases/ut.db"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v10, "/data/data/com.alibaba.ailabs.genie.smartapp/files/awcn_strategy/StrategyConfig"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x6400000

    cmp-long v8, v12, v14

    const-string v14, "success"

    const-string v15, "failed"

    move-object/from16 p5, v14

    const-string v14, "result"

    move-object/from16 p6, v15

    const-string v15, "size_mb"

    const-wide/16 v16, 0x400

    if-ltz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v8, "clean_big_utfile"

    invoke-static {v3, v2, v4, v8}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v2, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    div-long v12, v12, v16

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_2
    const-wide/32 v18, 0x6400000

    cmp-long v8, v10, v18

    if-ltz v8, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v8, "clean_big_scfile"

    invoke-static {v3, v2, v4, v8}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v2, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    div-long v12, v12, v16

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    if-eqz v5, :cond_3

    :goto_0
    move-object/from16 v0, p5

    goto :goto_1

    :cond_3
    move-object/from16 v0, p6

    :goto_1
    invoke-virtual {v2, v14, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    goto :goto_2

    :cond_4
    const-string v5, "utfile_not_big"

    invoke-static {v3, v2, v4, v5}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v2, v7, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    div-long v12, v12, v16

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v15, v0}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v5}, Lc/b/a/b/n/b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_5
    move-object/from16 v2, p0

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_c

    .line 2
    :cond_6
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 5
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/UserManager;

    .line 6
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    const-string v7, "IC"

    if-ge v6, v5, :cond_8

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getUserId"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 8
    :try_start_0
    sget-object v0, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v8, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v5, "exception pm getUserid: "

    invoke-static {v5}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v0, -0x1

    .line 10
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_6
    const-string v9, "getProfileIdsWithDisabled"

    const/4 v10, 0x0

    if-ge v8, v6, :cond_a

    aget-object v11, v5, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "um method not find -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v10

    :goto_7
    const/4 v5, 0x1

    :try_start_1
    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v6, v8

    invoke-virtual {v11, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    goto :goto_8

    :catch_1
    move-exception v0

    const-string v4, "exception um getProfileIdsWithDisabledMethod: "

    invoke-static {v4}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    .line 12
    :goto_8
    array-length v6, v4

    const/4 v0, 0x0

    move v8, v0

    :goto_9
    if-ge v8, v6, :cond_e

    aget v0, v4, v8

    const-string v9, "getInstalledPackagesAsUser"

    .line 13
    invoke-static {v3, v9}, Lc/b/a/b/o/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v11, 0x2

    :try_start_2
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v5

    invoke-virtual {v9, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    const-string v9, "exception pm getInstalledPackagesAsUser: "

    invoke-static {v9}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 14
    :goto_a
    new-instance v9, Lc/b/a/b/o/l$a;

    invoke-direct {v9}, Lc/b/a/b/o/l$a;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "clearApplicationUserData"

    .line 15
    invoke-static {v3, v0}, Lc/b/a/b/o/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_3
    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    aput-object v9, v14, v5

    invoke-virtual {v0, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " clearApplicationUserData error: "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    :cond_d
    move-object/from16 v2, p0

    :cond_e
    :goto_c
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    const-string v1, "event_type"

    const-string v2, "disk"

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "event_name"

    const-string v2, "clean_big_appdata_result"

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "result"

    if-eqz p2, :cond_0

    const-string p2, "success"

    goto :goto_0

    :cond_0
    const-string p2, "failed"

    :goto_0
    invoke-virtual {v0, v1, p2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string p2, "apk_name"

    invoke-virtual {v0, p2, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string p2, "apk_version"

    invoke-static {p1}, Lc/b/a/b/o/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    iget-object p2, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    const-string v1, "storagestats"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/StorageStatsManager;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p2, v2, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p1

    const-string v3, "appdatasize"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    const-string v1, "appcache"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lc/b/a/b/k/b;

    invoke-static {v0}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
