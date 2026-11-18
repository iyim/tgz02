.class public Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "SystemContextService.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/client/ISystemContextCallBack;
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;


# static fields
.field private static final METHOD_GET_SYSTEM_CONTEXT:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.ailabas.alibaba.genie.system.context"

.field private static final SYSTEM_METHOD_REGISTER_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SystemContextService"


# instance fields
.field private isRegister:Z

.field private mSystemClient:Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->isRegister:Z

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1, p0}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->mSystemClient:Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;

    .line 37
    iget-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->isRegister:Z

    if-nez p1, :cond_3

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setSystemContextCallback(Lcom/alibaba/ailabs/geniesdk/client/ISystemContextCallBack;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SystemContextService"

    const-string p2, "System client binder is null or dead"

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "e"

    const-string p2, ""

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 0

    .line 49
    instance-of p1, p1, Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->mSystemClient:Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;

    :cond_0
    return-void
.end method

.method public onGetSystemContext()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/SystemContextService;->mSystemClient:Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;->onGetSystemContext(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context"

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
