.class Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;
.super Ljava/lang/Object;
.source "MessageCenterClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->bindService(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;Lcom/alibaba/ailabs/genie/message/client/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

.field final synthetic val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;Lcom/alibaba/ailabs/genie/message/client/CallBack;Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->this$0:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$listener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "MessageCenterClient"

    const-string v0, "messageCenterService: connect success"

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/client/CallBack;->serviceConnected()V

    .line 63
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    move-result-object p2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$listener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;->registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V

    .line 66
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/message/client/CallBack;->registSuccess()V

    const-string p2, "IMessageListener: registerListener success"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 69
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u6ce8\u518c\u6d88\u606f\u76d1\u542c\u5f02\u5e38"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/client/CallBack;->registErro(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMessageListener: registerListener erro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MessageCenterClient"

    const-string v0, "messageCenterService disconnected"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;->val$callBack:Lcom/alibaba/ailabs/genie/message/client/CallBack;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/client/CallBack;->serviceDisconnect()V

    return-void
.end method
