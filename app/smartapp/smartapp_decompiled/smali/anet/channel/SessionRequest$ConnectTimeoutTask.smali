.class Lanet/channel/SessionRequest$ConnectTimeoutTask;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimeoutTask"
.end annotation


# instance fields
.field seq:Ljava/lang/String;

.field final synthetic this$0:Lanet/channel/SessionRequest;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->seq:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->seq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 102
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-boolean v0, v0, Lanet/channel/SessionRequest;->isConnecting:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->seq:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.SessionRequest"

    const-string v4, "Connecting timeout!!! reset status!"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    const/4 v2, 0x2

    iput v2, v0, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 105
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v4, v4, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v4, v4, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 106
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    iput-boolean v1, v0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 108
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->close()V

    .line 109
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v0, v0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-object v2, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v2, v2, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0, v2}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 111
    :cond_0
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v2, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    iget-object v2, v2, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v0, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 112
    iget-object v0, p0, Lanet/channel/SessionRequest$ConnectTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v0, v1}, Lanet/channel/SessionRequest;->setConnecting(Z)V

    :cond_1
    return-void
.end method
