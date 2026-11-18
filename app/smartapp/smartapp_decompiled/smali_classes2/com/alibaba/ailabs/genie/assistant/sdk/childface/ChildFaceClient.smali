.class public Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "ChildFaceClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$OnDataListerner;
    }
.end annotation


# static fields
.field private static final METHOD_STATUS:I = 0x0

.field public static final SCENE_MODE_DEFAULT:I = 0x0

.field public static final SCENE_MODE_MONITOR:I = 0x1

.field public static final SCENE_MODE_VOIP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ChildFaceClient"


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private mIsChildFace:Z

.field private final mKey:Ljava/lang/String;

.field private mListerner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$OnDataListerner;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mStarted:Z

.field private mStatusListerner:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mMode:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mSurface:Landroid/view/Surface;

    .line 52
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->onStatus(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$OnDataListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getListener()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$OnDataListerner;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mListerner:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$OnDataListerner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private notifySetChildFace()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mIsChildFace:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->setChildFace(Ljava/lang/String;Z)Z

    return-void
.end method

.method private notifyStart()V
    .locals 9

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mSurface:Landroid/view/Surface;

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v8

    .line 107
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mIsChildFace:Z

    iget v6, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mMode:I

    move-object v5, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->start(Ljava/lang/String;Landroid/os/IBinder;ZLandroid/view/Surface;ILjava/lang/String;)Z

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStart clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",chidFace ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mIsChildFace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",clientKey = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyStop()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->stop(Ljava/lang/String;)Z

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStop clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",chidFace ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mIsChildFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",clientKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceClient"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStatus(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;->onStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStatusListerner:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->getStatusListerner()Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "d"

    .line 157
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChildFaceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 168
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 170
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->start()V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChildFace(Z)V
    .locals 0

    monitor-enter p0

    .line 81
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mIsChildFace:Z

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->notifySetChildFace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public setStatusListerner(Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStatusListerner:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;

    return-void
.end method

.method public declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 0

    monitor-enter p0

    .line 71
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 86
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStarted:Z

    .line 87
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->notifyStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mStarted:Z

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    .line 99
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->notifyStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
