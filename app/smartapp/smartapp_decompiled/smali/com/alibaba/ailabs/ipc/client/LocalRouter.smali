.class public Lcom/alibaba/ailabs/ipc/client/LocalRouter;
.super Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;
.source "LocalRouter.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/event/IEventBus;
.implements Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final BINDER_DIED_REMOTE_SERVER:I = 0x1

.field private static final CONTENT_PROVIDER_TIMEOUT:J = 0x7d0L

.field private static final MSG_GET_CONTENT_PROVIDER:I = 0x1

.field private static final MSG_RETRY_GET_CONTENT_PROVIDER:I = 0x3

.field private static final MSG_RETRY_REGISTER:I = 0x4

.field private static final MSG_RETRY_REGISTER_SERVER:I = 0x2

.field private static final MSG_UPDATA_MULTI_ROUTER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LocalRouter"

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEventBus:Lcom/alibaba/ailabs/ipc/event/EventBus;

.field private mHandler:Landroid/os/Handler;

.field private mIsResidencyServer:Z

.field private final mLocalServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;

.field private final mRemoteServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mSvrConnMgr:Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;-><init>()V

    .line 58
    new-instance v0, Lcom/alibaba/ailabs/ipc/event/EventBus;

    invoke-direct {v0}, Lcom/alibaba/ailabs/ipc/event/EventBus;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mEventBus:Lcom/alibaba/ailabs/ipc/event/EventBus;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mIsResidencyServer:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mLocalServers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    .line 105
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mUri:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mContext:Landroid/content/Context;

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/ipc/client/LocalRouter;)Lcom/alibaba/ailabs/ipc/IMultiRouter;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    .line 345
    sget-object v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 346
    const-class v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    monitor-enter v0

    .line 347
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 348
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ipc_core"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 350
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->sHandler:Landroid/os/Handler;

    .line 354
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 356
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;
    .locals 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 248
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouterDirect()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v0

    .line 252
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 253
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    invoke-direct {p0, v0, v3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->setMultiRouter(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->notifyMultiRouterResult(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiRouter fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalRouter"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private getMultiRouterDirect()Lcom/alibaba/ailabs/ipc/IMultiRouter;
    .locals 5

    const-string v0, "LocalRouter"

    const/4 v1, 0x0

    .line 275
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start to getMultiRouterDirect  1 uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getBinderFromProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end to getMultiRouterDirect  2 uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 279
    invoke-static {v2}, Lcom/alibaba/ailabs/ipc/IMultiRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getRetryTimeout(Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)J
    .locals 2

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getRetryCount()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getNextRetryCount(I)I

    move-result v0

    .line 525
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setRetryCount(I)V

    .line 527
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getRetryTimeout(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyMultiRouter(Lcom/alibaba/ailabs/ipc/IMultiRouter;Landroid/os/Bundle;)V
    .locals 2

    .line 337
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->registerLocalRouter(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private notifyMultiRouterResult(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private registerRemoteServer(Lcom/alibaba/ailabs/ipc/IMultiRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V
    .locals 5

    const-string v0, "LocalRouter"

    if-eqz p3, :cond_3

    .line 486
    invoke-virtual {p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 496
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "type"

    .line 497
    invoke-virtual {p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "uri"

    const/4 v4, 0x0

    .line 498
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, p2, v3, v2}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 504
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p1, "register multi router fail "

    .line 505
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "multi router null "

    .line 508
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_2

    .line 513
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 515
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 517
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getRetryTimeout(Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)J

    move-result-wide v0

    .line 516
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 487
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multi router= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    .line 488
    invoke-virtual {p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "null"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private retryRemoteService()V
    .locals 5

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMultiRouter(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;

    invoke-interface {v2}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 304
    :try_start_1
    invoke-interface {p1}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 307
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mMultiRouter:Lcom/alibaba/ailabs/ipc/IMultiRouter;

    :cond_3
    if-eqz p1, :cond_5

    .line 313
    invoke-interface {p1}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 327
    :cond_4
    iput v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRetryCount:I

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->notifyMultiRouter(Lcom/alibaba/ailabs/ipc/IMultiRouter;Landroid/os/Bundle;)V

    goto :goto_4

    .line 314
    :cond_5
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multi router  = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-boolean p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mIsResidencyServer:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 319
    iget p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRetryCount:I

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getNextRetryCount(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRetryCount:I

    .line 320
    iget p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRetryCount:I

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getRetryTimeout(I)J

    move-result-wide v1

    .line 322
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "try to reconnect multi router, retryTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private setServerBinder(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;Landroid/os/IBinder;)V
    .locals 3

    .line 597
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne p3, v0, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->unlinkToDeath(Landroid/os/IBinder;)V

    .line 607
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setUserData(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 609
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 612
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;-><init>(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;ILjava/lang/Object;)V

    .line 613
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->linkToDeath(Landroid/os/IBinder;)V

    .line 615
    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setUserData(Ljava/lang/Object;)V

    .line 616
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .line 618
    :cond_3
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setBinder(Landroid/os/IBinder;)V

    .line 622
    :goto_1
    iget-object p3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$6;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterRemoteServer(Lcom/alibaba/ailabs/ipc/IMultiRouter;Ljava/lang/String;)V
    .locals 0

    .line 533
    :try_start_0
    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->unregisterRemoteServer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 535
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "LocalRouter"

    const-string v1, "multi router is Died"

    .line 361
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 362
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->notifyMultiRouterResult(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getEventBus()Lcom/alibaba/ailabs/ipc/event/EventBus;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mEventBus:Lcom/alibaba/ailabs/ipc/event/EventBus;

    return-object v0
.end method

.method public getRemoteServer(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 396
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 398
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServer(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 412
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mLocalServers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    const-string v2, "LocalRouter"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 419
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    .line 436
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getServer()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no support local server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 422
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v4, v5, :cond_4

    if-eqz v3, :cond_3

    .line 425
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_4

    .line 426
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getBinderFromProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get local server binder from content provider serverName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binder = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1, v1, v3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->setServerBinder(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;Landroid/os/IBinder;)V

    :cond_4
    return-object v3

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    if-eqz v0, :cond_6

    .line 446
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 447
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v1

    .line 454
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get multi router fail,  server name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 461
    :cond_7
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->getServer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 463
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_8

    .line 466
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 467
    iget-object v4, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_8
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->setServerBinder(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_9
    move-object v1, v3

    .line 475
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get remote server name= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", binder = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method public getSvrConnMgr()Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mSvrConnMgr:Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    if-nez v0, :cond_1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mSvrConnMgr:Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;-><init>(Landroid/os/Handler;Lcom/alibaba/ailabs/ipc/remote/IRemoteMgr;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mSvrConnMgr:Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    .line 120
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mSvrConnMgr:Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    if-eqz v0, :cond_5

    .line 91
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v2

    invoke-direct {p0, v2, p1, v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerRemoteServer(Lcom/alibaba/ailabs/ipc/IMultiRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    goto :goto_2

    .line 93
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->retryRemoteService()V

    goto :goto_2

    .line 95
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/ailabs/ipc/IMultiRouter;

    .line 97
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 98
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->setMultiRouter(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V

    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    :cond_5
    :goto_2
    return v1
.end method

.method public onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConnMultiRouter(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/IMultiRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnMultiRouter  multiRouter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocalRouter"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->notifyMultiRouterResult(Lcom/alibaba/ailabs/ipc/IMultiRouter;Z)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDied(ILjava/lang/Object;)V
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied-> type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalRouter"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 372
    :cond_1
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .line 375
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$1;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Lcom/alibaba/ailabs/ipc/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnregisterRemoteServer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/event/Event;->setPackageName(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/event/Event;->setPid(I)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Lcom/alibaba/ailabs/ipc/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v0

    .line 228
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/ipc/IMultiRouter;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 208
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "null"

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalRouter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerServer(Ljava/lang/Class;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;",
            ")V"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    return-void
.end method

.method public registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V
    .locals 4

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setLocalProcess(Z)V

    .line 550
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalServer()Z

    move-result v0

    const-string v1, "LocalRouter"

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mLocalServers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register local server = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isRemoteServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register remote server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v2

    .line 559
    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerRemoteServer(Lcom/alibaba/ailabs/ipc/IMultiRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    move-object p1, v0

    goto :goto_0

    .line 561
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " fail param register server = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_2

    .line 565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "remove has old server = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 639
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerServerConnection, fail serverName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",serverConnection = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setKeepConnection(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mIsResidencyServer:Z

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterServer(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 591
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterServer(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterServer(Ljava/lang/String;)V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mLocalServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    const-string v1, "LocalRouter"

    if-eqz v0, :cond_0

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove local server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mRemoteServers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getMultiRouter()Lcom/alibaba/ailabs/ipc/IMultiRouter;

    move-result-object v2

    .line 583
    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterRemoteServer(Lcom/alibaba/ailabs/ipc/IMultiRouter;Ljava/lang/String;)V

    .line 585
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove remote server = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 654
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterServerConnection, fail serverName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",serverConnection = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/ipc/client/LocalRouter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter$3;-><init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
