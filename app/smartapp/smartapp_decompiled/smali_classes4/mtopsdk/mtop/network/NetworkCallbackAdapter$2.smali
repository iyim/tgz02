.class Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onFinish(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

.field final synthetic val$response:Lmtopsdk/network/domain/Response;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/network/NetworkCallbackAdapter;Lmtopsdk/network/domain/Response;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iput-object p2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "mtopsdk.NetworkCallbackAdapter"

    .line 84
    :try_start_0
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->startCallbackTime:J

    .line 85
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iget-object v2, v2, Lmtopsdk/network/domain/Response;->stat:Lmtopsdk/network/domain/NetworkStats;

    iput-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    .line 86
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iput-object v2, v1, Lmtopsdk/framework/domain/MtopContext;->networkResponse:Lmtopsdk/network/domain/Response;

    .line 87
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v3, v3, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v3, v3, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iget v2, v2, Lmtopsdk/network/domain/Response;->code:I

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 89
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iget-object v2, v2, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 90
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 91
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iget-object v2, v2, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 93
    :try_start_1
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->val$response:Lmtopsdk/network/domain/Response;

    iget-object v2, v2, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;

    invoke-virtual {v2}, Lmtopsdk/network/domain/ResponseBody;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 95
    :try_start_2
    iget-object v3, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v3, v3, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v3, v3, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v5, "call getBytes of response.body() error."

    invoke-static {v0, v3, v5, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_0
    :goto_0
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iput-object v1, v2, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 99
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    invoke-interface {v1, v4, v2}, Lmtopsdk/framework/manager/FilterManager;->callback(Ljava/lang/String;Lmtopsdk/framework/domain/MtopContext;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 101
    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v2, v2, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v2, v2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v3, "onFinish failed."

    invoke-static {v0, v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
