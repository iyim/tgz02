.class public Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleJobReceiver.java"


# static fields
.field public static final ACTION_SCHEDULE_JOB:Ljava/lang/String; = "com.tencent.android.qqdownloader.action.SCHEDULE_JOB"

.field public static final KEY_SCHEDULE_JOB:Ljava/lang/String; = "com.tencent.android.qqdownloader.key.SCHEDULE_JOB"

.field public static mQueue:Lcom/alibaba/genie/shopping/timer/TimerJobQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startAllTimerJob()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 25
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.android.qqdownloader.action.SCHEDULE_JOB"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.tencent.android.qqdownloader.key.SCHEDULE_JOB"

    .line 27
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScheduleJobReceiver"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on receive,action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",this:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",clazz:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mQueue="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->mQueue:Lcom/alibaba/genie/shopping/timer/TimerJobQueue;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object p1, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->mQueue:Lcom/alibaba/genie/shopping/timer/TimerJobQueue;

    if-nez p1, :cond_1

    .line 33
    new-instance p1, Lcom/alibaba/genie/shopping/timer/TimerJobQueue;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/timer/TimerJobQueue;-><init>()V

    sput-object p1, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->mQueue:Lcom/alibaba/genie/shopping/timer/TimerJobQueue;

    .line 35
    :cond_1
    sget-object p1, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->mQueue:Lcom/alibaba/genie/shopping/timer/TimerJobQueue;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/timer/TimerJobQueue;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 42
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->startAllTimerJob()V

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/ScheduleJobReceiver;->startAllTimerJob()V

    goto :goto_0

    :cond_5
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
