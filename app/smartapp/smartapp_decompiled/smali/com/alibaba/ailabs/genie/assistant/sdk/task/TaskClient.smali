.class public Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "TaskClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskClient"

.field private static final onChangePackage:I = 0x3

.field private static final onScene:I = 0x2

.field private static final onTask:I = 0x1


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private mFlag:I

.field private final mKey:Ljava/lang/String;

.field private mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;

.field private mSceneListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

.field private mStarted:Z

.field private mTaskListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    .line 39
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    .line 33
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getOnTaskListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getSceneListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getOnPackageListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOnPackageListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;

    return-object v0
.end method

.method public getOnTaskListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mTaskListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    return-object v0
.end method

.method public getSceneListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mSceneListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    return v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 169
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public setPackageListener(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mPackageChangeListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;

    if-eqz p1, :cond_0

    .line 75
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    goto :goto_0

    .line 77
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    :goto_0
    return-void
.end method

.method public setSceneInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mSceneListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    .line 66
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    goto :goto_0

    .line 68
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    :goto_0
    return-void
.end method

.method public setTaskInfo(ILcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 49
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    .line 50
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mTaskListener:Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    .line 52
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    goto :goto_0

    .line 54
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 194
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mStarted:Z

    .line 195
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v7

    .line 197
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    move-result-object v1

    .line 198
    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->start(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v1

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    const-string v0, "TaskClient"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 211
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mStarted:Z

    .line 212
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->stop(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v1

    .line 218
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    const-string v1, "TaskClient"

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop clientId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
