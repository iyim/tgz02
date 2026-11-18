.class Lcom/taobao/tao/log/task/PullTask$1;
.super Landroid/os/Handler;
.source "PullTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/log/task/PullTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/log/task/PullTask;


# direct methods
.method constructor <init>(Lcom/taobao/tao/log/task/PullTask;Landroid/os/Looper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/taobao/tao/log/task/PullTask$1;->this$0:Lcom/taobao/tao/log/task/PullTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_PULL:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6d88\u606f\u62c9\u53d6\uff1a\u4e3b\u52a8\u53d1\u9001\u6d88\u606f\uff0c\u62c9\u53d6\u4efb\u52a1"

    .line 77
    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/tao/log/message/SendMessage;->pull(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
