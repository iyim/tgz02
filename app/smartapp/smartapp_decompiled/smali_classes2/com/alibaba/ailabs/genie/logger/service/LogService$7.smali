.class Lcom/alibaba/ailabs/genie/logger/service/LogService$7;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService;->collectLogcat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;->val$moduleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;->val$moduleName:Ljava/lang/String;

    const-string v1, "logcatStart\r\n"

    invoke-static {v0, v1}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;->val$moduleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/RuntimeSystemUtils;->getLogcat(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;->val$moduleName:Ljava/lang/String;

    const-string v1, "logcatEnd\r\n"

    invoke-static {v0, v1}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
