.class Lcom/alibaba/ailabs/comm/task/TaskSvr$4;
.super Ljava/lang/Object;
.source "TaskSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/TaskSvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;)V
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orangeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUICK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "r82pdcBpnxVB"

    .line 239
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$300(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object p1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->updateData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "yAdZvp6H5BFG"

    .line 242
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p1}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$4;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
