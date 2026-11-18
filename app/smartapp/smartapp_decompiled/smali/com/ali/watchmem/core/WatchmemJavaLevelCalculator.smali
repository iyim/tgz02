.class public Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;
.super Ljava/lang/Object;
.source "WatchmemJavaLevelCalculator.java"

# interfaces
.implements Lcom/ali/watchmem/core/IWatchmemLevelCalculator;


# static fields
.field private static CRITICAL:J = 0x500000L

.field private static DANGEROUS:J = 0xa00000L

.field private static HIGH:J = 0x1400000L

.field private static final TAG:Ljava/lang/String; = "JavaWatchmemLevelCalculator"


# instance fields
.field private mLastCalculateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 21
    sget-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->CRITICAL:J

    const-wide/16 v4, 0x2

    mul-long v4, v4, v0

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sput-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->CRITICAL:J

    .line 22
    sget-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->DANGEROUS:J

    const-wide/16 v4, 0x5

    mul-long v4, v4, v0

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sput-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->DANGEROUS:J

    .line 23
    sget-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->HIGH:J

    const-wide/16 v4, 0x8

    mul-long v0, v0, v4

    div-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->HIGH:J

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->mLastCalculateTime:J

    return-void
.end method

.method private currentHeapSize()J
    .locals 2

    .line 70
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private left()J
    .locals 6

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private maxHeapSize()J
    .locals 2

    .line 66
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 12

    .line 33
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->currentHeapSize()J

    move-result-wide v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 35
    iget-wide v4, p0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->mLastCalculateTime:J

    .line 36
    iput-wide v2, p0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->mLastCalculateTime:J

    .line 38
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->maxHeapSize()J

    move-result-wide v6

    .line 39
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->left()J

    move-result-wide v8

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutOfMemory: currentHeap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "max:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  interval:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v4

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " left:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWatchmemLevelCalculator"

    invoke-static {v1, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v4, v8, v0

    if-gtz v4, :cond_0

    .line 44
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 47
    :cond_0
    sget-wide v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->CRITICAL:J

    cmp-long v4, v8, v0

    if-gez v4, :cond_1

    .line 48
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 49
    :cond_1
    sget-wide v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->DANGEROUS:J

    cmp-long v4, v8, v0

    if-gez v4, :cond_2

    const-wide/16 v0, 0xa

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 50
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 51
    :cond_2
    sget-wide v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->DANGEROUS:J

    cmp-long v2, v8, v0

    if-gez v2, :cond_3

    .line 52
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 53
    :cond_3
    sget-wide v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->HIGH:J

    cmp-long v2, v8, v0

    if-gez v2, :cond_4

    .line 54
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->HIGH:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0

    .line 57
    :cond_4
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    return-object v0
.end method

.method public getFreeMemoryByte()J
    .locals 4

    .line 62
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->left()J

    move-result-wide v0

    sget-wide v2, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;->CRITICAL:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
