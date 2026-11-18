.class Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;
.super Ljava/lang/Object;
.source "AnalysisFactory.java"

# interfaces
.implements Lanet/channel/fulltrace/IFullTraceAnalysis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/fulltrace/AnalysisFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalysisProxy"
.end annotation


# instance fields
.field private analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;


# direct methods
.method constructor <init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    return-void
.end method


# virtual methods
.method public commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1, p2}, Lanet/channel/fulltrace/IFullTraceAnalysis;->commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_0
    return-void
.end method

.method public createRequest()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lanet/channel/fulltrace/IFullTraceAnalysis;->createRequest()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneInfo()Lanet/channel/fulltrace/SceneInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lanet/channel/fulltrace/IFullTraceAnalysis;->getSceneInfo()Lanet/channel/fulltrace/SceneInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
