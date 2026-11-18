.class Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService$5;->e(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/logger/service/LogService$5;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->this$1:Lcom/alibaba/ailabs/genie/logger/service/LogService$5;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 257
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->val$tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
