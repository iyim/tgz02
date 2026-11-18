.class final Lanet/channel/detect/NetworkDetector$4;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Lanet/channel/entity/EventCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/detect/NetworkDetector;->startLongLinkTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$seqNum:Ljava/lang/String;

.field final synthetic val$start:J

.field final synthetic val$stat:Lanet/channel/statist/HorseRaceStat;

.field final synthetic val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

.field final synthetic val$tnetSpdySession:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/statist/HorseRaceStat;JLjava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;Lanet/channel/session/TnetSpdySession;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iput-wide p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$start:J

    iput-object p4, p0, Lanet/channel/detect/NetworkDetector$4;->val$seqNum:Ljava/lang/String;

    iput-object p5, p0, Lanet/channel/detect/NetworkDetector$4;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iput-object p6, p0, Lanet/channel/detect/NetworkDetector$4;->val$tnetSpdySession:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;ILanet/channel/entity/Event;)V
    .locals 5

    .line 236
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget-wide v0, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lanet/channel/detect/NetworkDetector$4;->val$start:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 243
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$seqNum:Ljava/lang/String;

    const/4 p3, 0x0

    new-array v1, p3, [Ljava/lang/Object;

    const-string v2, "awcn.NetworkDetector"

    const-string/jumbo v3, "tnetSpdySession connect success"

    invoke-static {v2, v3, p2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iput v0, p2, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 254
    :cond_1
    new-instance p2, Lanet/channel/request/Request$Builder;

    invoke-direct {p2}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$strategy:Lanet/channel/strategy/StrategyResultParser$Strategy;

    iget-object p2, p2, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget p2, p2, Lanet/channel/strategy/StrategyResultParser$Aisles;->rto:I

    invoke-virtual {p1, p2}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$seqNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$tnetSpdySession:Lanet/channel/session/TnetSpdySession;

    new-instance p3, Lanet/channel/detect/NetworkDetector$4$1;

    invoke-direct {p3, p0}, Lanet/channel/detect/NetworkDetector$4$1;-><init>(Lanet/channel/detect/NetworkDetector$4;)V

    invoke-virtual {p2, p1, p3}, Lanet/channel/session/TnetSpdySession;->request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    iget p2, p3, Lanet/channel/entity/Event;->errorCode:I

    iput p2, p1, Lanet/channel/statist/HorseRaceStat;->connErrorCode:I

    .line 288
    iget-object p1, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    monitor-enter p1

    .line 289
    :try_start_0
    iget-object p2, p0, Lanet/channel/detect/NetworkDetector$4;->val$stat:Lanet/channel/statist/HorseRaceStat;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 290
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
