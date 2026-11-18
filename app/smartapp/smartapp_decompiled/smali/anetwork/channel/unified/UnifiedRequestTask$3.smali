.class Lanetwork/channel/unified/UnifiedRequestTask$3;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/unified/UnifiedRequestTask;->commitTimeoutTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/unified/UnifiedRequestTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/UnifiedRequestTask;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 143
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v0, v0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v0, v0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v0, v0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    .line 145
    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, -0xca

    if-eqz v3, :cond_0

    .line 146
    iput v5, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 147
    invoke-static {v5}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 149
    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v3, v3, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "rs"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    const-string v1, "anet.UnifiedRequestTask"

    const-string/jumbo v2, "task time out"

    invoke-static {v1, v2, v3, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v2, v5, v4, v0, v4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v1, v1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v1}, Lanetwork/channel/unified/RequestContext;->cancelRunningTask()V

    .line 153
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$3;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v1, v1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    new-instance v2, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v2, v5, v4, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v1, v2}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_1
    return-void
.end method
