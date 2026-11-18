.class public Lanet/channel/statist/HorseRaceStat;
.super Lanet/channel/statist/StatObject;
.source "HorseRaceStat.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "horseRace"
.end annotation


# instance fields
.field public volatile bssid:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile connErrorCode:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile connRet:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile connTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public volatile host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile mnc:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile nettype:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile path:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile protocol:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile reqErrorCode:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile reqRet:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile reqTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 23
    iput v0, p0, Lanet/channel/statist/HorseRaceStat;->reqRet:I

    .line 31
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/HorseRaceStat;->nettype:Ljava/lang/String;

    .line 32
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getSimOp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/HorseRaceStat;->mnc:Ljava/lang/String;

    .line 33
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/HorseRaceStat;->bssid:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lanet/channel/statist/HorseRaceStat;->host:Ljava/lang/String;

    .line 35
    iget-object p1, p2, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/statist/HorseRaceStat;->ip:Ljava/lang/String;

    .line 36
    iget-object p1, p2, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget p1, p1, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    iput p1, p0, Lanet/channel/statist/HorseRaceStat;->port:I

    .line 37
    iget-object p1, p2, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    invoke-static {p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/StrategyResultParser$Aisles;)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    iget-object p1, p1, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/statist/HorseRaceStat;->protocol:Ljava/lang/String;

    .line 38
    iget-object p1, p2, Lanet/channel/strategy/StrategyResultParser$Strategy;->path:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/statist/HorseRaceStat;->path:Ljava/lang/String;

    return-void
.end method
