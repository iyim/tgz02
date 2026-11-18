.class Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;
.super Ljava/lang/Object;
.source "AppUpdateJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->access$000(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
