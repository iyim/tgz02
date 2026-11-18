.class public Lcom/ali/watchmem/WatchmemSDK;
.super Ljava/lang/Object;
.source "WatchmemSDK.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getJavaFreeMem()J
    .locals 2

    .line 29
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->nativeCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->getFreeMemoryByte()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getJavaWatchmemLevel()Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 1

    .line 17
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->javaCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeFreeMem()J
    .locals 2

    .line 25
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->javaCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->getFreeMemoryByte()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNativeWatchmemLevel()Lcom/ali/watchmem/core/WatchmemLevel;
    .locals 1

    .line 21
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->nativeCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;

    move-result-object v0

    return-object v0
.end method
