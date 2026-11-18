.class final Lcom/taobao/android/ultron/common/UltronTestReceiver$1;
.super Ljava/lang/Object;
.source "UltronTestReceiver.java"

# interfaces
.implements Lanetwork/channel/interceptor/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/common/UltronTestReceiver;->addNetworkInterceptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$api:Ljava/lang/String;

.field final synthetic val$headerKey:Ljava/lang/String;

.field final synthetic val$headerValue:Ljava/lang/String;

.field final synthetic val$interceptOnce:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$api:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$headerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$headerValue:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$interceptOnce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;
    .locals 4

    .line 64
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$headerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$headerValue:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    const-string v2, "finish add header"

    .line 69
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "UltronTestReceiver"

    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    iget-boolean v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;->val$interceptOnce:Z

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->access$000()Lanetwork/channel/interceptor/Interceptor;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/interceptor/InterceptorManager;->removeInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    const-string v2, "remove Interceptor"

    .line 72
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-interface {p1, v0, v1}, Lanetwork/channel/interceptor/Interceptor$Chain;->proceed(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
