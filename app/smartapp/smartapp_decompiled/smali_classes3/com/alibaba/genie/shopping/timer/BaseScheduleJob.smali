.class public abstract Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;
.super Ljava/lang/Object;
.source "BaseScheduleJob.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/timer/ScheduleJob;


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract doWork()V
.end method

.method protected abstract getDelay()J
.end method

.method public final getId()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected getLastRunKey()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 11

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.qqdownloader.action.SCHEDULE_JOB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.android.qqdownloader.key.SCHEDULE_JOB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;->getId()I

    move-result v2

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;->getPeriod()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;->getDelay()J

    move-result-wide v1

    .line 46
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AlarmManager;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v1, v5

    int-to-long v8, v0

    const/4 v5, 0x3

    move-wide v6, v1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public work()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;->doWork()V

    return-void
.end method
