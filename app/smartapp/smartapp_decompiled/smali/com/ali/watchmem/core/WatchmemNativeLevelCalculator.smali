.class public Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;
.super Ljava/lang/Object;
.source "WatchmemNativeLevelCalculator.java"

# interfaces
.implements Lcom/ali/watchmem/core/IWatchmemLevelCalculator;


# static fields
.field private static final CRITICAL:J = 0xa00000L

.field private static final DANGEROUS:J = 0x1400000L

.field private static final HIGH:J = 0x3200000L

.field private static final INVALID:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "WatchmemNativeLevelCalculator"


# instance fields
.field private mLastCalculateTime:J

.field private final mMinMem:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mLastCalculateTime:J

    .line 31
    invoke-static {}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->instance()Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->getSystemLowMemoryValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    return-void
.end method

.method private getCurrentHeap2()J
    .locals 19

    move-object/from16 v1, p0

    const/4 v4, 0x0

    .line 147
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/proc/zoneinfo"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 161
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v4, " "

    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-direct {v1, v4}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->getStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 164
    array-length v2, v4

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 167
    aget-object v2, v4, v2

    const/16 v18, 0x1

    .line 168
    aget-object v4, v4, v18

    const-string v3, "nr_free_pages"

    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v10, v2

    goto :goto_0

    :cond_2
    const-string v3, "nr_file_pages"

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v12, v2

    goto :goto_0

    :cond_3
    const-string v3, "high"

    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v6, v2

    goto :goto_0

    :cond_4
    const-string v3, "nr_shmem"

    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v14, v2

    goto :goto_0

    :cond_5
    const-string v3, "protection:"

    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, ":"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 180
    aget-object v0, v0, v18

    invoke-direct {v1, v0}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->zoneinfoParseProtection(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v8, v2

    goto/16 :goto_0

    :cond_6
    const-string v0, "nr_unevictable"

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v16, v16, v2

    goto/16 :goto_0

    :cond_7
    add-long/2addr v6, v8

    sub-long/2addr v10, v6

    sub-long/2addr v12, v14

    sub-long v12, v12, v16

    const-wide/16 v2, 0x4

    mul-long v10, v10, v2

    const-wide/16 v6, 0x400

    mul-long v10, v10, v6

    mul-long v12, v12, v2

    mul-long v12, v12, v6

    .line 190
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 198
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-wide v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    goto :goto_4

    :catch_2
    move-exception v0

    .line 192
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_8

    .line 196
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 198
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    const-wide/16 v2, 0x0

    return-wide v2

    :goto_4
    if-eqz v5, :cond_9

    .line 196
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 198
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    :cond_9
    :goto_5
    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method

.method private getStrings([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 213
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    aget-object v3, p1, v1

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private left()J
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->getCurrentHeap2()J

    move-result-wide v0

    return-wide v0
.end method

.method private zoneinfoParseProtection(Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, ", "

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 232
    array-length v1, p1

    const-wide/16 v2, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 235
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    move-wide v2, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-wide v2
.end method


# virtual methods
.method public calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 10

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    iget-wide v2, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mLastCalculateTime:J

    .line 39
    iput-wide v0, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mLastCalculateTime:J

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->left()J

    move-result-wide v4

    const-string v6, "WatchmemNativeLevelCalculator"

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Native Memory: interval:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " left:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x400

    div-long v8, v4, v2

    div-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/ali/watchmem/logger/WatchmemLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    .line 45
    iget-wide v2, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xa00000

    .line 49
    iget-wide v6, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    add-long/2addr v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 50
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 51
    :cond_1
    iget-wide v2, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    const-wide/32 v6, 0x1400000

    add-long/2addr v2, v6

    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    const-wide/16 v2, 0x14

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    .line 52
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 53
    :cond_2
    iget-wide v0, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    add-long/2addr v0, v6

    cmp-long v2, v4, v0

    if-gez v2, :cond_3

    .line 54
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    :cond_3
    const-wide/32 v0, 0x3200000

    .line 55
    iget-wide v2, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    add-long/2addr v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_4

    .line 56
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->HIGH:Lcom/ali/watchmem/core/WatchmemLevel;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 62
    :cond_4
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 46
    :cond_5
    :goto_0
    :try_start_1
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 59
    :catch_0
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0
.end method

.method public getFreeMemoryByte()J
    .locals 4

    .line 67
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->left()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;->mMinMem:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa00000

    sub-long/2addr v0, v2

    return-wide v0
.end method
