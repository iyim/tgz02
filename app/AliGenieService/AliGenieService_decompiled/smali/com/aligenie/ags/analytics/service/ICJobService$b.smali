.class public Lcom/aligenie/ags/analytics/service/ICJobService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/service/ICJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Landroid/app/job/JobParameters;

.field public final synthetic c:Lcom/aligenie/ags/analytics/service/ICJobService;


# direct methods
.method public synthetic constructor <init>(Lcom/aligenie/ags/analytics/service/ICJobService;Landroid/app/job/JobParameters;Lcom/aligenie/ags/analytics/service/ICJobService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aligenie/ags/analytics/service/ICJobService$b;->c:Lcom/aligenie/ags/analytics/service/ICJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aligenie/ags/analytics/service/ICJobService$b;->b:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ICJobService"

    const-string v1, "IdleRunnable"

    invoke-static {v0, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lc/b/a/b/o/j;

    const-string v1, "com.updateJob"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lc/b/a/b/o/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aligenie/ags/analytics/service/ICJobService$b;->c:Lcom/aligenie/ags/analytics/service/ICJobService;

    iget-object v1, p0, Lcom/aligenie/ags/analytics/service/ICJobService$b;->b:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
