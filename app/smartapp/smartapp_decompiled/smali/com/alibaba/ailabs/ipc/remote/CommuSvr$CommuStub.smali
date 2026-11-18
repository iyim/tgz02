.class Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;
.super Lcom/alibaba/ailabs/ipc/ICommu$Stub;
.source "CommuSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommuStub"
.end annotation


# instance fields
.field private final svr:Lcom/alibaba/ailabs/ipc/remote/CommuSvr;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/ipc/remote/CommuSvr;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;->svr:Lcom/alibaba/ailabs/ipc/remote/CommuSvr;

    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;->svr:Lcom/alibaba/ailabs/ipc/remote/CommuSvr;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->getVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;->svr:Lcom/alibaba/ailabs/ipc/remote/CommuSvr;

    :try_start_0
    const-string v1, "CommuSvr"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCustomCommu: call method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 64
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 70
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    return-object p1
.end method
