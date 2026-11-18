.class public Lcom/ali/watchmem/core/WatchmemManager;
.super Ljava/lang/Object;
.source "WatchmemManager.java"

# interfaces
.implements Lcom/ali/watchmem/gcdetector/IGCReceiver;
.implements Lcom/ali/watchmem/core/INativeMemoryReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/core/WatchmemManager$Holder;
    }
.end annotation


# instance fields
.field private final mJavaCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

.field private final mNativeCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

.field private volatile mStart:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;

    invoke-direct {v0}, Lcom/ali/watchmem/core/WatchmemJavaLevelCalculator;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mJavaCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    .line 14
    new-instance v0, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;

    invoke-direct {v0}, Lcom/ali/watchmem/core/WatchmemNativeLevelCalculator;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mNativeCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/core/WatchmemManager$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemManager;-><init>()V

    return-void
.end method

.method public static instance()Lcom/ali/watchmem/core/WatchmemManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager$Holder;->access$000()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public gc()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mJavaCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V

    return-void
.end method

.method public javaCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mJavaCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    return-object v0
.end method

.method public nativeCalculator()Lcom/ali/watchmem/core/IWatchmemLevelCalculator;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mNativeCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    return-object v0
.end method

.method public nativeMemory()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mNativeCalculator:Lcom/ali/watchmem/core/IWatchmemLevelCalculator;

    invoke-interface {v0}, Lcom/ali/watchmem/core/IWatchmemLevelCalculator;->calculateLevel()Lcom/ali/watchmem/core/WatchmemLevel;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->onNativeLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mStart:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/ali/watchmem/core/WatchmemManager;->mStart:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
