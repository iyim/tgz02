.class public Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;
.super Ljava/lang/Object;
.source "UmbrellaProcessTracker.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final sPageList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static trackHandler:Landroid/os/Handler;

.field private static trackHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Umbrella-Performance-Trace-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandlerThread:Landroid/os/HandlerThread;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sPageList:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addAbTestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 164
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x6

    .line 169
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->abId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->abBucket(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 170
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p0, v0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->addArgs(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static addArgs(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 137
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 141
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->args(Ljava/util/Map;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addOtherProcess(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 183
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x8

    .line 188
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime(J)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventPoint(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 189
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addPageLoad(Ljava/lang/String;J)V
    .locals 1

    .line 174
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 178
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->PAGELOAD:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->umbrellaProcess(Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime(J)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 179
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addProcess(Ljava/lang/String;Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;J)V
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 107
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->umbrellaProcess(Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime(J)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addSubProcess(Ljava/lang/String;Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;Ljava/lang/String;J)V
    .locals 1

    .line 120
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 125
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->umbrellaProcess(Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventPoint(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime(J)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 126
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commit(Ljava/lang/String;)V
    .locals 3

    .line 86
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->removeBiz(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;J)V

    const/4 p0, 0x5

    .line 91
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_0

    .line 32
    sget-object v1, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v1, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker$1;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isContainBiz(Ljava/lang/String;)Z
    .locals 6

    .line 202
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sPageList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sPageList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return v1

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 214
    :cond_2
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->removeBiz(Ljava/lang/String;)V

    return v1
.end method

.method private static recordBiz(Ljava/lang/String;)V
    .locals 3

    .line 220
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sPageList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isOpenGrayReport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getIsGrayVersion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getPerformancePageSampleResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    :cond_2
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_3

    .line 71
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->init()V

    .line 73
    :cond_3
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->recordBiz(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 75
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_4
    return-void
.end method

.method private static removeBiz(Ljava/lang/String;)V
    .locals 1

    .line 224
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sPageList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 1

    .line 194
    sget-object v0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 196
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    sget-object p0, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->trackHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static setChildBizName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 154
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaUtils;->checkForceCloseAndBizName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->isContainBiz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 159
    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->childBizName(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    move-result-object p0

    .line 160
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcessTracker;->sendProcessEvent(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
