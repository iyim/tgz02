.class public Lmtopsdk/framework/filter/after/ExecuteCallbackAfterFilter;
.super Ljava/lang/Object;
.source "ExecuteCallbackAfterFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IAfterFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExecuteCallbackAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 6

    .line 31
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    .line 32
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    .line 35
    new-instance v3, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v3, v1}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 36
    iput-object v2, v3, Lmtopsdk/mtop/common/MtopFinishEvent;->seqNo:Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-s-traceid"

    invoke-static {v4, v5}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v4

    iput v4, v0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    .line 40
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->mappingCode:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onEndAndCommit()V

    .line 43
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    .line 45
    :try_start_0
    instance-of v1, v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call MtopFinishListener error,apiKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mtopsdk.ExecuteCallbackAfterFilter"

    invoke-static {v1, v2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string p1, "CONTINUE"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.ExecuteCallbackAfterFilter"

    return-object v0
.end method
