.class final Lcom/taobao/android/ultron/common/UltronTestReceiver$2;
.super Ljava/lang/Object;
.source "UltronTestReceiver.java"

# interfaces
.implements Lanetwork/channel/interceptor/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/common/UltronTestReceiver;->addNetworkInterceptorForGrey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interceptOnce:Z

.field final synthetic val$passtoken:Ljava/lang/String;

.field final synthetic val$tbEagleeyexGray:Ljava/lang/String;

.field final synthetic val$tbEagleeyexT:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$passtoken:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexGray:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexT:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$interceptOnce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;
    .locals 4

    .line 88
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    .line 89
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$passtoken:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$passtoken:Ljava/lang/String;

    const-string v3, "passtoken"

    invoke-virtual {v0, v3, v2}, Lanet/channel/request/Request$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexGray:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexGray:Ljava/lang/String;

    const-string v3, "tb_eagleeyex_gray"

    invoke-virtual {v0, v3, v2}, Lanet/channel/request/Request$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexT:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$tbEagleeyexT:Ljava/lang/String;

    const-string v3, "tb_eagleeyex_t"

    invoke-virtual {v0, v3, v2}, Lanet/channel/request/Request$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    :cond_2
    const-string v2, "finish add grey"

    .line 102
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "UltronTestReceiver"

    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    iget-boolean v2, p0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;->val$interceptOnce:Z

    if-eqz v2, :cond_3

    .line 104
    invoke-static {}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->access$000()Lanetwork/channel/interceptor/Interceptor;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/interceptor/InterceptorManager;->removeInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    const-string v2, "remove Interceptor"

    .line 105
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 108
    invoke-interface {p1, v0, v1}, Lanetwork/channel/interceptor/Interceptor$Chain;->proceed(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
