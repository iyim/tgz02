.class public Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "ResponseCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AGUIResponseCallback"


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo p1, "s"

    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "c"

    .line 23
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "d"

    .line 24
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEventToServer result sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AGUIResponseCallback"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;

    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v1, p1, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;->onResponseCallback(IILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
