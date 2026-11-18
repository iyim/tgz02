.class final Lanet/channel/quic/QuicConnectionDetector$2;
.super Ljava/lang/Object;
.source "QuicConnectionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/quic/QuicConnectionDetector;->startDetect(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$strategyList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lanet/channel/quic/QuicConnectionDetector$2;->val$strategyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 96
    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->InitializeCerts()V

    .line 100
    :cond_0
    iget-object v0, p0, Lanet/channel/quic/QuicConnectionDetector$2;->val$strategyList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 102
    new-instance v2, Lanet/channel/entity/ConnInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuicDetect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lanet/channel/entity/ConnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    .line 103
    new-instance v3, Lanet/channel/session/TnetSpdySession;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V

    const/16 v2, 0x101

    .line 104
    new-instance v4, Lanet/channel/quic/QuicConnectionDetector$2$1;

    invoke-direct {v4, p0, v0}, Lanet/channel/quic/QuicConnectionDetector$2$1;-><init>(Lanet/channel/quic/QuicConnectionDetector$2;Lanet/channel/strategy/IConnStrategy;)V

    invoke-virtual {v3, v2, v4}, Lanet/channel/session/TnetSpdySession;->registerEventcb(ILanet/channel/entity/EventCb;)V

    .line 115
    iget-object v0, v3, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iput-boolean v1, v0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    .line 116
    invoke-virtual {v3}, Lanet/channel/session/TnetSpdySession;->connect()V

    return-void
.end method
