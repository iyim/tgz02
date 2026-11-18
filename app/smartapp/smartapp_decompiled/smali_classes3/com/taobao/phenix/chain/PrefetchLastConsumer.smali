.class public Lcom/taobao/phenix/chain/PrefetchLastConsumer;
.super Lcom/taobao/rxm/consume/BaseConsumer;
.source "PrefetchLastConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/rxm/consume/BaseConsumer<",
        "Lcom/taobao/phenix/entity/PrefetchImage;",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCreator:Lcom/taobao/phenix/intf/PrefetchCreator;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/intf/PrefetchCreator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/taobao/rxm/consume/BaseConsumer;-><init>(Lcom/taobao/rxm/request/RequestContext;)V

    .line 17
    iput-object p2, p0, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->mCreator:Lcom/taobao/phenix/intf/PrefetchCreator;

    return-void
.end method


# virtual methods
.method protected onCancellationImpl()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->mCreator:Lcom/taobao/phenix/intf/PrefetchCreator;

    invoke-virtual {p0}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/request/ImageRequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/taobao/phenix/intf/PrefetchCreator;->onImageComplete(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/PrefetchImage;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    .line 27
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "PrefetchConsumer"

    const-string v3, "received failure=%s"

    invoke-static {v2, v0, v3, v1}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->mCreator:Lcom/taobao/phenix/intf/PrefetchCreator;

    invoke-virtual {p0}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/request/ImageRequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/phenix/intf/PrefetchCreator;->onImageComplete(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/PrefetchImage;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onNewResultImpl(Lcom/taobao/phenix/entity/PrefetchImage;Z)V
    .locals 2

    .line 22
    iget-object p2, p0, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->mCreator:Lcom/taobao/phenix/intf/PrefetchCreator;

    invoke-virtual {p0}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->getContext()Lcom/taobao/rxm/request/RequestContext;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/request/ImageRequest;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/taobao/phenix/intf/PrefetchCreator;->onImageComplete(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/entity/PrefetchImage;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .line 11
    check-cast p1, Lcom/taobao/phenix/entity/PrefetchImage;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/phenix/chain/PrefetchLastConsumer;->onNewResultImpl(Lcom/taobao/phenix/entity/PrefetchImage;Z)V

    return-void
.end method
