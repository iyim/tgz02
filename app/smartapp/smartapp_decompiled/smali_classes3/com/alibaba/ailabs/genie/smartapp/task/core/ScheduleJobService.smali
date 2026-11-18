.class public Lcom/alibaba/ailabs/genie/smartapp/task/core/ScheduleJobService;
.super Landroid/app/Service;
.source "ScheduleJobService.java"


# static fields
.field public static final ACTION_SCHEDULE_JOB:Ljava/lang/String; = "com.alibaba.ailabs.genie.task.action.SCHEDULE_JOB"

.field public static final KEY_SCHEDULE_JOB:Ljava/lang/String; = "com.alibaba.ailabs.genie.task.key.SCHEDULE_JOB"

.field public static mQueue:Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.alibaba.ailabs.genie.task.action.SCHEDULE_JOB"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.alibaba.ailabs.genie.task.key.SCHEDULE_JOB"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateAppService"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand,action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",this:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ",clazz:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",mQueue="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/alibaba/ailabs/genie/smartapp/task/core/ScheduleJobService;->mQueue:Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    .line 30
    :cond_0
    sget-object p3, Lcom/alibaba/ailabs/genie/smartapp/task/core/ScheduleJobService;->mQueue:Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;

    if-nez p3, :cond_1

    .line 31
    new-instance p3, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;-><init>()V

    sput-object p3, Lcom/alibaba/ailabs/genie/smartapp/task/core/ScheduleJobService;->mQueue:Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;

    .line 33
    :cond_1
    sget-object p3, Lcom/alibaba/ailabs/genie/smartapp/task/core/ScheduleJobService;->mQueue:Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/smartapp/task/core/TimerJobQueue;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return p2
.end method
