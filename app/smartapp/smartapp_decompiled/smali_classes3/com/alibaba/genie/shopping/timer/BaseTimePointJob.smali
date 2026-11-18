.class public abstract Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;
.super Ljava/lang/Object;
.source "BaseTimePointJob.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/timer/TimePointJob;


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract doWork()V
.end method

.method public final getId()I
    .locals 1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public getNextTimes(J)J
    .locals 8

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->getTime()[I

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const/4 v1, 0x0

    .line 70
    aget v2, v0, v1

    .line 72
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    aget v6, v0, v4

    if-gtz v6, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->getTimePointInInteger(J)I

    move-result v7

    if-ge v7, v6, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 87
    :goto_2
    invoke-static {v2}, Lcom/alibaba/genie/shopping/timer/UpdateTimeStrategyHelper;->getTimeInMillions(I)Ljava/util/Calendar;

    move-result-object p1

    if-eqz v1, :cond_4

    const/4 p2, 0x6

    .line 91
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 94
    :cond_4
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method public getRequestCode()I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare4Next()V
    .locals 6

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->getNextTimes(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.android.qqdownloader.action.SCHEDULE_JOB"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.android.qqdownloader.key.SCHEDULE_JOB"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->getRequestCode()I

    move-result v4

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const/4 v4, 0x0

    .line 107
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->prepare4Next()V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.qqdownloader.action.SCHEDULE_JOB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.android.qqdownloader.key.SCHEDULE_JOB"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->getRequestCode()I

    move-result v2

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 55
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final work()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->doWork()V

    const-wide/16 v0, 0x64

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;->prepare4Next()V

    return-void
.end method
