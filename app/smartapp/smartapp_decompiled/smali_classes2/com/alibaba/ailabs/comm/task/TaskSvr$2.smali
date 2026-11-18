.class Lcom/alibaba/ailabs/comm/task/TaskSvr$2;
.super Landroid/content/BroadcastReceiver;
.source "TaskSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/task/TaskSvr;->registerScreenStatusReceiver()V
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

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 158
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    const-string v4, "TaskSvr"

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 159
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.DREAMING_STARTED"

    .line 169
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.DREAMING_STOPPED"

    .line 170
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen saver =  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x3f2

    invoke-static {p2, v0, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 160
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen status= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x3f1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 165
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, v4, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$2;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$200(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    return-void
.end method
