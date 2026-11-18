.class public Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;
.super Ljava/lang/Object;
.source "AliXSkuHandlerCenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

.field private mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

.field private mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/sku/AliXSkuCore;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    .line 31
    iput-object p3, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    .line 32
    new-instance p1, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    iget-object p2, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-direct {p1, p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    iput-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    .line 35
    invoke-direct {p0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->registerSkuHandler()V

    return-void
.end method

.method private registerSkuHandler()V
    .locals 3

    .line 39
    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuDismissHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SkuDismissHandler;-><init>()V

    const-string v1, "sku_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 40
    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuCallbackHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SkuCallbackHandler;-><init>()V

    const-string v1, "sku_callback"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 41
    new-instance v0, Lcom/taobao/android/sku/bizevent/SwitchMarkTypeHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SwitchMarkTypeHandler;-><init>()V

    const-string v1, "switch_mark_type"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 42
    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuUpdateItemHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SkuUpdateItemHandler;-><init>()V

    const-string v1, "sku_update_item"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 43
    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuUserTrackHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SkuUserTrackHandler;-><init>()V

    const-string v1, "skuUserTrack"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 44
    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuUmbrellaHandler;

    invoke-direct {v0}, Lcom/taobao/android/sku/bizevent/SkuUmbrellaHandler;-><init>()V

    const-string v1, "umbrellaAlarm"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    .line 47
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    new-instance v1, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;

    invoke-direct {v1}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;-><init>()V

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->replaceSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    return-void
.end method


# virtual methods
.method public addEventSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    new-instance v1, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;

    iget-object v2, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-direct {v1, v2, p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;-><init>(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->addSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    return-void
.end method

.method public addEventSubscribers(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/sku/handler/IAliXSkuHandler;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;

    iget-object v4, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/sku/handler/IAliXSkuHandler;

    invoke-direct {v3, v4, v1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;-><init>(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->addSubscribers(Ljava/util/Map;)V

    return-void
.end method

.method public getUltronEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    return-object v0
.end method

.method public replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    new-instance v1, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;

    iget-object v2, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-direct {v1, v2, p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;-><init>(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->replaceSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    return-void
.end method
