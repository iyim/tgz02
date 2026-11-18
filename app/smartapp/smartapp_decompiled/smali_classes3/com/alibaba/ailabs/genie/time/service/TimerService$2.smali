.class Lcom/alibaba/ailabs/genie/time/service/TimerService$2;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/service/TimerService;->uploadTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

.field final synthetic val$usedTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;->val$usedTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    const-string v0, "TimerService2"

    const-string v1, "uploadTime onSuccess"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;->val$usedTime:J

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$802(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)J

    return-void
.end method
