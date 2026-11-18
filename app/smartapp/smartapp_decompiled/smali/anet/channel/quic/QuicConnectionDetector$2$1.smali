.class Lanet/channel/quic/QuicConnectionDetector$2$1;
.super Ljava/lang/Object;
.source "QuicConnectionDetector.java"

# interfaces
.implements Lanet/channel/entity/EventCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/quic/QuicConnectionDetector$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/quic/QuicConnectionDetector$2;

.field final synthetic val$strategy:Lanet/channel/strategy/IConnStrategy;


# direct methods
.method constructor <init>(Lanet/channel/quic/QuicConnectionDetector$2;Lanet/channel/strategy/IConnStrategy;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lanet/channel/quic/QuicConnectionDetector$2$1;->this$0:Lanet/channel/quic/QuicConnectionDetector$2;

    iput-object p2, p0, Lanet/channel/quic/QuicConnectionDetector$2$1;->val$strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;ILanet/channel/entity/Event;)V
    .locals 2

    .line 107
    new-instance p3, Lanet/channel/strategy/ConnEvent;

    invoke-direct {p3}, Lanet/channel/strategy/ConnEvent;-><init>()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 109
    iput-boolean v0, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 111
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-static {}, Lanet/channel/quic/QuicConnectionDetector;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/quic/QuicConnectionDetector$2$1;->val$strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p2, v0, v1, p3}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Lanet/channel/Session;->close(Z)V

    return-void
.end method
