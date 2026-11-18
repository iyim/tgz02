.class public Lanet/channel/util/SerializeHelper;
.super Ljava/lang/Object;
.source "SerializeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.SerializeHelper"

.field private static cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCacheFiles(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 31
    sget-object v0, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lanet/channel/util/SerializeHelper;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized persist(Ljava/io/Serializable;Ljava/io/File;)V
    .locals 2

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-static {p0, p1, v1}, Lanet/channel/util/SerializeHelper;->persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    .locals 13

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 50
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 57
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lanet/channel/util/SerializeHelper;->getCacheFiles(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 59
    invoke-virtual {v7, v6}, Ljava/io/File;->setReadable(Z)Z

    .line 60
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :try_start_3
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->flush()V

    .line 64
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v8, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v8, v1

    goto/16 :goto_5

    :catch_3
    move-exception p0

    move-object v7, v1

    move-object v8, v7

    :goto_0
    :try_start_5
    const-string v9, "awcn.SerializeHelper"

    const-string v10, "persist fail. "

    .line 67
    new-array v11, v5, [Ljava/lang/Object;

    const-string v12, "file"

    aput-object v12, v11, v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9, v10, v1, p0, v11}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const-string v9, "SerializeHelper.persist()"

    .line 69
    invoke-virtual {p2, v9, p0}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    if-eqz v8, :cond_2

    .line 74
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_4
    :cond_2
    const/4 p0, 0x0

    .line 79
    :goto_1
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    if-eqz p2, :cond_4

    .line 81
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lanet/channel/statist/StrategyStatObject;->writeTempFilePath:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lanet/channel/statist/StrategyStatObject;->writeStrategyFilePath:Ljava/lang/String;

    if-eqz p0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 83
    :goto_2
    iput v3, p2, Lanet/channel/statist/StrategyStatObject;->isTempWriteSucceed:I

    .line 84
    iput-wide v8, p2, Lanet/channel/statist/StrategyStatObject;->writeCostTime:J

    :cond_4
    if-eqz p0, :cond_8

    .line 89
    invoke-virtual {v7, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v3, "awcn.SerializeHelper"

    const-string v4, "persist end."

    const/4 v7, 0x6

    .line 91
    new-array v7, v7, [Ljava/lang/Object;

    const-string v10, "file"

    aput-object v10, v7, v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    aput-object v10, v7, v6

    const-string/jumbo v10, "size"

    aput-object v10, v7, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v5

    const/4 p1, 0x4

    const-string v5, "cost"

    aput-object v5, v7, p1

    const/4 p1, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, p1

    invoke-static {v3, v4, v1, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const-string p1, "awcn.SerializeHelper"

    const-string/jumbo v3, "rename failed."

    .line 93
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-eqz p2, :cond_8

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 96
    :goto_4
    iput p1, p2, Lanet/channel/statist/StrategyStatObject;->isRenameSucceed:I

    if-eqz p0, :cond_7

    const/4 v2, 0x1

    .line 97
    :cond_7
    iput v2, p2, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 98
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 101
    :cond_8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v8, :cond_9

    .line 74
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 76
    :catch_5
    :cond_9
    :try_start_9
    throw p0

    :cond_a
    :goto_6
    const-string p0, "awcn.SerializeHelper"

    const-string p1, "persist fail. Invalid parameter"

    .line 46
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 47
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized restore(Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-static {p0, v1}, Lanet/channel/util/SerializeHelper;->restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lanet/channel/statist/StrategyStatObject;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lanet/channel/util/SerializeHelper;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lanet/channel/statist/StrategyStatObject;->readStrategyFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 116
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "awcn.SerializeHelper"

    const-string v7, "file not exist."

    .line 117
    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "file"

    aput-object v8, v5, v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {v4, v7, v3, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :cond_1
    monitor-exit v0

    return-object v3

    :cond_2
    if-eqz p1, :cond_3

    .line 123
    :try_start_2
    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isFileExists:I

    .line 125
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 126
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :try_start_3
    new-instance v9, Ljava/io/ObjectInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    if-eqz p1, :cond_4

    .line 132
    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isReadObjectSucceed:I

    .line 133
    iput-wide v11, p1, Lanet/channel/statist/StrategyStatObject;->readCostTime:J

    :cond_4
    const-string v7, "awcn.SerializeHelper"

    const-string/jumbo v8, "restore end."

    const/4 v9, 0x6

    .line 135
    new-array v9, v9, [Ljava/lang/Object;

    const-string v13, "file"

    aput-object v13, v9, v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    aput-object v13, v9, v6

    const-string/jumbo v6, "size"

    aput-object v6, v9, v5

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v2

    const/4 p0, 0x4

    const-string v5, "cost"

    aput-object v5, v9, p0

    const/4 p0, 0x5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, p0

    invoke-static {v7, v8, v3, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v10, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v4, v3

    move-object v10, v4

    .line 137
    :goto_2
    :try_start_6
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "awcn.SerializeHelper"

    const-string/jumbo v5, "restore file fail."

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v3, p0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "SerializeHelper.restore()"

    .line 141
    invoke-virtual {p1, v1, p0}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_1

    .line 151
    :catch_3
    :cond_7
    :goto_3
    monitor-exit v0

    return-object v10

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v4, :cond_8

    .line 146
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 148
    :catch_4
    :cond_8
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    monitor-exit v0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method
