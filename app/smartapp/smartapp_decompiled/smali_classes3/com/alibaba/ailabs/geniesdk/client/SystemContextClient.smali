.class public Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "SystemContextClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onGetSystemContext(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/SystemContextClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
