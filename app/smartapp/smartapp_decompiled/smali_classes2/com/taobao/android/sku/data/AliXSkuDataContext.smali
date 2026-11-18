.class public Lcom/taobao/android/sku/data/AliXSkuDataContext;
.super Ljava/lang/Object;
.source "AliXSkuDataContext.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mBizState:Lcom/alibaba/fastjson/JSONObject;

.field private mExtInput:Lcom/alibaba/fastjson/JSONObject;

.field private mJavaScriptMd5:Ljava/lang/String;

.field private mJavaScriptUrl:Ljava/lang/String;

.field private mOpState:Lcom/alibaba/fastjson/JSONObject;

.field private mOriginData:Lcom/alibaba/fastjson/JSONObject;

.field private mStaticExtInput:Lcom/alibaba/fastjson/JSONObject;

.field private mStoredState:Lcom/alibaba/fastjson/JSONObject;

.field private mUltronTemplateMd5:Ljava/lang/String;

.field private mUltronTemplateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStaticExtInput:Lcom/alibaba/fastjson/JSONObject;

    .line 45
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStoredState:Lcom/alibaba/fastjson/JSONObject;

    .line 46
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOpState:Lcom/alibaba/fastjson/JSONObject;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mBizState:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method


# virtual methods
.method public cleanBizData()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mBizState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    return-void
.end method

.method public cleanOperationData()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOpState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    return-void
.end method

.method public cleanStoredData()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStoredState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    return-void
.end method

.method public getBizData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mBizState:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getExtInput()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOriginData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "item"

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "itemId"

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptMd5()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mJavaScriptMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaScriptUrl()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mJavaScriptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOpState:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getOriginalData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOriginData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOriginData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "seller"

    .line 73
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "userId"

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStoredState:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getUltronTemplateMd5()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mUltronTemplateMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getUltronTemplateUrl()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mUltronTemplateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initOriginalData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOriginData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public initOriginalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mUltronTemplateUrl:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mUltronTemplateMd5:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mJavaScriptUrl:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mJavaScriptMd5:Ljava/lang/String;

    return-void
.end method

.method public setBizData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mBizState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setExtInput(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    .line 100
    iget-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    if-nez p1, :cond_0

    .line 101
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStaticExtInput:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setOperationData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mOpState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStaticExtInput:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    if-nez p1, :cond_1

    .line 111
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mExtInput:Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStaticExtInput:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setStoredData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataContext;->mStoredState:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
