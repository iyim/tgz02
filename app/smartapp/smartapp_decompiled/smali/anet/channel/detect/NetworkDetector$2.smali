.class final Lanet/channel/detect/NetworkDetector$2;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Lanet/channel/strategy/IStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/detect/NetworkDetector;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onStrategyUpdated(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 5

    const/4 v0, 0x0

    .line 105
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "awcn.NetworkDetector"

    const-string v4, "onStrategyUpdated"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lanet/channel/AwcnConfig;->isHorseRaceEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$500()Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_2

    .line 116
    new-instance v1, Ljava/lang/Thread;

    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$600()Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lanet/channel/detect/NetworkDetector;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 117
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$500()Ljava/lang/Thread;

    move-result-object v1

    const-string v3, "AWCN HR"

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$500()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 119
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "awcn.NetworkDetector"

    const-string/jumbo v4, "start horse race thread"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_2
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v1

    monitor-enter v1

    .line 123
    :goto_0
    :try_start_0
    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 124
    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;->hrTasks:[Lanet/channel/strategy/StrategyResultParser$HrTask;

    aget-object v2, v2, v0

    .line 125
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$200()Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, v2, Lanet/channel/strategy/StrategyResultParser$HrTask;->host:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 131
    :try_start_1
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$300()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 127
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
