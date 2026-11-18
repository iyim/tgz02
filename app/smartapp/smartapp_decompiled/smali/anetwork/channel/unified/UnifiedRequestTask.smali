.class Lanetwork/channel/unified/UnifiedRequestTask;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.UnifiedRequestTask"


# instance fields
.field protected rc:Lanetwork/channel/unified/RequestContext;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/entity/Repeater;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lanetwork/channel/entity/RequestConfig;->seqNo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lanetwork/channel/entity/Repeater;->setSeqNo(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lanetwork/channel/unified/RequestContext;

    invoke-direct {v0, p1, p2}, Lanetwork/channel/unified/RequestContext;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/interceptor/Callback;)V

    iput-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    return-void
.end method

.method static synthetic access$000(Lanetwork/channel/unified/UnifiedRequestTask;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lanetwork/channel/unified/UnifiedRequestTask;->commitTimeoutTask()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private commitTimeoutTask()V
    .locals 5

    .line 140
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    new-instance v1, Lanetwork/channel/unified/UnifiedRequestTask$3;

    invoke-direct {v1, p0}, Lanetwork/channel/unified/UnifiedRequestTask$3;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;)V

    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->getWaitTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/unified/RequestContext;->timeoutTask:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method cancelTask()V
    .locals 11

    .line 160
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "URL"

    aput-object v6, v5, v2

    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "anet.UnifiedRequestTask"

    const-string/jumbo v6, "task cancelled"

    invoke-static {v0, v6, v3, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v0, v0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    .line 171
    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, -0xcc

    if-eqz v1, :cond_0

    .line 172
    iput v4, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 173
    iput v3, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 174
    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 176
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v4, v3, v2, v0, v2}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 177
    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    const-wide/32 v6, 0x19000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 179
    invoke-static {}, Lanet/channel/monitor/BandWidthSampler;->getInstance()Lanet/channel/monitor/BandWidthSampler;

    move-result-object v4

    iget-wide v5, v0, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-wide v7, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    iget-wide v9, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual/range {v4 .. v10}, Lanet/channel/monitor/BandWidthSampler;->onDataReceived(JJJ)V

    .line 183
    :cond_0
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v1}, Lanetwork/channel/unified/RequestContext;->cancelRunningTask()V

    .line 184
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v1}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 185
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    new-instance v4, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v4, v3, v2, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v1, v4}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_1
    return-void
.end method

.method public request()Ljava/util/concurrent/Future;
    .locals 4

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v2, v2, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, v2, Lanet/channel/statist/RequestStatistic;->reqServiceTransmissionEnd:J

    .line 97
    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v2, v2, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, v2, Lanet/channel/statist/RequestStatistic;->start:J

    .line 100
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v0, v0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    const-string v2, "f-netReqStart"

    invoke-virtual {v1, v2}, Lanetwork/channel/entity/RequestConfig;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->netReqStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    .line 104
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Url"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "anet.UnifiedRequestTask"

    const-string/jumbo v3, "request"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    const-string v1, "f-traceId"

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestConfig;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v1, v1, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    iput-object v0, v1, Lanet/channel/statist/RequestStatistic;->traceId:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v0, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->isUrlInDegradeList(Lanet/channel/util/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Lanetwork/channel/unified/DegradeTask;

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-direct {v0, v1}, Lanetwork/channel/unified/DegradeTask;-><init>(Lanetwork/channel/unified/RequestContext;)V

    .line 115
    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iput-object v0, v1, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 116
    new-instance v1, Lanet/channel/request/FutureCancelable;

    new-instance v2, Lanetwork/channel/unified/UnifiedRequestTask$1;

    invoke-direct {v2, p0}, Lanetwork/channel/unified/UnifiedRequestTask$1;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;)V

    invoke-static {v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitBackupTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->getAwcnRequest()Lanet/channel/request/Request;

    move-result-object v3

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lanet/channel/request/FutureCancelable;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .line 122
    iput-object v1, v0, Lanetwork/channel/unified/DegradeTask;->cancelable:Lanet/channel/request/Cancelable;

    .line 123
    invoke-direct {p0}, Lanetwork/channel/unified/UnifiedRequestTask;->commitTimeoutTask()V

    .line 124
    new-instance v0, Lanetwork/channel/unified/FutureResponse;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/FutureResponse;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;)V

    return-object v0

    .line 127
    :cond_2
    new-instance v0, Lanetwork/channel/unified/UnifiedRequestTask$2;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/UnifiedRequestTask$2;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;)V

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 136
    new-instance v0, Lanetwork/channel/unified/FutureResponse;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/FutureResponse;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;)V

    return-object v0
.end method
