.class final Lmtopsdk/framework/util/FilterUtils$1;
.super Ljava/lang/Object;
.source "FilterUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

.field final synthetic val$mtopEvent:Lmtopsdk/mtop/common/MtopFinishEvent;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lmtopsdk/framework/domain/MtopContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/common/MtopFinishEvent;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iput-object p2, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iput-object p3, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopEvent:Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    :try_start_0
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-s-traceid"

    invoke-static {v1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    iput v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    .line 44
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->mappingCode:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget v1, v1, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    const/16 v1, 0x130

    iput v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    .line 50
    :cond_0
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onEndAndCommit()V

    .line 51
    iget-object v0, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iget-object v1, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopEvent:Lmtopsdk/mtop/common/MtopFinishEvent;

    iget-object v2, p0, Lmtopsdk/framework/util/FilterUtils$1;->val$mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v2, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
