.class public Lcom/taobao/orange/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final ORANGE_DIR:Ljava/lang/String; = "orange_config"

.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field private static targetDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/taobao/orange/util/FileUtil;->getTargetDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static cleanDir(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-static {v2}, Lcom/taobao/orange/util/FileUtil;->cleanDir(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static clearCacheFile()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FileUtil"

    const-string v2, "clearCacheFile"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/orange/util/FileUtil;->cleanDir(Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static deleteConfigFile(Ljava/lang/String;)V
    .locals 5

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x1

    .line 91
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "filename"

    aput-object v4, v2, v3

    aput-object p0, v2, v1

    const/4 p0, 0x2

    const-string/jumbo v1, "result"

    aput-object v1, v2, p0

    const/4 p0, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "FileUtil"

    const-string v0, "deleteConfigFile"

    invoke-static {p0, v0, v2}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static getTargetDir()Ljava/io/File;
    .locals 8

    .line 116
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "orange_config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->env:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "getTargetDir"

    const-string v4, "FileUtil"

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "getTargetDir mkdirs fail"

    invoke-static {v4, v5, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v0, "private_orange"

    const-string v7, "other_exception"

    .line 125
    invoke-static {v0, v7, v3, v5, v6}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_1
    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v4, v3, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static persistObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "persistObject"

    const/4 v3, 0x0

    const-string v4, "FileUtil"

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "filename"

    aput-object v5, v1, v3

    aput-object p1, v1, v0

    invoke-static {v4, v2, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v5, ".tmp"

    .line 31
    sget-object v6, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    invoke-static {p1, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    new-instance v7, Ljava/io/ObjectOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 34
    :try_start_3
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->flush()V

    .line 38
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "persistObject rename fail"

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v4, p0, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    invoke-static {v7}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 48
    invoke-static {v6}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v7}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 48
    invoke-static {v6}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    if-eqz v5, :cond_2

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    move-object v1, v7

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v7

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v6, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v6, v1

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v5, v1

    move-object v6, v5

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v5, v1

    move-object v6, v5

    .line 45
    :goto_0
    :try_start_4
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, p0, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 47
    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 48
    invoke-static {v6}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 50
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p0, "private_orange"

    const-string v2, "persist_fail_counts"

    .line 53
    invoke-static {p0, v2, p1, v0, v1}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :catchall_3
    move-exception p0

    .line 47
    :goto_2
    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 48
    invoke-static {v6}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    if-eqz v5, :cond_4

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    throw p0
.end method

.method public static restoreObject(Ljava/lang/String;)Lcom/taobao/orange/model/CheckDO;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taobao/orange/model/CheckDO;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "filename"

    const/4 v3, 0x2

    const-string/jumbo v4, "restoreObject"

    const/4 v5, 0x0

    const-string v6, "FileUtil"

    if-eqz v1, :cond_0

    .line 58
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v5

    aput-object p0, v1, v0

    invoke-static {v6, v4, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/taobao/orange/util/FileUtil;->targetDir:Ljava/io/File;

    invoke-direct {v7, v8, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v7, 0x3

    .line 65
    invoke-static {v7}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "restoreObject not exists"

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object p0, v3, v0

    invoke-static {v6, v7, v3}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    :cond_1
    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    return-object v1

    .line 70
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/model/CheckDO;

    .line 73
    invoke-interface {v3}, Lcom/taobao/orange/model/CheckDO;->checkValid()Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_3

    .line 80
    invoke-static {v2}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    return-object v3

    .line 74
    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check not vaild:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 78
    :goto_0
    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v0, v5}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 80
    invoke-static {v2}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v3}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v0, "private_orange"

    const-string/jumbo v4, "restore_fail_counts"

    .line 83
    invoke-static {v0, v4, p0, v2, v3}, Lcom/taobao/orange/util/OrangeMonitor;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v1

    :catchall_3
    move-exception p0

    move-object v1, v2

    move-object v0, v3

    .line 80
    :goto_1
    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method
