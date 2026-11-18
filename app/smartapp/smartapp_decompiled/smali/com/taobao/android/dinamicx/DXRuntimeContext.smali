.class public Lcom/taobao/android/dinamicx/DXRuntimeContext;
.super Ljava/lang/Object;
.source "DXRuntimeContext.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected bizType:Ljava/lang/String;

.field protected cacheIdentify:Ljava/lang/String;

.field protected config:Lcom/taobao/android/dinamicx/DXEngineConfig;

.field protected contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private dataWRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field protected dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;",
            ">;"
        }
    .end annotation
.end field

.field protected dxError:Lcom/taobao/android/dinamicx/DXError;

.field protected dxNotificationCenterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;",
            ">;"
        }
    .end annotation
.end field

.field protected dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DXRenderPipeline;",
            ">;"
        }
    .end annotation
.end field

.field protected dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

.field protected dxUserContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

.field protected eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private parentDirectionSpec:I

.field protected parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation
.end field

.field protected pipelineIdentifier:Ljava/lang/String;

.field renderType:I

.field rootHeightSpec:I

.field protected rootViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation
.end field

.field rootWidthSpec:I

.field protected subData:Ljava/lang/Object;

.field protected subdataIndex:I

.field protected userContext:Lcom/taobao/android/dinamicx/DXUserContext;

.field protected widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field protected widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parentDirectionSpec:I

    .line 37
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    .line 38
    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 39
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->bizType:Ljava/lang/String;

    return-void
.end method

.method private getFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 2

    .line 99
    new-instance v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 100
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxUserContext:Ljava/lang/Object;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxUserContext:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 102
    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 103
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dataWRef:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dataWRef:Ljava/lang/ref/WeakReference;

    .line 104
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->contextWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 105
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subData:Ljava/lang/Object;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subData:Ljava/lang/Object;

    .line 106
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subdataIndex:I

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subdataIndex:I

    .line 107
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 108
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    .line 109
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 110
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    .line 111
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;

    .line 112
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxNotificationCenterWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxNotificationCenterWeakReference:Ljava/lang/ref/WeakReference;

    .line 113
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootViewWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 114
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    .line 115
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    .line 116
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parentDirectionSpec:I

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setParentDirectionSpec(I)V

    .line 117
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->renderType:I

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->renderType:I

    .line 118
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->pipelineIdentifier:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->pipelineIdentifier:Ljava/lang/String;

    .line 119
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootWidthSpec:I

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootWidthSpec:I

    .line 120
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootHeightSpec:I

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootHeightSpec:I

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheIdentify()Ljava/lang/String;
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cacheIdentify:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-wide v2, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "w:"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootWidthSpec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h:"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootHeightSpec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cacheIdentify:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cacheIdentify:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 222
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dataWRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDxControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 273
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    return-object v0
.end method

.method public getDxError()Lcom/taobao/android/dinamicx/DXError;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public getDxNotificationCenter()Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxNotificationCenterWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    return-object v0
.end method

.method public getDxRenderPipeline()Lcom/taobao/android/dinamicx/DXRenderPipeline;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXRenderPipeline;

    return-object v0
.end method

.method public getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-object v0
.end method

.method public getDxUserContext()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxUserContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    return-object v0
.end method

.method public getEventHandlerMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventHandlerWithId(J)Lcom/taobao/android/dinamicx/IDXEventHandler;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/IDXEventHandler;

    return-object p1
.end method

.method public getNativeView()Landroid/view/View;
    .locals 3

    .line 318
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 325
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getParentDirectionSpec()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parentDirectionSpec:I

    return v0
.end method

.method public getParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public getPipelineIdentifier()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->pipelineIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->renderType:I

    return v0
.end method

.method public getRootHeightSpec()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootHeightSpec:I

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getRootView()Lcom/taobao/android/dinamicx/DXRootView;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootViewWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXRootView;

    return-object v0
.end method

.method public getRootWidthSpec()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootWidthSpec:I

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSubData()Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subData:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubdataIndex()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subdataIndex:I

    return v0
.end method

.method public getUserContext()Lcom/taobao/android/dinamicx/DXUserContext;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    return-object v0
.end method

.method public getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetNodeMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dataWRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setDxError(Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    return-void
.end method

.method protected setDxRenderPipeline(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DXRenderPipeline;",
            ">;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setParentDirectionSpec(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parentDirectionSpec:I

    return-void
.end method

.method public setPipelineIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->pipelineIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setSubData(Ljava/lang/Object;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subData:Ljava/lang/Object;

    return-void
.end method

.method public setSubdataIndex(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->subdataIndex:I

    return-void
.end method

.method public setWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-void
.end method
