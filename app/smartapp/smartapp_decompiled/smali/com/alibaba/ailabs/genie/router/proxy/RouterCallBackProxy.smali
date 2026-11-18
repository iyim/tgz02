.class public Lcom/alibaba/ailabs/genie/router/proxy/RouterCallBackProxy;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "RouterCallBackProxy.java"


# static fields
.field public static final ROUTER_EVENT_CALLBACK_CODE:Ljava/lang/String; = "code"

.field public static final ROUTER_EVENT_CALLBACK_MESSAGE:Ljava/lang/String; = "message"

.field public static final ROUTER_EVENT_CALLBACK_METHOD:I = 0x7531


# instance fields
.field private listener:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/proxy/RouterCallBackProxy;->listener:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/proxy/RouterCallBackProxy;->listener:Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;

    if-eqz v0, :cond_1

    const/16 v1, 0x7531

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "message"

    .line 28
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "code"

    .line 29
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;->success(ILjava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/callback/RouterCallBack;->failed(ILjava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
