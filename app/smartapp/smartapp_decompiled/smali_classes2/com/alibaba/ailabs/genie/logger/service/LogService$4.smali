.class Lcom/alibaba/ailabs/genie/logger/service/LogService$4;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;Landroid/content/Context;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "LogService"

    .line 197
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upass init sAuthCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->getInstance()Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/logger/sdk/UpaasConfig;->init(Landroid/content/Context;)V

    .line 199
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$400(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
