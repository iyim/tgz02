.class public final Lcom/aliyun/oss/common/comm/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field private static final REAP_INTERVAL_MILLISECONDS:I = 0x1388

.field private static final connectionManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/conn/HttpClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static idleConnectionTime:J

.field private static instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;


# instance fields
.field private volatile shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    const-wide/32 v0, 0xea60

    .line 39
    sput-wide v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->idleConnectionTime:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "idle_connection_reaper"

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->setDaemon(Z)V

    return-void
.end method

.method private markShuttingDown()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->shuttingDown:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized registerConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Z
    .locals 2

    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;-><init>()V

    sput-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    .line 51
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->start()V

    .line 53
    :cond_0
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Z
    .locals 2

    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 58
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->shutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setIdleConnectionTime(J)V
    .locals 1

    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0

    .line 116
    :try_start_0
    sput-wide p0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->idleConnectionTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized shutdown()Z
    .locals 2

    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    invoke-direct {v1}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->markShuttingDown()V

    .line 103
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    invoke-virtual {v1}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->interrupt()V

    .line 104
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 105
    sput-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->instance:Lcom/aliyun/oss/common/comm/IdleConnectionReaper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 106
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 108
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized size()I
    .locals 2

    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 71
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Shutting down reaper thread."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x1388

    .line 77
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :try_start_1
    const-class v0, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 84
    :try_start_2
    sget-object v1, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->connectionManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/HttpClientConnectionManager;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 88
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    .line 89
    sget-wide v2, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->idleConnectionTime:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    .line 91
    :try_start_5
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Unable to close idle connections"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 85
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    .line 95
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Reaper thread: "

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
