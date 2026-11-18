.class public Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "NativeClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/mmi/IClient;


# instance fields
.field private mClientId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p3, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 19
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->mClientId:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->linkToDeath()V

    return-void
.end method

.method private destroy()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->unlinkToDeath()V

    return-void
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public onClient(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 1

    .line 26
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "t"

    .line 28
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toMmiEventResponse(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDied()V
    .locals 4

    .line 60
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 62
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeClient;->mClientId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->notifyClientDied(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
