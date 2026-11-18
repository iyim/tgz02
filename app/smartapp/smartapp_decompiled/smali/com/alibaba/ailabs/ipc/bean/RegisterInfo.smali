.class public Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;
.super Ljava/lang/Object;
.source "RegisterInfo.java"


# instance fields
.field private action:Ljava/lang/String;

.field private binder:Landroid/os/IBinder;

.field private isLocal:Z

.field private isLocalProcess:Z

.field private packageName:Ljava/lang/String;

.field private retryCount:I

.field private server:Ljava/lang/Object;

.field private type:I

.field private uri:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    const/4 v1, 0x3

    .line 35
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setType(I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setLocal(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setServer(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setLocal(Z)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setType(I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/os/IBinder;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setType(I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setLocal(Z)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->setBinder(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->retryCount:I

    return v0
.end method

.method public getServer()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->server:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->type:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->uri:Ljava/lang/String;

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

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    return v0
.end method

.method public isLocalProcess()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    return v0
.end method

.method public isLocalServer()Z
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->server:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_3
    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isRemoteServer()Z
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 118
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_1
    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->binder:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public setLocal(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    return-void
.end method

.method public setLocalProcess(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->retryCount:I

    return-void
.end method

.method public setServer(Ljava/lang/Object;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->server:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->type:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->userData:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterInfo{isLocalProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocalProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->isLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->server:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
