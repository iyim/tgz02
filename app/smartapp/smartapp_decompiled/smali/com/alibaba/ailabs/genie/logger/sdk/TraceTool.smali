.class public final Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;
.super Ljava/lang/Object;
.source "TraceTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceTool"


# instance fields
.field private mTraceInfo:Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;->mTraceInfo:Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;

    return-void
.end method


# virtual methods
.method public getTraceInfoStr()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;->mTraceInfo:Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized recordNode(Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;)V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;->mTraceInfo:Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/logger/bean/TraceInfo;->recordNode(Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
