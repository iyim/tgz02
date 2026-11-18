.class public Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;
.super Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;
.source "MessageIpcService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageIpcService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;-><init>()V

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dispatchNotify(ILjava/lang/String;)V
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "payload-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageIpcService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    if-eqz v3, :cond_0

    .line 146
    invoke-interface {v3, p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;->onMessage(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 149
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private getCountUnread(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$3;-><init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public countUnread(Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const-string v1, ""

    .line 42
    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 46
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$1;-><init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public handleCommonMsg(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MessageIpcService"

    const-string v1, "handleCommonMsg"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->dispatchNotify(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public handleMessageNotify(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MessageIpcService"

    const-string v1, "handleMessageNotify"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->dispatchNotify(ILjava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->getCountUnread(Landroid/content/Context;)V

    return-void
.end method

.method public handleNewNotification(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MessageIpcService"

    const-string v1, "handleNewNotification"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->dispatchNotify(ILjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->getCountUnread(Landroid/content/Context;)V

    return-void
.end method

.method public handleStatusNotify(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MessageIpcService"

    const-string v1, "handleStatusNotify"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->dispatchNotify(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public listUnreadMessage(IILcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    const-string p2, ""

    .line 68
    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 71
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService$2;-><init>(Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public notifyOtherApp(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->dispatchNotify(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ipc/MessageIpcService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
