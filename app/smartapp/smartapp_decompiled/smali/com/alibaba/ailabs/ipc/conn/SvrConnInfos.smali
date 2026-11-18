.class public Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;
.super Ljava/lang/Object;
.source "SvrConnInfos.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mConnInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

.field private retryCount:I

.field private serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

    .line 32
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->serverName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->remove(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    .line 82
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    invoke-direct {v0, p2, p1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;-><init>(ZLcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnsInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->retryCount:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;
    .locals 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 63
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;

    .line 64
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->getListener()Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    move-result-object v2

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mConnInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->mRemoteMgr:Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->serverName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;->getRemoteServer(Ljava/lang/String;)Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->retryCount:I

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfos;->serverName:Ljava/lang/String;

    return-void
.end method
