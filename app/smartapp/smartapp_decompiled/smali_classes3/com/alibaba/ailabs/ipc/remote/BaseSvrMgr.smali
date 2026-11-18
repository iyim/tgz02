.class public abstract Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "BaseSvrMgr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/ipc/remote/BaseSvr;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private onNotifyClientDied(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;Z)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->onClientDied(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;Z)V

    .line 118
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->onClientDied(Z)V

    return-void
.end method


# virtual methods
.method public addClient(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "CommuSvr"

    const-string v0, "addClient client is null"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClient client die = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommuSvr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;

    :cond_2
    if-ne v0, p1, :cond_3

    const-string v0, "CommuSvr"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addClient same object, no operation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit v1

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 150
    iget-object v3, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v2, "CommuSvr"

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addClient, remove ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->unlinkToDeath()V

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->getBinderDeathListener()Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;

    move-result-object v0

    if-nez v0, :cond_5

    .line 157
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setBinderDeathListener(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    goto :goto_0

    :cond_5
    const-string v0, "CommuSvr"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addClient no death listener  ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->linkToDeath()V

    .line 162
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClient(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;
    .locals 5

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "CommuSvr"

    const-string v0, "clientId is null"

    .line 225
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 234
    iget-object v3, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    .line 235
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    monitor-exit v0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 239
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no find clientId =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommuSvr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception p1

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getClientList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/ipc/remote/BaseSvr;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    return-object v0
.end method

.method public getClientLock()Ljava/lang/Object;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onClientCreate(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;
.end method

.method public abstract onClientDied(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;Z)V
.end method

.method protected final onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "__id__"

    .line 53
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CommuSvr"

    if-eqz v2, :cond_0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error clientId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/high16 v2, 0x7fff0000

    const/4 v4, 0x0

    if-ne p1, v2, :cond_4

    const-string p1, "t"

    .line 61
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "b"

    .line 62
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 64
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->removeClient(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    move-result-object v2

    const-string v4, "has exit and update binder,clientId = "

    if-eqz v2, :cond_2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->onClientCreate(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    move-result-object v2

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setClientId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setType(I)V

    .line 80
    invoke-virtual {v2, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setBinder(Landroid/os/IBinder;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->addClient(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;)V

    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommu binder = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",clientId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    const v2, 0x7fff0001

    if-ne p1, v2, :cond_6

    .line 85
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->removeClient(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 87
    invoke-direct {p0, p1, v4}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->onNotifyClientDied(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;Z)V

    goto :goto_2

    .line 89
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCommu remove client, no find clientId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->getClient(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 94
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 96
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCommu no find clientId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public final onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 1

    .line 106
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    .line 108
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->removeClient(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;)V

    .line 110
    check-cast p1, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->onNotifyClientDied(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeClient(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/BaseSvr;
    .locals 5

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "CommuSvr"

    const-string v0, "clientId is null"

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 204
    iget-object v3, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    .line 206
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->unlinkToDeath()V

    const-string p1, "CommuSvr"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find and remove client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 214
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeClient(Lcom/alibaba/ailabs/ipc/remote/BaseSvr;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "CommuSvr"

    const-string v0, "client is null"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 179
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const-string v2, "CommuSvr"

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find and remove client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvrMgr;->mClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->unlinkToDeath()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
