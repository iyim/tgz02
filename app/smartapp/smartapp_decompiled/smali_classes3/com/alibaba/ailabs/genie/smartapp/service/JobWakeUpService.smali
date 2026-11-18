.class public Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;
.super Landroid/app/job/JobService;
.source "JobWakeUpService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private JobWakeUpId:I

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->JobWakeUpId:I

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->times:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;Ljava/lang/String;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->serviceAlive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private serviceAlive(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "activity"

    .line 125
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method


# virtual methods
.method public getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 151
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 160
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->startJobScheduler()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService$1;-><init>(Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/utils/ThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public startJobScheduler()V
    .locals 5

    const-string v0, "jobscheduler"

    .line 42
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 45
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->JobWakeUpId:I

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, 0x7530

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    :goto_0
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/JobWakeUpService;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
