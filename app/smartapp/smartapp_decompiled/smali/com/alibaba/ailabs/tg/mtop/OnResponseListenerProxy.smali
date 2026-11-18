.class public Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;
.super Ljava/lang/Object;
.source "OnResponseListenerProxy.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public get()Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;->get()Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;->onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListenerProxy;->get()Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;->onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
