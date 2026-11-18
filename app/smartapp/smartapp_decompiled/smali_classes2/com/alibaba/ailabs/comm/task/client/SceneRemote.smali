.class public Lcom/alibaba/ailabs/comm/task/client/SceneRemote;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "SceneRemote.java"


# static fields
.field public static final onScene:I = 0x2

.field public static final onTask:I = 0x1


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private flag:I

.field private taskType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->flag:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->flag:I

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->taskType:I

    return v0
.end method

.method public onScene(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 2

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tt"

    .line 72
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "st_ex"

    .line 73
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "f"

    .line 74
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pi"

    .line 75
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p4, v0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->flag:I

    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->taskType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneClient{taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->taskType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
