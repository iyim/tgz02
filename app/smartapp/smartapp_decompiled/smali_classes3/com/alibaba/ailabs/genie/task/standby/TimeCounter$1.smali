.class Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;
.super Landroid/os/Handler;
.source "TimeCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;Landroid/os/Looper;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->access$006(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)J

    .line 20
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->access$100(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->access$100(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V

    :goto_0
    return-void
.end method
