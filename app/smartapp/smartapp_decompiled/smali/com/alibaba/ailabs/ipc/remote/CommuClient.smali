.class public Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.super Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;
.source "CommuClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->setBinder(Landroid/os/IBinder;)V

    .line 26
    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->setBinderDeathListener(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getCommu()Lcom/alibaba/ailabs/ipc/ICommu;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->setBinder(Landroid/os/IBinder;)V

    .line 52
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public callAsynMethod(ILandroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient$1;-><init>(Lcom/alibaba/ailabs/ipc/remote/CommuClient;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBinderMethod(ILandroid/os/Bundle;)Landroid/os/IBinder;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public callBooleanMethod(ILandroid/os/Bundle;)Z
    .locals 0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getBoolean(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getCommu()Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Lcom/alibaba/ailabs/ipc/ICommu;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 96
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public callObjectMethod(ILandroid/os/Bundle;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getObject(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public callVoidMethod(ILandroid/os/Bundle;)Z
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getVersion()I
    .locals 2

    .line 67
    iget v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->mVersion:I

    const v1, 0x7f8e9daa

    if-ne v0, v1, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getCommu()Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/alibaba/ailabs/ipc/ICommu;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->mVersion:I

    .line 72
    iget v0, p0, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->mVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->getCommu()Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/alibaba/ailabs/ipc/ICommu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
