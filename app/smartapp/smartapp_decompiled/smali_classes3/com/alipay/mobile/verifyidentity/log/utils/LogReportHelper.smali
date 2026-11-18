.class public Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;
.super Ljava/lang/Object;
.source "LogReportHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.alipay.mobile.verifyidentity.log.utils.LogReportHelper"

.field private static b:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper; = null

.field private static c:Ljava/lang/String; = "logData"

.field public static dispersedLogDirName:Ljava/lang/String; = "dispersedLog"

.field public static logDirName:Ljava/lang/String; = "verifyLog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;-><init>(Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;Ljava/util/Map;Ljava/io/File;)V

    const-string p1, "VI-reportFileData"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "VI-reportMemoryData"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDispersedLogFileName()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->dispersedLogDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".vi.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->b:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->b:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->b:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->b:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    return-object v0
.end method

.method public static getLogFileName()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->logDirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".vi.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAndReportData()V
    .locals 4

    monitor-enter p0

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->logDirName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->dispersedLogDirName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 72
    array-length v2, v0

    if-lez v2, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getFileLog([Ljava/io/File;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 75
    array-length v0, v1

    if-lez v0, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getFileLog([Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a:Ljava/lang/String;

    const-string v2, "getAndReportData \u51fa\u73b0\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getFileLog([Ljava/io/File;)V
    .locals 6

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 86
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".vi.log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->delete(Ljava/io/File;)Z

    goto :goto_1

    .line 91
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    sget-object v5, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a(Ljava/util/Map;Ljava/io/File;)V

    .line 94
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a:Ljava/lang/String;

    const-string v3, "\u672c\u5730\u6709\u6838\u8eab\u95ea\u9000\u65e5\u5fd7\u9700\u8981\u4e0a\u62a5"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 98
    sget-object v3, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized reportBehaviorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getAndReportData()V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportDispersedLog(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    .line 59
    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
