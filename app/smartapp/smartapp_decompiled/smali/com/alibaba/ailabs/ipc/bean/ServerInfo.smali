.class public Lcom/alibaba/ailabs/ipc/bean/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# instance fields
.field private action:Ljava/lang/String;

.field private binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

.field private packageName:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private type:I

.field private uri:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->type:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBinder()Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealBinder()Landroid/os/IBinder;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getBinder()Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->type:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->serverName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->type:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->action:Ljava/lang/String;

    return-void
.end method

.method public setBinder(Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    return-void
.end method

.method public setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getRealBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->unlinkToDeath(Landroid/os/IBinder;)V

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setUserData(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;)V

    if-eqz p2, :cond_1

    .line 71
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;-><init>(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setUserData(Ljava/lang/Object;)V

    .line 74
    new-instance p1, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->setBinder(Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->linkToDeath(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->type:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->userData:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", binder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->binder:Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/bean/ServerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
