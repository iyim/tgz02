.class public Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;
.super Ljava/lang/Object;
.source "AliXSkuHandlerFeedback.java"


# instance fields
.field private mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;


# direct methods
.method public constructor <init>(Lcom/taobao/android/sku/AliXSkuCore;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    return-void
.end method


# virtual methods
.method public dismissPresenter()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->dismissPresenter()V

    return-void
.end method

.method public feedbackHandlerResult(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/taobao/android/sku/AliXSkuCore;->updateSku(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    :cond_0
    return-void
.end method

.method public feedbackHandlerResult(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/taobao/android/sku/AliXSkuCore;->updateSku(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    :cond_0
    return-void
.end method

.method public feedbackHandlerResult(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/sku/AliXSkuCore;->updateSku(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    :cond_0
    return-void
.end method

.method public getScrollerLayoutOffsets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->getScrollerLayoutOffsets()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    return-object v0
.end method

.method public getSkuUniqueId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object v0

    return-object v0
.end method

.method public presentDataLoading()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->presentLoading()V

    return-void
.end method
