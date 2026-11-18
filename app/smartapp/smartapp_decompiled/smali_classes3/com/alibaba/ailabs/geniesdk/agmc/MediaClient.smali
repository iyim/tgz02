.class public Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "MediaClient.java"


# instance fields
.field private mClientId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public onStatusCallback(ILandroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/agmc/MediaClient;->mClientId:Ljava/lang/String;

    return-void
.end method
