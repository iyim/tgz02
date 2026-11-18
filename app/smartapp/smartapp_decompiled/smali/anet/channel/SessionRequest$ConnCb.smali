.class Lanet/channel/SessionRequest$ConnCb;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lanet/channel/SessionRequest$IConnCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnCb"
.end annotation


# instance fields
.field private connInfo:Lanet/channel/entity/ConnInfo;

.field private context:Landroid/content/Context;

.field isHandleFinish:Z

.field private strategys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/entity/ConnInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lanet/channel/SessionRequest;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/ConnInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lanet/channel/entity/ConnInfo;",
            ">;",
            "Lanet/channel/entity/ConnInfo;",
            ")V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    .line 220
    iput-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->context:Landroid/content/Context;

    .line 221
    iput-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    .line 222
    iput-object p4, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    return-void
.end method

.method static synthetic access$600(Lanet/channel/SessionRequest$ConnCb;)Landroid/content/Context;
    .locals 0

    .line 213
    iget-object p0, p0, Lanet/channel/SessionRequest$ConnCb;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onDisConnect(Lanet/channel/Session;JI)V
    .locals 6

    .line 332
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result p2

    .line 333
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p3}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    new-array p4, p4, [Ljava/lang/Object;

    const-string/jumbo v0, "session"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const/4 v2, 0x1

    aput-object p1, p4, v2

    const/4 v3, 0x2

    const-string v4, "host"

    aput-object v4, p4, v3

    iget-object v4, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v4}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, p4, v5

    const/4 v4, 0x4

    const-string v5, "appIsBg"

    aput-object v5, p4, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, p4, v5

    const/4 v4, 0x6

    const-string v5, "isHandleFinish"

    aput-object v5, p4, v4

    iget-boolean v4, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, p4, v5

    const-string v4, "awcn.SessionRequest"

    const-string v5, "Connect Disconnect"

    invoke-static {v4, v5, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3}, Lanet/channel/SessionRequest;->access$100(Lanet/channel/SessionRequest;)Lanet/channel/SessionPool;

    move-result-object p3

    iget-object p4, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {p3, p4, p1}, Lanet/channel/SessionPool;->remove(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 336
    iget-boolean p3, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    if-eqz p3, :cond_0

    return-void

    .line 339
    :cond_0
    iput-boolean v2, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    .line 341
    iget-boolean p3, p1, Lanet/channel/Session;->autoReCreate:Z

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 345
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "[onDisConnect]app background, don\'t Recreate"

    invoke-static {v4, p1, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 348
    :cond_2
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p2

    if-nez p2, :cond_3

    .line 349
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "[onDisConnect]no network, don\'t Recreate"

    invoke-static {v4, p1, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    const-string/jumbo p2, "session disconnected, try to recreate session"

    .line 353
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p3}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {v4, p2, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    new-instance p2, Lanet/channel/SessionRequest$ConnCb$1;

    invoke-direct {p2, p0, p1}, Lanet/channel/SessionRequest$ConnCb$1;-><init>(Lanet/channel/SessionRequest$ConnCb;Lanet/channel/Session;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p3, p3, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p3, p3, v0

    double-to-long p3, p3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, p4, p1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onFailed(Lanet/channel/Session;JII)V
    .locals 5

    const/4 p2, 0x1

    .line 229
    invoke-static {p2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 230
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p3}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "session"

    aput-object v3, v2, v1

    aput-object p1, v2, p2

    const-string v3, "host"

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v4, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v4}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isHandleFinish"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "awcn.SessionRequest"

    const-string v4, "Connect failed"

    invoke-static {v3, v4, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_0
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    iget-boolean p3, p3, Lanet/channel/SessionRequest;->isToClose:Z

    if-eqz p3, :cond_1

    .line 234
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    iput-boolean v1, p1, Lanet/channel/SessionRequest;->isToClose:Z

    return-void

    .line 238
    :cond_1
    iget-boolean p3, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    if-eqz p3, :cond_2

    return-void

    .line 241
    :cond_2
    iput-boolean p2, p0, Lanet/channel/SessionRequest$ConnCb;->isHandleFinish:Z

    .line 243
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3}, Lanet/channel/SessionRequest;->access$100(Lanet/channel/SessionRequest;)Lanet/channel/SessionPool;

    move-result-object p3

    iget-object v2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {p3, v2, p1}, Lanet/channel/SessionPool;->remove(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 245
    iget-boolean p3, p1, Lanet/channel/Session;->tryNextWhenFail:Z

    if-eqz p3, :cond_b

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_2

    .line 263
    :cond_3
    invoke-static {p2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 264
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p3}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "host"

    aput-object v2, v0, v1

    iget-object v2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v2}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    const-string p2, "awcn.SessionRequest"

    const-string/jumbo v2, "use next connInfo to create session"

    invoke-static {p2, v2, p3, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_4
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    iget p2, p2, Lanet/channel/entity/ConnInfo;->retryTime:I

    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    iget p3, p3, Lanet/channel/entity/ConnInfo;->maxRetryTime:I

    if-ne p2, p3, :cond_7

    const/16 p2, -0x7d3

    if-eq p5, p2, :cond_5

    const/16 p2, -0x96a

    if-ne p5, p2, :cond_7

    .line 270
    :cond_5
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 271
    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 272
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/ConnInfo;

    .line 273
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p3}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 274
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 280
    :cond_7
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 281
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 282
    :cond_8
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 283
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/ConnInfo;

    .line 284
    iget-object p3, p3, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p3}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 285
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 291
    :cond_9
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 292
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2}, Lanet/channel/SessionRequest;->access$200(Lanet/channel/SessionRequest;)V

    .line 293
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2, p1, p4, p5}, Lanet/channel/SessionRequest;->access$300(Lanet/channel/SessionRequest;Lanet/channel/Session;II)V

    return-void

    .line 297
    :cond_a
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/entity/ConnInfo;

    .line 298
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->context:Landroid/content/Context;

    new-instance p4, Lanet/channel/SessionRequest$ConnCb;

    iget-object p5, p0, Lanet/channel/SessionRequest$ConnCb;->strategys:Ljava/util/List;

    invoke-direct {p4, p2, p3, p5, p1}, Lanet/channel/SessionRequest$ConnCb;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/ConnInfo;)V

    invoke-virtual {p1}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p3, p1, p4, p5}, Lanet/channel/SessionRequest;->access$400(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/ConnInfo;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_b
    :goto_2
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3}, Lanet/channel/SessionRequest;->access$200(Lanet/channel/SessionRequest;)V

    .line 248
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3, p1, p4, p5}, Lanet/channel/SessionRequest;->access$300(Lanet/channel/SessionRequest;Lanet/channel/Session;II)V

    .line 250
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p1}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 251
    :try_start_0
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;

    .line 253
    iget-object v0, p5, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 254
    invoke-static {p5}, Lanet/channel/thread/ThreadPoolExecutorFactory;->removeScheduleTask(Ljava/lang/Runnable;)V

    .line 255
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lanet/channel/SessionGetCallback;

    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    goto :goto_3

    .line 258
    :cond_d
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 259
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public onSuccess(Lanet/channel/Session;J)V
    .locals 5

    .line 303
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "session"

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-object p1, p3, v1

    const/4 v2, 0x2

    const-string v3, "host"

    aput-object v3, p3, v2

    iget-object v2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v2}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, p3, v3

    const-string v2, "awcn.SessionRequest"

    const-string v3, "Connect Success"

    invoke-static {v2, v3, p2, p3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :try_start_0
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    iget-boolean p2, p2, Lanet/channel/SessionRequest;->isToClose:Z

    if-eqz p2, :cond_0

    .line 306
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    iput-boolean v0, p2, Lanet/channel/SessionRequest;->isToClose:Z

    .line 307
    invoke-virtual {p1, v0}, Lanet/channel/Session;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p1}, Lanet/channel/SessionRequest;->access$200(Lanet/channel/SessionRequest;)V

    return-void

    .line 311
    :cond_0
    :try_start_1
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2}, Lanet/channel/SessionRequest;->access$100(Lanet/channel/SessionRequest;)Lanet/channel/SessionPool;

    move-result-object p2

    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {p2, p3, p1}, Lanet/channel/SessionPool;->add(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 312
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2, p1}, Lanet/channel/SessionRequest;->access$500(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 313
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    :try_start_2
    iget-object p3, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p3}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;

    .line 316
    iget-object v4, v3, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    invoke-static {v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->removeScheduleTask(Ljava/lang/Runnable;)V

    .line 318
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/SessionGetCallback;

    invoke-interface {v2, p1}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p1}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 322
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "awcn.SessionRequest"

    const-string p3, "[onSuccess]:"

    .line 324
    iget-object v1, p0, Lanet/channel/SessionRequest$ConnCb;->connInfo:Lanet/channel/entity/ConnInfo;

    invoke-virtual {v1}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    :goto_1
    iget-object p1, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p1}, Lanet/channel/SessionRequest;->access$200(Lanet/channel/SessionRequest;)V

    return-void

    :goto_2
    iget-object p2, p0, Lanet/channel/SessionRequest$ConnCb;->this$0:Lanet/channel/SessionRequest;

    invoke-static {p2}, Lanet/channel/SessionRequest;->access$200(Lanet/channel/SessionRequest;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
