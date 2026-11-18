.class public final Lcom/taobao/android/dinamicx/DinamicXEngine;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DinamicXEngine.java"


# static fields
.field private static context:Landroid/content/Context; = null

.field private static hasInitialize:Z = false

.field private static isDebug:Z = false


# instance fields
.field bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

.field private dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

.field dxControlEventCenter:Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

.field protected dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

.field dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

.field private dxRemoteTimeInterface:Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;

.field dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

.field private dxTimerManager:Lcom/taobao/android/dinamicx/timer/DXTimerManager;

.field private eventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private fullInitSuccess:Z

.field private parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation
.end field

.field pipeline:Lcom/taobao/android/dinamicx/DXRenderPipeline;

.field private widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 8
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    new-instance v0, Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/DXEngineContext;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    invoke-direct {p0, v0}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->fullInitSuccess:Z

    if-nez p1, :cond_1

    .line 165
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "DXEngineConfig cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 171
    sget-boolean v1, Lcom/taobao/android/dinamicx/DinamicXEngine;->hasInitialize:Z

    const-string v2, "Engine_Init"

    const-string v3, "Engine"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 172
    :cond_2
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-nez v0, :cond_5

    .line 175
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v5, 0x753b

    invoke-direct {v1, v3, v2, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-boolean v5, Lcom/taobao/android/dinamicx/DinamicXEngine;->hasInitialize:Z

    if-nez v5, :cond_3

    const-string/jumbo v5, "\u6ca1\u6709\u521d\u59cb\u5316"

    goto :goto_1

    :cond_3
    const-string v5, "context == null"

    :goto_1
    iput-object v5, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 179
    iget-object v5, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 180
    iget-object v6, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 182
    iput-boolean v4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->fullInitSuccess:Z

    move-object v0, v5

    .line 193
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-virtual {v1, p0}, Lcom/taobao/android/dinamicx/DXEngineContext;->setEngine(Lcom/taobao/android/dinamicx/DinamicXEngine;)V

    .line 196
    new-instance v1, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    sget-object v5, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v1, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 197
    new-instance v1, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    sget-object v5, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v1, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->eventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 198
    new-instance v1, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    sget-object v5, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v1, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 201
    new-instance v1, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxControlEventCenter:Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    .line 202
    new-instance v1, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-direct {v1, v5}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    .line 204
    new-instance v1, Lcom/taobao/android/dinamicx/DXTemplateManager;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    sget-object v6, Lcom/taobao/android/dinamicx/DinamicXEngine;->context:Landroid/content/Context;

    invoke-direct {v1, v5, v6}, Lcom/taobao/android/dinamicx/DXTemplateManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    .line 205
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget v5, v5, Lcom/taobao/android/dinamicx/DXEngineConfig;->downgradeType:I

    invoke-virtual {v1, v5}, Lcom/taobao/android/dinamicx/DXTemplateManager;->setUpMaxDowngradeCount(I)V

    .line 206
    new-instance v1, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v1, v5}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    .line 211
    new-instance v1, Lcom/taobao/android/dinamicx/DXRenderPipeline;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    iget-object v6, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    invoke-direct {v1, v5, v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/DXTemplateManager;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->pipeline:Lcom/taobao/android/dinamicx/DXRenderPipeline;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 215
    iput-boolean v4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->fullInitSuccess:Z

    .line 216
    new-instance v5, Lcom/taobao/android/dinamicx/DXError;

    iget-object v6, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v6, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v7, 0x7532

    invoke-direct {v6, v3, v2, v7}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "30011reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 220
    iget-object v0, v5, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {v5}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 226
    :goto_2
    invoke-static {v4}, Lcom/taobao/android/dinamicx/DinamicXEngine;->processWindowChanged(Z)V

    .line 228
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initBindingX()V

    .line 230
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initAsyncRenderManager()V

    .line 232
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initTimerManager(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    return-void

    .line 173
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "DinamicX not initialize"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/DinamicXEngine;Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/taobao/android/dinamicx/DinamicXEngine;->makeRuntimeContext(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/DinamicXEngine;)Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    return-object p0
.end method

.method public static commitFail(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;",
            ">;)V"
        }
    .end annotation

    .line 993
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 994
    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 995
    iget-object p0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 996
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 984
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 669
    sget-object v0, Lcom/taobao/android/dinamicx/DinamicXEngine;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initAsyncRenderManager()V
    .locals 7

    .line 262
    :try_start_0
    new-instance v0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    const/4 v2, 0x0

    const v5, 0x1d4c4

    .line 267
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AsyncRender"

    const-string v4, "Async_Render_3.0_init_Crash"

    .line 264
    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initBindingX()V
    .locals 7

    .line 273
    :try_start_0
    new-instance v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 276
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    const/4 v2, 0x0

    const v5, 0x1d8a9

    .line 279
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "DX_BindingX"

    const-string v4, "DX_BindingX_Crash"

    .line 276
    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initTimerManager(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 6
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    :try_start_0
    new-instance v0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getTickInterval()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTimerManager:Lcom/taobao/android/dinamicx/timer/DXTimerManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 246
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v4, 0x753d

    .line 248
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Engine"

    const-string v3, "Engine_Init"

    .line 246
    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/android/dinamicx/DXGlobalInitConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 83
    sget-boolean v2, Lcom/taobao/android/dinamicx/DinamicXEngine;->hasInitialize:Z

    if-eqz v2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    sput-object v2, Lcom/taobao/android/dinamicx/DinamicXEngine;->context:Landroid/content/Context;

    goto :goto_0

    .line 91
    :cond_1
    sput-object p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->context:Landroid/content/Context;

    :goto_0
    const/4 p0, 0x1

    .line 94
    sput-boolean p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->hasInitialize:Z

    if-nez p1, :cond_2

    return-void

    .line 98
    :cond_2
    iget-boolean p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->isDebug:Z

    sput-boolean p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug:Z

    .line 99
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    if-eqz p0, :cond_3

    .line 100
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    invoke-static {p0}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->setDinamicRemoteDebugLog(Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;)V

    .line 102
    :cond_3
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    if-eqz p0, :cond_4

    .line 103
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    invoke-static {p0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->setDxAppMonitor(Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;)V

    .line 105
    :cond_4
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz p0, :cond_5

    .line 106
    sget-object p0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iget-object v2, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->putAll(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    .line 108
    :cond_5
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz p0, :cond_6

    .line 109
    sget-object p0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iget-object v2, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->putAll(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    .line 111
    :cond_6
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz p0, :cond_7

    .line 112
    sget-object p0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iget-object v2, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->putAll(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    .line 114
    :cond_7
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    if-nez p0, :cond_8

    goto :goto_1

    .line 117
    :cond_8
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    sput-object p0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    .line 119
    :goto_1
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    if-eqz p0, :cond_9

    .line 120
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    sput-object p0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    .line 122
    :cond_9
    iget p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->screenOrientation:I

    if-eqz p0, :cond_a

    .line 123
    iget p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->screenOrientation:I

    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->_setGlobalOrientation(I)V

    .line 125
    :cond_a
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    if-eqz p0, :cond_b

    .line 126
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    invoke-static {p0}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->setUmbrellaImpl(Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;)V

    .line 129
    :cond_b
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    if-eqz p0, :cond_c

    .line 130
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    sput-object p0, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    .line 133
    :cond_c
    iget-boolean p0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->enableDarkModeSupport:Z

    sput-boolean p0, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->enableDarkModeSupport:Z

    const/4 v2, 0x0

    const-string v3, "DinamicX"

    const-string v4, "Engine"

    const-string v5, "Engine_InitEnv"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 136
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    long-to-double v8, p0

    const/4 v10, 0x0

    .line 135
    invoke-static/range {v2 .. v10}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 140
    :try_start_1
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_d
    new-instance p1, Lcom/taobao/android/dinamicx/DXError;

    const-string v0, "initialize"

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v1, "Engine"

    const-string v2, "Engine_InitEnv"

    const/16 v3, 0x7531

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    invoke-static {p0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 148
    iget-object p0, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 673
    sget-boolean v0, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug:Z

    return v0
.end method

.method private makeRuntimeContext(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 2

    .line 678
    new-instance v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 679
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 680
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 681
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->eventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->eventHandlerMapWeakReference:Ljava/lang/ref/WeakReference;

    .line 682
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 683
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxControlEventCenter:Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    .line 684
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxRenderPipelineWeakReference:Ljava/lang/ref/WeakReference;

    .line 685
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxNotificationCenterWeakReference:Ljava/lang/ref/WeakReference;

    .line 686
    iput-object p3, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 687
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 688
    invoke-virtual {v0, p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 689
    new-instance p1, Lcom/taobao/android/dinamicx/DXError;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    .line 690
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iput-object p3, p1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz p6, :cond_0

    .line 692
    invoke-virtual {p6}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getObjectUserContext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxUserContext:Ljava/lang/Object;

    .line 693
    invoke-virtual {p6}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getUserContext()Lcom/taobao/android/dinamicx/DXUserContext;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    .line 694
    invoke-virtual {p6}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->renderType:I

    .line 695
    invoke-virtual {p6}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getWidthSpec()I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootWidthSpec:I

    .line 696
    invoke-virtual {p6}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getHeightSpec()I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->rootHeightSpec:I

    :cond_0
    return-object v0
.end method

.method public static processWindowChanged(Z)V
    .locals 5

    :try_start_0
    const-string v0, "DinamicX"

    const/4 v1, 0x1

    .line 966
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DinamicX processWindowChanged forceChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/log/DXLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 967
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->forceResetScreenSize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 969
    invoke-static {p0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private trackerPerform(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 711
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    long-to-double v6, p3

    const/4 v0, 0x0

    const-string v2, "Engine"

    const/4 v8, 0x1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p5

    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    return-void
.end method


# virtual methods
.method public afterMountView(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeMountView(Lcom/taobao/android/dinamicx/DXRootView;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public cancelAllTasks()V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelAllTasks()V

    :cond_0
    return-void
.end method

.method public clearPreRenderViewPoolCache()V
    .locals 2

    .line 477
    invoke-static {}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->getInstance()Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->clearV3Cache(Ljava/lang/String;)V

    return-void
.end method

.method public createView(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;-><init>(Landroid/content/Context;)V

    .line 661
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    iput-object p2, v0, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 663
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;->setBindingXManagerWeakReference(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;)V

    .line 664
    new-instance p1, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public downLoadTemplates(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXTemplateManager;->downloadTemplates(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 609
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 610
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v2, 0x7535

    const-string v3, "Engine"

    const-string v4, "Engine_Download"

    invoke-direct {v1, v3, v4, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadTemplates error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 614
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :goto_0
    return-void
.end method

.method public engineInitSuccess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->fullInitSuccess:Z

    return v0
.end method

.method public fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 632
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 633
    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    invoke-virtual {v3, p1}, Lcom/taobao/android/dinamicx/DXTemplateManager;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v3

    const-string v6, "Engine_Fetch"

    .line 634
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v7, v4, v1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/taobao/android/dinamicx/DinamicXEngine;->trackerPerform(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 637
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 640
    :cond_1
    new-instance v2, Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 641
    new-instance v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v4, 0x7536

    const-string v5, "Engine"

    const-string v6, "Engine_Fetch"

    invoke-direct {v3, v5, v6, v4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 643
    iput-object p1, v2, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 644
    invoke-static {v1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 645
    iget-object p1, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-static {v2}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v0
.end method

.method protected getDxRemoteTimeInterface()Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxRemoteTimeInterface:Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->onDestroy()V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getBindingX()Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getBindingX()Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->onDestroy()V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTimerManager:Lcom/taobao/android/dinamicx/timer/DXTimerManager;

    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 832
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->reset()V

    return-void
.end method

.method public onPause()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onRestart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->onResume()V

    :cond_0
    return-void
.end method

.method public onRootViewAppear(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 854
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXRootView;->onRootViewAppear(I)V

    return-void
.end method

.method public onRootViewAppear(Lcom/taobao/android/dinamicx/DXRootView;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 876
    :cond_0
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->onRootViewAppear(I)V

    return-void
.end method

.method public onRootViewDisappear(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 843
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXRootView;->onRootViewDisappear(I)V

    return-void
.end method

.method public onRootViewDisappear(Lcom/taobao/android/dinamicx/DXRootView;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 865
    :cond_0
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->onRootViewDisappear(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->onStop()V

    :cond_0
    return-void
.end method

.method public postMessage(Lcom/taobao/android/dinamicx/DXRootView;Ljava/lang/Object;)V
    .locals 6

    .line 886
    :try_start_0
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 887
    nop

    nop

    const-string/jumbo v0, "type"

    .line 888
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BNDX"

    .line 889
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    if-eqz v1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bindingXManager:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processDXMsg(Lcom/taobao/android/dinamicx/DXRootView;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 896
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v1, "params"

    .line 901
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v1, "targetId"

    .line 906
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    new-instance v2, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;

    const-wide v3, -0x184146df80afad89L    # -5.475490512988021E191

    invoke-direct {v2, v3, v4}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;-><init>(J)V

    .line 909
    invoke-virtual {v2, p2}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 910
    invoke-virtual {v2, v1}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setTargetId(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v2, v0}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setType(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWidgetNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p2

    if-nez p2, :cond_4

    .line 916
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    goto :goto_0

    .line 918
    :cond_4
    invoke-virtual {p2, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 923
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 924
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getBizType()Ljava/lang/String;

    move-result-object p2

    .line 925
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "dinamicx"

    :cond_5
    move-object v0, p2

    const/4 v1, 0x0

    const/16 v4, 0x753e

    .line 932
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Engine"

    const-string v3, "Engine_Post_Message"

    .line 928
    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public preCreateView(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->getInstance()Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->obtainV3View(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u547d\u4e2d3.0\u9884\u52a0\u8f7dview:  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->print(Ljava/lang/String;)V

    .line 523
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 525
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->createView(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    return-object p1
.end method

.method public preRenderTemplate(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;ILcom/taobao/android/dinamicx/DXRenderOptions;)V
    .locals 6

    .line 454
    iget-object p4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-nez p4, :cond_0

    return-void

    .line 457
    :cond_0
    new-instance p4, Lcom/taobao/android/dinamicx/DinamicXEngine$1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngine$1;-><init>(Lcom/taobao/android/dinamicx/DinamicXEngine;Lcom/taobao/android/dinamicx/DXRenderOptions;Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;)V

    .line 470
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    invoke-virtual {p1, p4}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->schedulePreRenderTemplate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prefetchTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;I)V
    .locals 0

    .line 488
    iget-object p4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-nez p4, :cond_0

    return-void

    .line 491
    :cond_0
    new-instance p4, Lcom/taobao/android/dinamicx/DinamicXEngine$2;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine$2;-><init>(Lcom/taobao/android/dinamicx/DinamicXEngine;Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;)V

    .line 506
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    invoke-virtual {p1, p4}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->schedulePrefetchTemplate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerDXRemoteTimeImpl(Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 951
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxRemoteTimeInterface:Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;

    :cond_0
    return-void
.end method

.method public registerDXRootViewLifeCycle(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 941
    :cond_0
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->registerDXRootViewLifeCycle(Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;)V

    return-void
.end method

.method public registerDataParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 540
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->parserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 556
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->eventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 557
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 586
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 587
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v2, 0x753c

    const-string v3, "Engine"

    const-string v4, "Engine_Register_Notification"

    invoke-direct {v1, v3, v4, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 591
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerTimerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;J)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTimerManager:Lcom/taobao/android/dinamicx/timer/DXTimerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->registerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;J)V

    return-void
.end method

.method public registerWidget(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 572
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->widgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 9
    .param p3    # Lcom/taobao/android/dinamicx/DXRootView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "II",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    :try_start_0
    iget-object v8, p3, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    :try_start_1
    new-instance v1, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;-><init>()V

    invoke-virtual {v1, p4}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withWidthSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object p4

    .line 345
    invoke-virtual {p4, p5}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withHeightSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object p4

    .line 346
    invoke-virtual {p4, p6}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withObjectUserContext(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object p4

    const/4 v6, -0x1

    .line 347
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->build()Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v8

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngine;->renderTemplate(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;ILcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v8, v0

    .line 350
    :goto_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    :cond_0
    new-instance p2, Lcom/taobao/android/dinamicx/DXError;

    iget-object p3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 354
    iput-object v8, p2, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 355
    new-instance p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 p4, 0x7534

    const-string p5, "Engine"

    const-string p6, "Engine_Render"

    invoke-direct {p3, p5, p6, p4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 358
    iget-object p1, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {p2}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v0
.end method

.method public renderTemplate(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;ILcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "I",
            "Lcom/taobao/android/dinamicx/DXRenderOptions;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v0, p5

    const-string v1, "data is null"

    const-string v2, "data="

    const-string v10, "Engine_Render"

    const-string v11, "Engine"

    const/4 v12, 0x0

    if-nez v9, :cond_1

    .line 378
    :try_start_0
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    const-string/jumbo v4, "renderTemplate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DXTemplate \u4e3a\u7a7a + positon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v12, v12, v5}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)V

    .line 380
    new-instance v3, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/DXResult;-><init>()V

    .line 381
    invoke-virtual {v3, v12}, Lcom/taobao/android/dinamicx/DXResult;->setResult(Ljava/lang/Object;)V

    .line 383
    new-instance v4, Lcom/taobao/android/dinamicx/DXError;

    iget-object v5, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v6, 0x753f

    invoke-direct {v5, v11, v10, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 387
    iget-object v0, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v3, v4}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v3

    .line 394
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->checkValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    new-instance v3, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/DXResult;-><init>()V

    .line 396
    invoke-virtual {v3, v12}, Lcom/taobao/android/dinamicx/DXResult;->setResult(Ljava/lang/Object;)V

    .line 398
    new-instance v4, Lcom/taobao/android/dinamicx/DXError;

    iget-object v5, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 399
    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v6, 0x7540

    invoke-direct {v5, v11, v10, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u53c2\u6570\u6821\u9a8c\u4e0d\u5408\u6cd5 position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 403
    iget-object v0, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v3, v4}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 406
    invoke-static {v4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v3

    .line 412
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    if-nez p6, :cond_4

    .line 413
    sget-object v1, Lcom/taobao/android/dinamicx/DXRenderOptions;->DEFAULT_RENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-object v15, v1

    goto :goto_0

    :cond_4
    move-object/from16 v15, p6

    .line 414
    :goto_0
    iget-object v6, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->pipeline:Lcom/taobao/android/dinamicx/DXRenderPipeline;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngine;->makeRuntimeContext(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v1

    .line 415
    iget-object v2, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v2, :cond_5

    .line 416
    iget-object v2, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    invoke-virtual {v2, v1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->beforeRenderTemplate(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 418
    :cond_5
    iget-object v2, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->pipeline:Lcom/taobao/android/dinamicx/DXRenderPipeline;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1, v0, v15}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->renderInRootView(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/DXRuntimeContext;ILcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v0

    .line 419
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "DinamicX"

    const/4 v2, 0x1

    .line 420
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXResult;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/log/DXLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    const-string v3, "Engine_Render"

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v4, v1, v13

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DinamicXEngine;->trackerPerform(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 425
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    :cond_7
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    iget-object v2, v8, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 429
    iput-object v9, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 430
    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const/16 v3, 0x7534

    invoke-direct {v2, v11, v10, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 433
    iget-object v0, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v12
.end method

.method public renderTemplate(Lcom/taobao/android/dinamicx/DXRootView;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x7534

    const-string v1, "Engine_Render"

    const-string v2, "Engine"

    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 294
    iget-object v3, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 295
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v8

    .line 296
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v9

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    .line 297
    invoke-virtual/range {v4 .. v10}, Lcom/taobao/android/dinamicx/DinamicXEngine;->renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    return-object p1

    .line 299
    :cond_0
    new-instance p2, Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {p2, v3}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {v3, v2, v1, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "dxRootView == null || dxRootView.getContext() == null || dxRootView.dxTemplateItem == null"

    .line 303
    iput-object v4, v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 304
    iget-object v4, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {p2}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 306
    new-instance v3, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {v3, p2}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p2

    .line 309
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    :cond_1
    new-instance v3, Lcom/taobao/android/dinamicx/DXError;

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->bizType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 314
    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object p1, v3, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 316
    :cond_2
    new-instance p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {p1, v2, v1, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    invoke-static {p2}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 319
    iget-object p2, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-static {v3}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 321
    new-instance p1, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p1, v3}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p1
.end method

.method public renderTemplateWithLifeCycle(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;I)Lcom/taobao/android/dinamicx/DXResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "I)",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    .line 741
    invoke-virtual {p0, p2, p5}, Lcom/taobao/android/dinamicx/DinamicXEngine;->beforeMountView(Lcom/taobao/android/dinamicx/DXRootView;I)V

    .line 742
    sget-object v6, Lcom/taobao/android/dinamicx/DXRenderOptions;->DEFAULT_RENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/dinamicx/DinamicXEngine;->renderTemplate(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;ILcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    .line 743
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->afterMountView(Lcom/taobao/android/dinamicx/DXRootView;)V

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->clearCache()V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxAsyncRenderManager:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->reset()V

    :cond_1
    return-void
.end method

.method public unmountView(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterTimerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTimerManager:Lcom/taobao/android/dinamicx/timer/DXTimerManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->unregisterListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;)V

    return-void
.end method
