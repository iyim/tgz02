.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    const-string v1, "play_finish"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 445
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    const-string v0, "finish_exception"

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterrupt(Ljava/lang/String;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    const-string v1, "focus_loss"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReplace(Ljava/lang/String;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    const-string v1, "finish_by_other_clock"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopByUser(Ljava/lang/String;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;->this$1:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    const-string v1, "user_touch"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
