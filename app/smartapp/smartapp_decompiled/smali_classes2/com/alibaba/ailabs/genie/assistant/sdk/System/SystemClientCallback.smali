.class Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "SystemClientCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgmcPlayerCallback"


# instance fields
.field private mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 21
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;->mListener:Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;->onGetSystemContext()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "context"

    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
