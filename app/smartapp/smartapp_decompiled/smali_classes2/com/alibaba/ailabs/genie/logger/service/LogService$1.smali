.class Lcom/alibaba/ailabs/genie/logger/service/LogService$1;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$1;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->getInstance()Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->getUpaasState()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$1;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$100(Lcom/alibaba/ailabs/genie/logger/service/LogService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$1;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$200(Lcom/alibaba/ailabs/genie/logger/service/LogService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
