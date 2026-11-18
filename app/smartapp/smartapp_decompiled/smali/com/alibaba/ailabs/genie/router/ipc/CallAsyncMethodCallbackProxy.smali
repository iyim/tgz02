.class public Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "CallAsyncMethodCallbackProxy.java"


# static fields
.field public static final CALL_ASYNC_CALLBACK_METHOD:I = 0x2711


# instance fields
.field private mCallAsyncMethodCallback:Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;

.field private mCallMethodId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 15
    iput p2, p0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->mCallMethodId:I

    .line 16
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->mCallAsyncMethodCallback:Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->mCallAsyncMethodCallback:Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;

    if-eqz v0, :cond_0

    const/16 v1, 0x2711

    if-ne p1, v1, :cond_0

    .line 23
    iget p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->mCallMethodId:I

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;->callback(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->mCallMethodId:I

    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
