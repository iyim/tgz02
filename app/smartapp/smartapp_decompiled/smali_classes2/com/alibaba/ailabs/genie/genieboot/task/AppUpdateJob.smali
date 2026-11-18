.class public Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;
.super Landroid/app/job/JobService;
.source "AppUpdateJob.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field private static COUNT:I = 0x0

.field private static final DELAY_LOOP:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "AppUpdateJob"


# instance fields
.field private JobWakeUpId:I

.field callback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;

.field private mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->JobWakeUpId:I

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;-><init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->callback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->handleAguiCallBack()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->startService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private handleAguiCallBack()V
    .locals 6

    const-string v0, "status"

    const-string v1, "AppUpdateJob"

    const-string v2, "handleAguiCallBack"

    .line 115
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getGatewayStatus()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AgisManager.callback get onGatewayStatus - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getUserStatus()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "AgisManager.callback registerAguiCommonCallback at userBundle - null "

    if-eqz v3, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AgisManager.callback get userStatus - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$3;-><init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    const-string v0, "AgisManager.callback not registerAguiCommonCallback at market - "

    .line 134
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->callback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->registerAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->startJobScheduler()V

    .line 142
    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->startJobScheduler()V

    const-string v0, "AgisManager.callback registerAguiCommonCallback at gataWayBundle - null "

    .line 148
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startJobScheduler()V
    .locals 6

    .line 39
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->COUNT:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 42
    sput v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->COUNT:I

    const-string v0, "jobscheduler"

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 46
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->JobWakeUpId:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-wide/16 v4, 0x1770

    if-lt v2, v3, :cond_1

    .line 48
    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 49
    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v4, v5, v2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method private startService()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AppUpdateJob"

    const-string v2, "start service --> action == com.alibaba.ailabs.genie.market.preinstall"

    .line 105
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.alibaba.ailabs.genie.market.preinstall"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "AppUpdateJob"

    const-string p2, "onStartCommand"

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->startJobScheduler()V

    const/4 p1, 0x2

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "AppUpdateJob"

    const-string v1, "onStartJob"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string p1, "AppUpdateJob"

    const-string v0, "onStopJob"

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
