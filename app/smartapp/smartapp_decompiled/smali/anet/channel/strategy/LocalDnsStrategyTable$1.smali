.class Lanet/channel/strategy/LocalDnsStrategyTable$1;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/LocalDnsStrategyTable;->startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$lockObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lanet/channel/strategy/LocalDnsStrategyTable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iput-object p2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 113
    :try_start_0
    iget-object v4, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 117
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v5

    iget-object v6, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lanet/channel/strategy/StrategyTemplate;->getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 119
    iget-object v5, v7, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v7, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    const/16 v5, 0x50

    const/16 v6, 0x50

    goto :goto_2

    :cond_2
    const/16 v5, 0x1bb

    const/16 v6, 0x1bb

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0xafc8

    move-object v5, v4

    .line 120
    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v6, 0x50

    .line 122
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x1bb

    .line 123
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v5, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v5, v5, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v6, "resolve ip by local dns"

    const/4 v7, 0x6

    .line 127
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v2

    iget-object v8, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "ip"

    aput-object v8, v7, v0

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v4, 0x4

    const-string v8, "list"

    aput-object v8, v7, v4

    const/4 v4, 0x5

    aput-object v12, v7, v4

    invoke-static {v5, v6, v1, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    :cond_4
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v0, v0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 136
    :try_start_1
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v1, v1, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_2
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 137
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 130
    :catch_0
    :try_start_4
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v5, "resolve ip by local dns failed"

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v0, v2

    iget-object v2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-static {v4, v5, v1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_5
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v0, v0, Lanet/channel/strategy/LocalDnsStrategyTable;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v0, v0, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 136
    :try_start_5
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v1, v1, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 138
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_6
    iget-object v0, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v1

    :goto_3
    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 137
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 135
    :goto_4
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v1, v1, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 136
    :try_start_8
    iget-object v2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->this$0:Lanet/channel/strategy/LocalDnsStrategyTable;

    iget-object v2, v2, Lanet/channel/strategy/LocalDnsStrategyTable;->lockObjMap:Ljava/util/HashMap;

    iget-object v3, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 138
    iget-object v2, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_9
    iget-object v1, p0, Lanet/channel/strategy/LocalDnsStrategyTable$1;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    .line 137
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0
.end method
