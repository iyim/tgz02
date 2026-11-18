.class Lunet/org/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lunet/org/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lunet/org/chromium/base/ResourceExtractor;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs a()Ljava/lang/Void;
    .locals 19

    const-string v0, "unet.org.chromium.base.ResourceExtractor.Version"

    const-string v1, "checkPakTimeStamp"

    const-string v2, "ExtractResource"

    const-string v3, "WalkAssets"

    const-string v4, "ResourceExtractor.ExtractTask.doInBackground"

    .line 133
    invoke-static {v4}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 1069
    :try_start_0
    invoke-static {}, Lunet/org/chromium/base/ResourceExtractor;->a()Ljava/io/File;

    move-result-object v5

    .line 1070
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v7, "cr.base"

    const/4 v8, 0x0

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "Unable to create pak resources directory!"

    .line 1071
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lunet/org/chromium/base/Log;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 1075
    :cond_0
    invoke-static {v1}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->b()J

    move-result-wide v9

    .line 1077
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-wide/16 v11, 0x0

    .line 1078
    invoke-interface {v6, v0, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v15, 0x1

    cmp-long v16, v9, v13

    if-eqz v16, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 1080
    :goto_0
    invoke-static {v1}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    if-eqz v13, :cond_2

    .line 1083
    invoke-static {}, Lunet/org/chromium/base/ResourceExtractor;->b()V

    .line 1087
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1090
    :cond_2
    invoke-static {v3}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    const/16 v0, 0x4000

    .line 1091
    new-array v0, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v1, p0

    .line 1093
    :try_start_2
    iget-object v6, v1, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->a:Lunet/org/chromium/base/ResourceExtractor;

    invoke-static {v6}, Lunet/org/chromium/base/ResourceExtractor;->a(Lunet/org/chromium/base/ResourceExtractor;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    aget-object v13, v6, v10

    .line 1094
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v18, v16, v11

    if-nez v18, :cond_3

    .line 1109
    invoke-static {v2}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1113
    :try_start_3
    invoke-static {v11, v14, v0}, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->a(Ljava/io/InputStream;Ljava/io/File;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1115
    :try_start_4
    invoke-static {v2}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v0

    invoke-static {v2}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0x0

    goto :goto_1

    .line 1127
    :cond_4
    :goto_3
    :try_start_5
    invoke-static {v3}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_6
    const-string v2, "Exception unpacking required pak asset: %s"

    .line 1123
    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v7, v2, v5}, Lunet/org/chromium/base/Log;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    invoke-static {}, Lunet/org/chromium/base/ResourceExtractor;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 137
    :goto_4
    invoke-static {v4}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1127
    :goto_5
    :try_start_7
    invoke-static {v3}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    .line 137
    :goto_6
    invoke-static {v4}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "cr.base"

    const-string v2, "Extracting resource %s"

    const/4 v3, 0x1

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lunet/org/chromium/base/Log;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/16 p1, 0x4000

    .line 52
    invoke-virtual {p0, p2, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 53
    invoke-virtual {v1, p2, v4, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 58
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 58
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_3

    .line 62
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw p1

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static b()J
    .locals 5

    .line 161
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 167
    :try_start_0
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 170
    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0}, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const-string p1, "ResourceExtractor.ExtractTask.onPostExecute"

    .line 1151
    invoke-static {p1}, Lunet/org/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2143
    :goto_0
    :try_start_0
    iget-object v1, p0, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2144
    iget-object v1, p0, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2146
    :cond_0
    iget-object v0, p0, Lunet/org/chromium/base/ResourceExtractor$ExtractTask;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    invoke-static {p1}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
