.class Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient$1;
.super Lcom/alibaba/ailabs/ipc/ICommu$Stub;
.source "KeepAliveClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;-><init>()V

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

    const/4 v0, 0x0

    return v0
.end method

.method public onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
