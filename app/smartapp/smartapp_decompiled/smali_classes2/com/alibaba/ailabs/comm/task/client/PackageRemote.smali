.class public Lcom/alibaba/ailabs/comm/task/client/PackageRemote;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "PackageRemote.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IPackage;


# static fields
.field public static final onChangePackage:I = 0x3


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public onChangePackage(Lcom/alibaba/ailabs/comm/task/PackageInfo;)V
    .locals 3

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v1, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    const-string v2, "rp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    const-string v1, "vp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageRemote{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
