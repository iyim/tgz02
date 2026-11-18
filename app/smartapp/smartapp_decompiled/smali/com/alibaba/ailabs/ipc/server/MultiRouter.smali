.class public final Lcom/alibaba/ailabs/ipc/server/MultiRouter;
.super Lcom/alibaba/ailabs/ipc/IMultiRouter$Stub;
.source "MultiRouter.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;


# static fields
.field public static final BINDER_DIED_LOCAL_ROUTER:I = 0x0

.field public static final BINDER_DIED_REMOTE_SERVER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiRouter"


# instance fields
.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/ailabs/ipc/bean/ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCursor:Lcom/alibaba/ailabs/ipc/bean/BinderCursor;

.field private mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

.field private mMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

.field private final mServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/bean/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Lcom/alibaba/ailabs/ipc/server/MultiRouters;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/IMultiRouter$Stub;-><init>()V

    .line 45
    new-instance p3, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;-><init>(Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mCursor:Lcom/alibaba/ailabs/ipc/bean/BinderCursor;

    .line 48
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    .line 51
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    .line 61
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

    return-void
.end method

.method private onInterceptor(ILjava/lang/String;)Z
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiProvider:Lcom/alibaba/ailabs/ipc/server/MultiProvider;

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;->onInterceptor(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterRemoteServer refuse, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverName="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", pid = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MultiRouter"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mCursor:Lcom/alibaba/ailabs/ipc/bean/BinderCursor;

    return-object v0
.end method

.method public getServer(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->onInterceptor(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServer interceptor serverName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",pid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiRouter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 235
    :cond_0
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    if-nez v0, :cond_1

    const-string v0, "MultiRouter"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServer no server name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "multi router = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    monitor-exit p0

    return-object v1

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getBinder()Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    monitor-exit p0

    return-object v1

    .line 249
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 254
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getBinderFromProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 255
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 256
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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

.method public onDied(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 330
    :cond_0
    check-cast p2, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    .line 331
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getServerName()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    if-ne v0, p2, :cond_1

    .line 338
    iget-object p2, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MultiRouter"

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "died, remove serverName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 313
    :cond_2
    check-cast p2, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPid()I

    move-result p1

    .line 318
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 320
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setDestroy(Z)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MultiRouter"

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local router died, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3
    monitor-exit p0

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getPid()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mMultiRouters:Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    const-string v4, "MultiRouter"

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send clientInfo= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPid()I

    move-result v4

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ILocalRouter;

    move-result-object v3

    .line 293
    invoke-interface {v3, p1}, Lcom/alibaba/ailabs/ipc/ILocalRouter;->onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 297
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v4, "MultiRouter"

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDestroy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event pid= "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", event packageName = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {v4, v3}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public registerLocalRouter(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 67
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 74
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;-><init>()V

    .line 76
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setPid(I)V

    .line 78
    invoke-virtual {v0, p4}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setDestroy(Z)V

    .line 79
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    .line 81
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    .line 87
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {p3}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ILocalRouter;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/ipc/ILocalRouter;->onConnMultiRouter(Landroid/os/IBinder;)V

    const-string p1, "MultiRouter"

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " register multi->local server success packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", pid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/ipc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "register local router, clientInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 87
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 70
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "register local router, pid = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",packageName ="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",localRouter isAlive = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->onInterceptor(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registerRemoteServer interceptor serverName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",pid = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;-><init>()V

    .line 143
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setServerName(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const-string/jumbo v2, "type"

    .line 148
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "uri"

    .line 151
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v2, "packageName"

    .line 153
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setPackageName(Ljava/lang/String;)V

    const-string v2, "action"

    .line 154
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setAction(Ljava/lang/String;)V

    .line 157
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setType(I)V

    .line 158
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    .line 161
    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 162
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getServerName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {p2, p0, p1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    const-string p1, "MultiRouter"

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "replace has serverInfo = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "registerRemoteServer multi router = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "serverInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 171
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 174
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " fail serverInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public unregisterRemoteServer(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->onInterceptor(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterRemoteServer interceptor serverName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",pid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiRouter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mServers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;

    if-nez v1, :cond_1

    .line 191
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 193
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V

    .line 198
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->mClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;

    .line 200
    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 202
    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    goto :goto_1

    .line 212
    :cond_2
    :try_start_1
    invoke-static {v3}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ILocalRouter;

    move-result-object v3

    .line 213
    invoke-interface {v3, p1}, Lcom/alibaba/ailabs/ipc/ILocalRouter;->onUnregisterRemoteServer(Ljava/lang/String;)V

    const-string v3, "MultiRouter"

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " unregister remoute server packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getPid()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v3, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 219
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :goto_1
    const-string v4, "MultiRouter"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDestroy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",isBinderAlive = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    .line 206
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v4, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
