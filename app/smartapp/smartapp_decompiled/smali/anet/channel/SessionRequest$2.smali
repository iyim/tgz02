.class Lanet/channel/SessionRequest$2;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lanet/channel/entity/EventCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionRequest;->registerEvent(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/SessionRequest;

.field final synthetic val$session:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/Session;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lanet/channel/SessionRequest$2;->this$0:Lanet/channel/SessionRequest;

    iput-object p2, p0, Lanet/channel/SessionRequest$2;->val$session:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;ILanet/channel/entity/Event;)V
    .locals 3

    const/4 p1, 0x2

    .line 541
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "eventType"

    aput-object v0, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const-string p3, "awcn.SessionRequest"

    const-string v1, "Receive session event"

    const/4 v2, 0x0

    invoke-static {p3, v1, v2, p1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    new-instance p1, Lanet/channel/strategy/ConnEvent;

    invoke-direct {p1}, Lanet/channel/strategy/ConnEvent;-><init>()V

    const/16 p3, 0x200

    if-ne p2, p3, :cond_0

    .line 545
    iput-boolean v0, p1, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 547
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    iget-object p3, p0, Lanet/channel/SessionRequest$2;->val$session:Lanet/channel/Session;

    invoke-virtual {p3}, Lanet/channel/Session;->getRealHost()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lanet/channel/SessionRequest$2;->val$session:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    invoke-interface {p2, p3, v0, p1}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    return-void
.end method
