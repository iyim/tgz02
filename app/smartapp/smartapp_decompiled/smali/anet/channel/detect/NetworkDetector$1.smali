.class final Lanet/channel/detect/NetworkDetector$1;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/detect/NetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 55
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "awcn.NetworkDetector"

    const-string v4, "network detect thread start"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    :try_start_0
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$100()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 63
    :cond_0
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$300()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 68
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    :cond_1
    :goto_1
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    :goto_2
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v1

    monitor-enter v1

    .line 78
    :try_start_1
    invoke-static {}, Lanet/channel/AwcnConfig;->isHorseRaceEnable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    move-object v3, v2

    goto :goto_3

    .line 81
    :cond_3
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 83
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_4

    goto :goto_0

    .line 90
    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyResultParser$HrTask;

    .line 91
    invoke-static {v1}, Lanet/channel/detect/NetworkDetector;->access$400(Lanet/channel/strategy/StrategyResultParser$HrTask;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 93
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "awcn.NetworkDetector"

    const-string/jumbo v5, "start hr task failed"

    invoke-static {v4, v5, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 83
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
