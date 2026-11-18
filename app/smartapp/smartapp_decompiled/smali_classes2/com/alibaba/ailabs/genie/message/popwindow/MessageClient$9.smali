.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->bindService()V
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

    .line 440
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MessageClient"

    const-string v0, "onServiceConnected: success"

    .line 443
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    move-result-object p1

    .line 446
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$800(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;->registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MessageClient"

    const-string v0, "onServiceDisconnected"

    .line 454
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$900(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$9;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->bindService()V

    :cond_0
    return-void
.end method
