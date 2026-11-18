.class Lanet/channel/strategy/StrategyInstance$1;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Lanet/channel/strategy/IStrategyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/StrategyInstance;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInstance;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lanet/channel/strategy/StrategyInstance$1;->this$0:Lanet/channel/strategy/StrategyInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lanet/channel/strategy/IConnStrategy;)Z
    .locals 5

    .line 42
    invoke-static {}, Lanet/channel/AwcnConfig;->isQuicEnable()Z

    move-result v0

    .line 43
    iget-object v1, p0, Lanet/channel/strategy/StrategyInstance$1;->this$0:Lanet/channel/strategy/StrategyInstance;

    iget-object v1, v1, Lanet/channel/strategy/StrategyInstance;->holder:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->getCurrStrategyTable()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    iget-boolean v1, v1, Lanet/channel/strategy/StrategyTable;->enableQuic:Z

    .line 44
    invoke-interface {p1}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    iget-object v2, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "quic"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "quicplain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v4, "strategy"

    aput-object v4, v1, v2

    aput-object p1, v1, v3

    const-string p1, "awcn.StrategyCenter"

    const-string/jumbo v3, "quic strategy disabled"

    invoke-static {p1, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
