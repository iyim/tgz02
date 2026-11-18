.class public Lcom/taobao/android/tbsku/network/SkuRequestParams;
.super Ljava/lang/Object;
.source "SkuRequestParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/taobao/android/tbsku/network/ISkuRequestParams;


# instance fields
.field private mApiName:Ljava/lang/String;

.field private mApiVersion:Ljava/lang/String;

.field private mDetail_V:Ljava/lang/String;

.field private mExParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemId:Ljava/lang/String;

.field private mUnitStrategy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.taobao.detail.getDetail"

    .line 15
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mApiName:Ljava/lang/String;

    const-string v0, "6.0"

    .line 16
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mApiVersion:Ljava/lang/String;

    const-string v0, "UNIT_TRADE"

    .line 18
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mUnitStrategy:Ljava/lang/String;

    const-string v0, "3.3.2"

    .line 20
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mDetail_V:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mItemId:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 29
    iget-object p1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mApiName:Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    const-string v0, "locType"

    .line 52
    iget-object v1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    const-string v2, "params"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mDetail_V:Ljava/lang/String;

    const-string v2, "detail_v"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mItemId:Ljava/lang/String;

    const-string v2, "itemNumId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mExParams:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;
    .locals 2

    .line 35
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/SkuRequestParams;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/SkuRequestParams;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/SkuRequestParams;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUnitStrategy()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestParams;->mUnitStrategy:Ljava/lang/String;

    return-object v0
.end method
