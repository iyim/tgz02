.class Lanet/channel/session/TnetSpdySession$1;
.super Ljava/lang/Object;
.source "TnetSpdySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/TnetSpdySession;->getRecvTimeOutRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 373
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-boolean v0, v0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "pingUnRcv:"

    aput-object v3, v1, v2

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-boolean v3, v3, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "awcn.TnetSpdySession"

    const-string/jumbo v5, "send msg time out!"

    invoke-static {v3, v5, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    const/16 v1, 0x800

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lanet/channel/session/TnetSpdySession;->access$000(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V

    .line 377
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string v1, "ping time out"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 381
    :cond_0
    new-instance v0, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v0}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 382
    iput-boolean v2, v0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 383
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v2}, Lanet/channel/session/TnetSpdySession;->access$100(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v3}, Lanet/channel/session/TnetSpdySession;->access$200(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 384
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$1;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v0, v4}, Lanet/channel/session/TnetSpdySession;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
