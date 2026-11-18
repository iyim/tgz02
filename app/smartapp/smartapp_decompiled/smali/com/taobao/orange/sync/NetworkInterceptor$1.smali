.class Lcom/taobao/orange/sync/NetworkInterceptor$1;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Lanetwork/channel/interceptor/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/sync/NetworkInterceptor;->intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/sync/NetworkInterceptor;

.field final synthetic val$chain:Lanetwork/channel/interceptor/Interceptor$Chain;


# direct methods
.method constructor <init>(Lcom/taobao/orange/sync/NetworkInterceptor;Lanetwork/channel/interceptor/Interceptor$Chain;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1;->this$0:Lcom/taobao/orange/sync/NetworkInterceptor;

    iput-object p2, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1;->val$chain:Lanetwork/channel/interceptor/Interceptor$Chain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1;->val$chain:Lanetwork/channel/interceptor/Interceptor$Chain;

    invoke-interface {v0}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    return-void
.end method

.method public onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1;->val$chain:Lanetwork/channel/interceptor/Interceptor$Chain;

    invoke-interface {v0}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "a-orange-p"

    .line 56
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/taobao/orange/sync/NetworkInterceptor$1$1;

    invoke-direct {v0, p0, p2}, Lcom/taobao/orange/sync/NetworkInterceptor$1$1;-><init>(Lcom/taobao/orange/sync/NetworkInterceptor$1;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/sync/NetworkInterceptor$1;->val$chain:Lanetwork/channel/interceptor/Interceptor$Chain;

    invoke-interface {v0}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    return-void
.end method
