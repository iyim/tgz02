.class public Lcom/alibaba/ailabs/agui/mmi/MmiClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MmiClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
.implements Lcom/alibaba/ailabs/agui/mmi/IMmiClient;


# static fields
.field public static final TAG:Ljava/lang/String; = "MmiClient"


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mClientId:Ljava/lang/String;

.field private mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

.field private mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

.field private mHasRegister:Z

.field private mHasRegisterServerChanged:Z

.field private mIsForceUpdated:Z

.field private mSyn:Ljava/lang/Object;

.field private mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegisterServerChanged:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    .line 157
    new-instance v1, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;-><init>(Lcom/alibaba/ailabs/agui/mmi/MmiClient;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCheckRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    .line 45
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->registerServerChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 32
    new-instance p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 33
    new-instance p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegisterServerChanged:Z

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    .line 157
    new-instance p1, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;-><init>(Lcom/alibaba/ailabs/agui/mmi/MmiClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCheckRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object p2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/agui/mmi/MmiClient;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->check()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private check()V
    .locals 9

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->isBinderAlive()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 65
    iput-boolean v3, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    const-string v0, "MmiClient"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get binder fail, clientId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    monitor-exit v1

    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    iget-object v4, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getCopy(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V

    .line 73
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted()Z

    move-result v2

    .line 74
    iget-object v4, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted()Z

    move-result v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 75
    :goto_0
    iget-boolean v6, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    if-nez v6, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v4, :cond_4

    .line 80
    iput-boolean v5, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    .line 81
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->toEventJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_3
    move-object v6, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isSupportIncrement()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    iget-object v4, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->toEventJson(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_3

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->toEventJson()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    .line 92
    :goto_4
    iput-boolean v5, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    .line 95
    iget-object v7, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 96
    iget-object v8, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    iput-object v8, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mTmpInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    .line 97
    iput-object v7, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCurInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    if-eqz v2, :cond_8

    .line 100
    iget-boolean v7, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    if-eqz v7, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    .line 103
    :cond_7
    iput-boolean v3, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    :cond_8
    :goto_5
    if-eqz v4, :cond_a

    .line 108
    iget-boolean v7, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    if-eqz v7, :cond_9

    .line 109
    iput-boolean v5, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 114
    :cond_a
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_c

    .line 117
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->unregisterClient(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    const/4 v1, 0x1

    .line 120
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregister ret = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",clientId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "MmiClient"

    invoke-static {v7, v4}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    const/4 v1, 0x1

    :goto_8
    if-eqz v2, :cond_e

    if-eqz v1, :cond_d

    .line 124
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->registerClient(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v1, 0x0

    .line 127
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",clientId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MmiClient"

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz v1, :cond_13

    if-eqz v6, :cond_13

    .line 131
    new-instance v2, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    .line 132
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setData(Ljava/lang/String;)V

    const v4, 0xc3b4

    .line 133
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setCode(I)V

    .line 135
    iget-object v4, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6, v6, v4, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->sendCommand(IILjava/lang/String;Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 138
    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    const/4 v1, 0x0

    .line 142
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute ret= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",response = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isHandled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_12

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",clientId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",data = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MmiClient"

    .line 142
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_13
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    if-nez v1, :cond_14

    .line 151
    :try_start_1
    iput-boolean v3, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    .line 152
    iput-boolean v5, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    .line 154
    :cond_14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 114
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method private registerServerChanged(Z)V
    .locals 3

    .line 184
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegisterServerChanged:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 190
    invoke-static {}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    .line 194
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegisterServerChanged:Z

    return-void
.end method


# virtual methods
.method public enableGesture(Z)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getGestureInfo()Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled()Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 228
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->setEnabled(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 231
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableVoice(Z)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getVoiceInfo()Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 242
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->setEnabled(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 246
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyCheck()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->getCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MmiClient"

    if-nez v0, :cond_0

    const-string p1, "callback is empty"

    .line 316
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 321
    invoke-static {p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toEvent(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEvent;

    move-result-object p1

    .line 322
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEventResponse;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 326
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 176
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mHasRegister:Z

    if-eqz p2, :cond_0

    .line 177
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mIsForceUpdated:Z

    .line 178
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    return-void

    :catchall_0
    move-exception p2

    .line 178
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public setBackgroundService(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getVoiceInfo()Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 257
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->setBackgroundService(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 260
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCallback(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V
    .locals 1

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setForbiddenWakeup(Z)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getVoiceInfo()Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 287
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->setForbiddenWakeup(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 290
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMmiInfo(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    .line 296
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MmiClient"

    const-string v1, "no need process, no started"

    .line 297
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v0

    return-void

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->setStarted(Z)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "MmiClient"

    const-string v1, "no need process, same"

    .line 303
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    monitor-exit v0

    return-void

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getCopy(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 309
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVirtualPackageName(Ljava/lang/String;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getVoiceInfo()Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->getVirtualPackageName()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->setVirtualPackageName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 275
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->setStarted(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 204
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->registerServerChanged(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 204
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mSyn:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->mFutureInfo:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->setStarted(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->notifyCheck()V

    .line 215
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->registerServerChanged(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
