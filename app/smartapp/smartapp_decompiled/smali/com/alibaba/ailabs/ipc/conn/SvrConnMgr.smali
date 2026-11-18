.class public Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;
.super Ljava/lang/Object;
.source "SvrConnMgr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_RETRY_GET_SERVER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SvrMgr"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

.field private final mServerConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getRetryTimeout(Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;Z)J
    .locals 1

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->getRetryCount()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getNextRetryCount(I)I

    move-result v0

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->setRetryCount(I)V

    .line 148
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getRetryTimeout(I)J

    move-result-wide p1

    return-wide p1
.end method

.method private sendRetryMsg(Ljava/lang/String;J)V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 137
    invoke-static {v0, v1, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
    .locals 7

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SvrMgr"

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

    invoke-direct {v0, v2, p1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;-><init>(Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->add(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    move-result-object p2

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 166
    invoke-virtual {v2, p3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    invoke-direct {p0, v0, p3}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getRetryTimeout(Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;Z)J

    move-result-wide v3

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry delay  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",serverName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "retryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->getRetryCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v2, p3, p3, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 174
    invoke-virtual {v2, p3, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add listener serverName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",connInfo = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    .line 179
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", listener ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isAwaysAlive = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, p1, p2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

    .line 44
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 47
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;

    if-nez v2, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;->getRemoteServer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v4, "SvrMgr"

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->setRetryCount(I)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "server name  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",binder = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getRetryTimeout(Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;Z)J

    move-result-wide v5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check delay  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",serverName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retry Count = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->getRetryCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v4, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, v5, v6}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->sendRetryMsg(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    return v1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 89
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->getConnsInfos()Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    :goto_1
    const-string v6, "SvrMgr"

    if-ltz v5, :cond_4

    .line 98
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    .line 100
    invoke-virtual {v7}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->getListener()Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    move-result-object v8

    if-nez v8, :cond_2

    .line 102
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status Change remove serverName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", svrConnInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v7}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v6, v7}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    .line 109
    invoke-virtual {v7}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->isAwaysAlive()Z

    move-result v1

    .line 112
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status Change serverName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", listener ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", isConnected = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v8, p1, p2}, Lcom/alibaba/ailabs/ipc/conn/ISvrConn;->onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 120
    iget-object p2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 123
    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getRetryTimeout(Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;Z)J

    move-result-wide v1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retry delay  = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",serverName = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "retryCount = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->getRetryCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {v6, p2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1, v1, v2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->sendRetryMsg(Ljava/lang/String;J)V

    :cond_6
    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)Z
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->remove(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    move-result-object p2

    const-string v1, "SvrMgr"

    if-eqz p2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove listener serverName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connInfo ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->mServerConnections:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove serverName listeners = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
