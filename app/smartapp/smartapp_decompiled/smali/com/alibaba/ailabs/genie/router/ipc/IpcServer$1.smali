.class Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;
.super Ljava/lang/Object;
.source "IpcServer.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$iCommu:Lcom/alibaba/ailabs/ipc/ICommu;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;Lcom/alibaba/ailabs/ipc/ICommu;ILandroid/os/Bundle;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->this$0:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$iCommu:Lcom/alibaba/ailabs/ipc/ICommu;

    iput p3, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$method:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ret(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$iCommu:Lcom/alibaba/ailabs/ipc/ICommu;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async call methodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$method:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;->val$data:Landroid/os/Bundle;

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; return data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IpcServer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
