.class public Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;
.super Ljava/lang/Object;
.source "SvrConnInfo.java"


# instance fields
.field private isAwaysAlive:Z

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/ipc/conn/ISvrConn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->setAwaysAlive(Z)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->setListener(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isAwaysAlive()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->isAwaysAlive:Z

    return v0
.end method

.method public setAwaysAlive(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->isAwaysAlive:Z

    return-void
.end method

.method public setListener(Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SvrConnInfo{isAwaysAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->isAwaysAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/conn/SvrConnInfo;->listener:Ljava/lang/ref/WeakReference;

    .line 42
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
