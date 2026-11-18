.class public Lcom/taobao/android/dinamicx/DXPipelineCacheManager;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DXPipelineCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;
    }
.end annotation


# instance fields
.field expandWidgetLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 36
    new-instance p1, Landroid/support/v4/util/LruCache;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPipelineCacheMaxCount()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    return-void
.end method


# virtual methods
.method public buildPipelineCacheObj(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXError;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;
    .locals 1

    .line 105
    new-instance v0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->cacheWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 107
    iput-object p2, v0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->error:Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    return-void
.end method

.method public getExpandWidgetLruCache(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;
    .locals 0

    .line 92
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->getExpandWidgetLruCache(Ljava/lang/String;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    move-result-object p1

    return-object p1
.end method

.method public getExpandWidgetLruCache(Ljava/lang/String;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isUsePipelineCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public needReadExpandedWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRenderOptions;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isUsePipelineCache()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRenderOptions;->isControlEvent()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public putExpandWidgetLruCache(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;)V
    .locals 1

    .line 85
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isUsePipelineCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public readExpandedWidgetNode(Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/view/View;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 7

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->getExpandWidgetLruCache(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->cacheWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->cacheWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 63
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eq v3, v4, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->hasError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v2, p1, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V

    if-eqz p2, :cond_2

    .line 71
    sget v1, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v2

    :cond_3
    return-object v0

    :catch_0
    move-exception p2

    .line 76
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->bizType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    const v5, 0x9c47

    .line 78
    invoke-static {p2}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Render"

    const-string v4, "Render_Get_Expand_Tree_Crash"

    .line 76
    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->expandWidgetLruCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    :cond_1
    return-void
.end method
