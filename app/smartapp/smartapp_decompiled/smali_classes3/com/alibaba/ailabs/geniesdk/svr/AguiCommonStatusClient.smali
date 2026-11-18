.class public Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "AguiCommonStatusClient.java"


# static fields
.field private static final STATUS_GATEWAY:Ljava/lang/String; = "status_gateway"

.field private static final STATUS_SESSION:Ljava/lang/String; = "status_session"

.field private static final STATUS_USER:Ljava/lang/String; = "status_user"


# instance fields
.field private mClientId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getClientId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyGatewayStatus(Z)V
    .locals 3

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->mClientId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "status_gateway"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x36

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected notifySessionStatus(I)V
    .locals 3

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->mClientId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "status_session"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x36

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected notifyUserStatus(Z)V
    .locals 3

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->mClientId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "status_user"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x36

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected setClientId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->mClientId:Ljava/lang/String;

    return-void
.end method
