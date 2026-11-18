.class public Lcom/aligenie/ags/analytics/service/ICJobService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/service/ICJobService$b;
    }
.end annotation


# static fields
.field public static c:Landroid/content/ComponentName;


# instance fields
.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    .line 1
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    const-class v2, Lcom/aligenie/ags/analytics/service/ICJobService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/aligenie/ags/analytics/service/ICJobService;->c:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/aligenie/ags/analytics/service/ICJobService;->c:Landroid/content/ComponentName;

    const/16 v2, 0x7b

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aligenie/ags/analytics/service/ICJobService;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const-string v1, "ICJobService"

    if-lez v0, :cond_0

    new-instance v0, Lcom/aligenie/ags/analytics/service/ICJobService$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/aligenie/ags/analytics/service/ICJobService$b;-><init>(Lcom/aligenie/ags/analytics/service/ICJobService;Landroid/app/job/JobParameters;Lcom/aligenie/ags/analytics/service/ICJobService$a;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aligenie/ags/analytics/service/ICJobService;->b:J

    const-string p1, "onStart IdleJob execute"

    goto :goto_0

    :cond_0
    const-string p1, "onStart IdleJob exit"

    :goto_0
    invoke-static {v1, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string p1, "ICJobService"

    const-string v0, "onStopJob"

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
