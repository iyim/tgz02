.class public Lanet/channel/fulltrace/AnalysisFactory;
.super Ljava/lang/Object;
.source "AnalysisFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;
    }
.end annotation


# static fields
.field private static volatile analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;-><init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    sput-object v0, Lanet/channel/fulltrace/AnalysisFactory;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lanet/channel/fulltrace/IFullTraceAnalysis;
    .locals 1

    .line 15
    sget-object v0, Lanet/channel/fulltrace/AnalysisFactory;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    return-object v0
.end method

.method public static setInstance(Lanet/channel/fulltrace/IFullTraceAnalysis;)V
    .locals 1

    .line 19
    new-instance v0, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;

    invoke-direct {v0, p0}, Lanet/channel/fulltrace/AnalysisFactory$AnalysisProxy;-><init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    sput-object v0, Lanet/channel/fulltrace/AnalysisFactory;->analysis:Lanet/channel/fulltrace/IFullTraceAnalysis;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
