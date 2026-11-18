.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->bindIpcService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 200
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected: success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$702(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    .line 203
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$700(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->messageListener:Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;->registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
