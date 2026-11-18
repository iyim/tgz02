.class public Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "UltrasonicClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final TAG:Ljava/lang/String; = "UltrasonicClient"


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mStarted:Z

    .line 29
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->onDistanceChanged(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getClientKey()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private onDistanceChanged(I)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;->onDistanceChanged(I)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setListener(Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private start()V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->start(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 35
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 46
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 54
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->start()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->stop()V

    :goto_0
    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized start(Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 62
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mStarted:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->setListener(Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicListener;)V

    const-string p1, "UltrasonicClient"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clientKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mStarted:Z

    const-string v0, "UltrasonicClient"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->stop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
