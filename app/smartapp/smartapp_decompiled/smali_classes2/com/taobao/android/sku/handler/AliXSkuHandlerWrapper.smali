.class public Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "AliXSkuHandlerWrapper.java"


# instance fields
.field private mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

.field private mSkuHandler:Lcom/taobao/android/sku/handler/IAliXSkuHandler;


# direct methods
.method public constructor <init>(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    .line 18
    iput-object p2, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->mSkuHandler:Lcom/taobao/android/sku/handler/IAliXSkuHandler;

    return-void
.end method


# virtual methods
.method public dispatchNextEvents(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->mSkuHandler:Lcom/taobao/android/sku/handler/IAliXSkuHandler;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v1, Lcom/taobao/android/sku/handler/SkuEvent;

    invoke-direct {v1, p1, p0}, Lcom/taobao/android/sku/handler/SkuEvent;-><init>(Lcom/alibaba/android/ultron/event/base/UltronEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;)V

    iget-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->mFeedback:Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;

    invoke-interface {v0, v1, p1}, Lcom/taobao/android/sku/handler/IAliXSkuHandler;->handleEvent(Lcom/taobao/android/sku/handler/SkuEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    return-void
.end method
