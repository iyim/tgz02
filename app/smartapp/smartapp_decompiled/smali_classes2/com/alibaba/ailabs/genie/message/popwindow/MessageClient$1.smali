.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;
.super Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;
.source "MessageClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage: type->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$200(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;-><init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
