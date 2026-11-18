.class Lcom/alibaba/genie/shopping/timer/SimpleTimer$1;
.super Landroid/os/Handler;
.source "SimpleTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/timer/SimpleTimer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/timer/SimpleTimer;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/timer/SimpleTimer;Landroid/os/Looper;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer$1;->this$0:Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/genie/shopping/timer/ScheduleJob;

    .line 31
    invoke-interface {p1}, Lcom/alibaba/genie/shopping/timer/ScheduleJob;->work()V

    .line 34
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer$1;->this$0:Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->addJob(Lcom/alibaba/genie/shopping/timer/ScheduleJob;)V

    return-void
.end method
