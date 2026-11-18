.class final Lanet/channel/detect/NetworkDetector$5;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Lanet/channel/strategy/IConnStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/detect/NetworkDetector;->makeConnStrategy(Lanet/channel/strategy/ConnProtocol;Lanet/channel/strategy/StrategyResultParser$Strategy;)Lanet/channel/strategy/IConnStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connProtocol:Lanet/channel/strategy/ConnProtocol;

.field final synthetic val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyResultParser$Strategy;Lanet/channel/strategy/ConnProtocol;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lanet/channel/detect/NetworkDetector$5;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iput-object p2, p0, Lanet/channel/detect/NetworkDetector$5;->val$connProtocol:Lanet/channel/strategy/ConnProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 338
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$5;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object v0, v0, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v0, v0, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    return v0
.end method

.method public getHeartbeat()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$5;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object v0, v0, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSource()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getIpType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 328
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$5;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object v0, v0, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v0, v0, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    return v0
.end method

.method public getProtocol()Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .line 333
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$5;->val$connProtocol:Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 343
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$5;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object v0, v0, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v0, v0, Lanet/channel/strategy/StrategyResultParser$Aisles;->rto:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
