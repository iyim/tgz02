.class Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;
.super Ljava/lang/Object;
.source "AmdcTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/dispatch/AmdcTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmdcTask"
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lanet/channel/strategy/dispatch/AmdcTaskExecutor;


# direct methods
.method constructor <init>(Lanet/channel/strategy/dispatch/AmdcTaskExecutor;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->this$0:Lanet/channel/strategy/dispatch/AmdcTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lanet/channel/strategy/dispatch/AmdcTaskExecutor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->this$0:Lanet/channel/strategy/dispatch/AmdcTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    :try_start_0
    iget-object v2, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->params:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 62
    const-class v2, Lanet/channel/strategy/dispatch/AmdcTaskExecutor;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v3, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->this$0:Lanet/channel/strategy/dispatch/AmdcTaskExecutor;

    invoke-static {v3}, Lanet/channel/strategy/dispatch/AmdcTaskExecutor;->access$000(Lanet/channel/strategy/dispatch/AmdcTaskExecutor;)Ljava/util/Map;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lanet/channel/strategy/dispatch/AmdcTaskExecutor$AmdcTask;->this$0:Lanet/channel/strategy/dispatch/AmdcTaskExecutor;

    invoke-static {v4, v1}, Lanet/channel/strategy/dispatch/AmdcTaskExecutor;->access$002(Lanet/channel/strategy/dispatch/AmdcTaskExecutor;Ljava/util/Map;)Ljava/util/Map;

    .line 65
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 68
    :cond_0
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 72
    :cond_1
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    const-string v4, "Env"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    const-string v2, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v3, "task\'s env changed"

    .line 73
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_2
    invoke-static {v2}, Lanet/channel/strategy/dispatch/DispatchParamBuilder;->buildParamMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lanet/channel/strategy/dispatch/DispatchCore;->sendRequest(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "awcn.AmdcThreadPoolExecutor"

    const-string v4, "exec amdc task failed."

    invoke-static {v3, v4, v1, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
