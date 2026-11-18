.class Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "SkuRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/bizevent/SkuRequestHandler;

.field final synthetic val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/bizevent/SkuRequestHandler;Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->this$0:Lcom/taobao/android/sku/bizevent/SkuRequestHandler;

    iput-object p2, p0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 45
    iget-object p1, p0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getRuntimeContext()Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->getRequestResp()Ljava/util/Map;

    move-result-object p1

    const-string p2, "response"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getRuntimeContext()Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->getRequestMtopResp()Ljava/util/Map;

    move-result-object p1

    const-string p2, "__Mtop__"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
