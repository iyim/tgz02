.class public Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;
.super Ljava/lang/Object;
.source "ChannelLogService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelLogService"


# instance fields
.field private mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkServiceAlive()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    if-nez v0, :cond_0

    const-string v0, "ChannelLogService"

    const-string v1, "checkServiceAlive, sLoggerService is null"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 51
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dumpLogcat(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->dumpLogcat(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flushToDisk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->triggerPersist()V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 68
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBinder(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    return-void
.end method

.method public uploadDaysLog(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->uploadDaysLog(I)V

    return-void
.end method

.method public uploadTodayLog()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->uploadTodayLog()V

    return-void
.end method

.method public uploadYesterdayLog()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->uploadYesterdayLog()V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->checkServiceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mapToString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 85
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;->mLoggerInterface:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
