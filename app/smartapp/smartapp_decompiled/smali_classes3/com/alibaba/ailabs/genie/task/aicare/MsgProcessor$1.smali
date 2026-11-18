.class Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;
.super Ljava/lang/Object;
.source "MsgProcessor.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/event/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "payload"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "TaskService-Msg"

    const-string v0, " receive message; event is null"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
