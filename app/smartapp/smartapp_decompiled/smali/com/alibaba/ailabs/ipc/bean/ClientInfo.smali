.class public Lcom/alibaba/ailabs/ipc/bean/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# instance fields
.field private binder:Landroid/os/IBinder;

.field private isDestroy:Z

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->pid:I

    return v0
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

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isDestroy()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy:Z

    return v0
.end method

.method public setBinder(Lcom/alibaba/ailabs/ipc/server/MultiRouter;Landroid/os/IBinder;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->unlinkToDeath(Landroid/os/IBinder;)V

    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setUserData(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setBinder(Landroid/os/IBinder;)V

    if-eqz p2, :cond_1

    .line 56
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;-><init>(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;ILjava/lang/Object;)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->linkToDeath(Landroid/os/IBinder;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setUserData(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->setBinder(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public setDestroy(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->pid:I

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->userData:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDestroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/ipc/bean/ClientInfo;->isDestroy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
