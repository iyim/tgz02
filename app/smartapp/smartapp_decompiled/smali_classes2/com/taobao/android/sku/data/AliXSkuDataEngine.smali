.class public Lcom/taobao/android/sku/data/AliXSkuDataEngine;
.super Ljava/lang/Object;
.source "AliXSkuDataEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/data/AliXSkuDataEngine$ParseResultCallBack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

.field private mParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mParsers:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    .line 28
    new-instance p1, Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-direct {p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    return-void
.end method


# virtual methods
.method public generateBizData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanOperationData()V

    .line 140
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->setOperationData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 143
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mParsers:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;

    .line 148
    invoke-virtual {v1}, Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;->getParserMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 152
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 157
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/sku/data/parser/IAliXSkuDataParser;

    iget-object v4, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    .line 158
    invoke-virtual {v4}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    .line 159
    invoke-virtual {v5}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getStoredData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    .line 160
    invoke-virtual {v6}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getOperationData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 157
    invoke-interface {v3, v4, v5, v6}, Lcom/taobao/android/sku/data/parser/IAliXSkuDataParser;->parseData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanOperationData()V

    .line 168
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanBizData()V

    .line 169
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->setBizData(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_7
    :goto_2
    return-object p1
.end method

.method public generateBizData(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/sku/data/AliXSkuDataEngine$ParseResultCallBack;)V
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->generateBizData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p2, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine$ParseResultCallBack;->onBizDataParsed(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method

.method public getBizData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getBizData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getExtInput()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getExtInput()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptMd5()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getJavaScriptMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getJavaScriptUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getSellerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoredData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getStoredData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getUltronTemplateMd5()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getUltronTemplateMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltronTemplateUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->getUltronTemplateUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->initOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public initData(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lcom/taobao/android/sku/utils/DynamicMergeUtils;->mergeResponseToJson(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->initOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->initOriginalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerDataParserGroup(Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setExtInput(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->setExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanStoredData()V

    .line 71
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanOperationData()V

    .line 72
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->cleanBizData()V

    .line 73
    iget-object v0, p0, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->mDataContext:Lcom/taobao/android/sku/data/AliXSkuDataContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataContext;->initOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public updateOriginalData(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p1}, Lcom/taobao/android/sku/utils/DynamicMergeUtils;->mergeResponseToJson(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
