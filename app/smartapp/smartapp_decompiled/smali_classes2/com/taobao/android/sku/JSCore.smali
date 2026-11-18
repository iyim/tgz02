.class public Lcom/taobao/android/sku/JSCore;
.super Ljava/lang/Object;
.source "JSCore.java"


# static fields
.field private static final SCRIPT_KEY:Ljava/lang/String; = "sku_script"


# instance fields
.field private mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

.field private mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/taobao/android/sku/data/AliXSkuDataEngine;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/taobao/android/sku/JSCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    .line 23
    iput-object p2, p0, Lcom/taobao/android/sku/JSCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    return-void
.end method


# virtual methods
.method public initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->createConfig()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    move-result-object p2

    const-string v0, "dataLoaderTypeClient"

    .line 30
    invoke-virtual {p2, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->setDataLoadType(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->setTemplateUrl(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->setScriptUrl(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, p4}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->setScriptMd5(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/taobao/android/sku/JSCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->setDataLoaderConfig(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;)V

    return-void
.end method

.method public showSku(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 2

    .line 49
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->initialState:Lcom/alibaba/fastjson/JSONObject;

    .line 51
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getExtInput()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->extInput:Lcom/alibaba/fastjson/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getLastLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->setStoreStateFromData(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)V

    :cond_0
    const-string v1, "initial"

    .line 59
    invoke-static {v1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->createContext(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->setRootKey(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->setProcessor(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    .line 62
    iget-object p1, p0, Lcom/taobao/android/sku/JSCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    new-instance p2, Lcom/taobao/android/sku/JSCore$1;

    invoke-direct {p2, p0, p3}, Lcom/taobao/android/sku/JSCore$1;-><init>(Lcom/taobao/android/sku/JSCore;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    return-void
.end method

.method public updateData()V
    .locals 3

    .line 39
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->initialState:Lcom/alibaba/fastjson/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getExtInput()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->extInput:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "initial"

    .line 43
    invoke-static {v1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->createContext(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/taobao/android/sku/JSCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    new-instance v2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    return-void
.end method
