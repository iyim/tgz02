.class public Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;
.super Lcom/taobao/android/sku/bizevent/SkuRequestHandler;
.source "SkuJHSJoinRequestHandler.java"


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "sku_jhs_join_request"


# instance fields
.field private mTradeExParams:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->mTradeExParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->mTradeExParams:Ljava/lang/Object;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->mTradeExParams:Ljava/lang/Object;

    const-string v1, "tradeExParams"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const-string v2, "params"

    .line 56
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    const-string v2, "tgKey"

    .line 61
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    const-string v4, "utf-8"

    .line 65
    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    :cond_4
    iget-object v2, p0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->mTradeExParams:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 74
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 75
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    .line 24
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mtopConfig"

    .line 30
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "tradeExParams"

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 37
    iput-object p1, p0, Lcom/taobao/android/tbsku/bizevent/SkuJHSJoinRequestHandler;->mTradeExParams:Ljava/lang/Object;

    :cond_2
    return-void
.end method
