.class public abstract Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;
.super Ljava/lang/Object;
.source "BaseRemoteChannel.java"

# interfaces
.implements Lcom/taobao/aranger/core/ipc/channel/IChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private commitIPCState(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;Lcom/taobao/aranger/exception/IPCException;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/taobao/aranger/exception/IPCException;->getErrorCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setResult(I)V

    .line 82
    sget-boolean v0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setDegrade(Z)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, p5

    sub-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setCostTime(J)V

    .line 84
    invoke-virtual {p1, p5, p6}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setInvokeTime(J)V

    .line 85
    invoke-virtual {p1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->commit()V

    if-nez p2, :cond_1

    return-void

    .line 87
    :cond_1
    throw p2
.end method


# virtual methods
.method public final connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 57
    new-instance v1, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    const/4 v0, 0x6

    invoke-direct {v1, v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;-><init>(I)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalConnect()V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->commitIPCState(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;Lcom/taobao/aranger/exception/IPCException;JJ)V

    return-void
.end method

.method abstract internalConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method abstract internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public final recycleRemote(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 69
    new-instance v1, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;-><init>(I)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalRecycle(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :goto_1
    const-wide/16 v5, 0x0

    move-object v0, p0

    .line 77
    invoke-direct/range {v0 .. v6}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->commitIPCState(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;Lcom/taobao/aranger/exception/IPCException;JJ)V

    return-void
.end method

.method public final sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;-><init>(I)V

    .line 33
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setMethodName(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 28
    :cond_0
    new-instance v0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-direct {v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;-><init>(I)V

    .line 29
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setMethodName(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;-><init>(I)V

    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setServiceName(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object v4
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getDataSize()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->setDataSize(J)V

    .line 45
    invoke-virtual {v4}, Lcom/taobao/aranger/core/entity/Reply;->getInvokeTime()J

    move-result-wide v0

    .line 46
    invoke-virtual {v4}, Lcom/taobao/aranger/core/entity/Reply;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    new-instance v2, Lcom/taobao/aranger/exception/IPCException;

    invoke-virtual {v4}, Lcom/taobao/aranger/core/entity/Reply;->getErrorCode()I

    move-result p1

    invoke-virtual {v4}, Lcom/taobao/aranger/core/entity/Reply;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, p1, v7}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-wide v7, v0

    move-object p1, v4

    move-object v4, v2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, v2

    :goto_2
    move-wide v7, v0

    move-object v9, v4

    move-object v4, p1

    move-object p1, v9

    :goto_3
    move-object v2, p0

    .line 52
    invoke-direct/range {v2 .. v8}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->commitIPCState(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;Lcom/taobao/aranger/exception/IPCException;JJ)V

    return-object p1
.end method
