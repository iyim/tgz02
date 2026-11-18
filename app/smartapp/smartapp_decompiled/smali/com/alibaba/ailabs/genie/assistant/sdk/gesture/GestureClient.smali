.class public Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "GestureClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final TAG:Ljava/lang/String; = "GestureClient"


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mOnGestureListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mTips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1000

    .line 27
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mType:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mStarted:Z

    .line 37
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->onGesture(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getGestureListener()Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGestureListener()Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mOnGestureListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getTips()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mTips:Ljava/util/Map;

    return-object v0
.end method

.method private getType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mType:I

    return v0
.end method

.method private onGesture(I)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getGestureListener()Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;->onGesture(I)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setGestureListener(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mOnGestureListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mOnGestureListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method private setTips(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mTips:Ljava/util/Map;

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mType:I

    return-void
.end method

.method private start()V
    .locals 6

    .line 132
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v5

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mType:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mTips:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->start(Ljava/lang/String;ILjava/util/Map;Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_1

    .line 85
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 96
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->start()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
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

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized start(ILjava/util/Map;Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GestureClient"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mStarted:Z

    .line 147
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->setTips(Ljava/util/Map;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->setType(I)V

    .line 149
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->setGestureListener(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;)V

    .line 150
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
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

    .line 154
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mStarted:Z

    const-string v0, "GestureClient"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->stop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
