.class Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;
.super Ljava/lang/Object;
.source "JobWakeUpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "com.alibaba.ailabs.genie.smartapp"

    const-string v1, "JobWakeUpService"

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    const-class v3, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;Ljava/lang/String;)Z

    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GenieManageServerService,is alive? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string v2, "GenieManageServerService is not start,now start"

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    const-class v3, Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->access$000(Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;Ljava/lang/String;)Z

    move-result v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogService,is alive? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    const-string v2, "LogService is not start,now start"

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.alibaba.ailabs.genie.logger.service.LogService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->startJobScheduler()V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_2
    return-void
.end method
