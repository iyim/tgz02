.class Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;
.super Ljava/lang/Object;
.source "GenieUiClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/client/GenieUiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$102(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    new-instance p2, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    const/16 v0, 0x2711

    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$200(Lcom/alibaba/ailabs/genie/client/GenieUiClient;ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$300(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Message;

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$100(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$100(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 61
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$400(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$500(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/client/data/RegisterListenerData;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/16 v1, 0x2719

    invoke-static {v0, v1, p2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$200(Lcom/alibaba/ailabs/genie/client/GenieUiClient;ILcom/alibaba/ailabs/genie/client/data/BaseReqData;)V

    goto :goto_2

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$402(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Z)Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$102(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$600(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reconnect : "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$700(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->initial(Landroid/content/Context;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$1;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$402(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Z)Z

    :cond_0
    return-void
.end method
