.class public Lorg/android/netutil/PingTask;
.super Lorg/android/netutil/AsyncTask;
.source "PingTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/android/netutil/AsyncTask;",
        "Ljava/util/concurrent/Future<",
        "[",
        "Lorg/android/netutil/PingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static PING_DEFAULT_TIME:I = 0x5


# instance fields
.field private lastHopIPStr:Ljava/lang/String;

.field private localIPStr:Ljava/lang/String;

.field private native_ptr:J

.field private pingIPStr:Ljava/lang/String;

.field private pingResults:[Lorg/android/netutil/PingResult;

.field private pingTaskWatcher:Lorg/android/netutil/PingTaskWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 30
    invoke-direct/range {v0 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIIILorg/android/netutil/PingTaskWatcher;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;IIIILorg/android/netutil/PingTaskWatcher;)V
    .locals 6

    .line 15
    invoke-direct {p0}, Lorg/android/netutil/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lorg/android/netutil/PingTask;->native_ptr:J

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    .line 113
    iput-object v0, p0, Lorg/android/netutil/PingTask;->pingIPStr:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lorg/android/netutil/PingTask;->localIPStr:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/android/netutil/PingTask;->lastHopIPStr:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lorg/android/netutil/PingTask;->pingTaskWatcher:Lorg/android/netutil/PingTaskWatcher;

    .line 17
    iput-object p6, p0, Lorg/android/netutil/PingTask;->pingTaskWatcher:Lorg/android/netutil/PingTaskWatcher;

    if-nez p3, :cond_0

    .line 19
    sget p3, Lorg/android/netutil/PingTask;->PING_DEFAULT_TIME:I

    .line 20
    :cond_0
    iput-object p1, p0, Lorg/android/netutil/PingTask;->pingIPStr:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/android/netutil/PingTask;->createPingTask(Ljava/lang/String;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/android/netutil/PingTask;->native_ptr:J

    if-nez p3, :cond_1

    .line 23
    sget p1, Lorg/android/netutil/PingTask;->PING_DEFAULT_TIME:I

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    new-array p1, p1, [Lorg/android/netutil/PingResult;

    iput-object p1, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p3, :cond_2

    .line 25
    iget-object p2, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    new-instance p4, Lorg/android/netutil/PingResult;

    invoke-direct {p4}, Lorg/android/netutil/PingResult;-><init>()V

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private native createPingTask(Ljava/lang/String;IIII)J
.end method

.method private native releasePingTask(J)V
.end method

.method private native waitPingTask(JJ)Z
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/android/netutil/PingTask;->get()[Lorg/android/netutil/PingResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/android/netutil/PingTask;->get(JLjava/util/concurrent/TimeUnit;)[Lorg/android/netutil/PingResult;

    move-result-object p1

    return-object p1
.end method

.method public get()[Lorg/android/netutil/PingResult;
    .locals 5

    .line 51
    iget-wide v0, p0, Lorg/android/netutil/PingTask;->native_ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/android/netutil/PingTask;->waitPingTask(JJ)Z

    .line 56
    iget-object v0, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)[Lorg/android/netutil/PingResult;
    .locals 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 62
    iget-wide v0, p0, Lorg/android/netutil/PingTask;->native_ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/android/netutil/PingTask;->waitPingTask(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    return-object p1

    .line 67
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public getLastHopIPStr()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/android/netutil/PingTask;->lastHopIPStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/android/netutil/PingTask;->pingIPStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIPStr()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/android/netutil/PingTask;->localIPStr:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/android/netutil/PingTask;->done:Z

    return v0
.end method

.method protected onPingEntry(IID)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/android/netutil/PingTask;->pingResults:[Lorg/android/netutil/PingResult;

    aget-object v0, v0, p1

    .line 86
    iget-object v1, p0, Lorg/android/netutil/PingTask;->pingTaskWatcher:Lorg/android/netutil/PingTaskWatcher;

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/android/netutil/PingTaskWatcher;->OnEntry(IID)V

    :cond_0
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/android/netutil/PingResult;->onPingEntry(IID)V

    :cond_1
    return-void
.end method

.method protected onTaskFinish(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-super {p0}, Lorg/android/netutil/AsyncTask;->onTaskFinish()V

    .line 78
    iget-object v0, p0, Lorg/android/netutil/PingTask;->pingTaskWatcher:Lorg/android/netutil/PingTaskWatcher;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lorg/android/netutil/PingTaskWatcher;->OnFinished()V

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/android/netutil/PingTask;->localIPStr:Ljava/lang/String;

    return-void
.end method

.method protected onTimxceed(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/android/netutil/PingTask;->lastHopIPStr:Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 2

    .line 73
    iget-wide v0, p0, Lorg/android/netutil/PingTask;->native_ptr:J

    invoke-direct {p0, v0, v1}, Lorg/android/netutil/PingTask;->releasePingTask(J)V

    return-void
.end method
