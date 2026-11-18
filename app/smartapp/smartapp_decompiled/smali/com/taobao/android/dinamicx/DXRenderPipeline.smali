.class public Lcom/taobao/android/dinamicx/DXRenderPipeline;
.super Lcom/taobao/android/dinamicx/DXRenderPipelineBase;
.source "DXRenderPipeline.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/event/IDXControlEventListener;


# instance fields
.field dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;",
            ">;"
        }
    .end annotation
.end field

.field dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

.field dxPipelineCacheManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DXPipelineCacheManager;",
            ">;"
        }
    .end annotation
.end field

.field dxRenderManager:Lcom/taobao/android/dinamicx/DXRenderManager;

.field dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

.field dxTemplateParser:Lcom/taobao/android/dinamicx/DXTemplateParser;

.field notificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/DXTemplateManager;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXRenderPipelineBase;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 47
    new-instance v0, Lcom/taobao/android/dinamicx/DXTemplateParser;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXTemplateParser;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXTemplateParser;

    .line 48
    new-instance v0, Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXLayoutManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    .line 49
    new-instance v0, Lcom/taobao/android/dinamicx/DXRenderManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXRenderManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxRenderManager:Lcom/taobao/android/dinamicx/DXRenderManager;

    .line 51
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->notificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    .line 58
    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    .line 59
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxControlEventCenter:Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxPipelineCacheManagerWeakReference:Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->registerControlEvents()V

    return-void
.end method

.method private checkNeedCancel(Lcom/taobao/android/dinamicx/DXRenderOptions;)Z
    .locals 2

    .line 439
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 404
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-boolean v1, v1, Lcom/taobao/android/dinamicx/DXEngineConfig;->disabledDownGrade:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getTemplateManager()Lcom/taobao/android/dinamicx/DXTemplateManager;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getTemplateManager()Lcom/taobao/android/dinamicx/DXTemplateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    const/16 v0, 0x3e8

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->postNotify(Lcom/taobao/android/dinamicx/DXRuntimeContext;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 410
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private postNotify(Lcom/taobao/android/dinamicx/DXRuntimeContext;I)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->notificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 423
    new-instance v0, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;-><init>()V

    .line 424
    iget-object v1, p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 425
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxUserContext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->dxUserContext:Ljava/lang/Object;

    .line 426
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->data:Lcom/alibaba/fastjson/JSONObject;

    .line 427
    iput p2, v0, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->reason:I

    .line 428
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->notificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->postNotification(Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;)V

    :cond_0
    return-void
.end method

.method private resetBindingXAnimation(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 5

    .line 447
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->resetAnimationOnRootView(Lcom/taobao/android/dinamicx/DXRootView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 452
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 453
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getBizType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 454
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x9c48

    .line 456
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Pipeline"

    const-string v4, "Pipeline_Stage_Reset_Bindingx"

    invoke-direct {v1, v3, v4, v2, p1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private trackerError(Lcom/taobao/android/dinamicx/DXError;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXError;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 383
    iget-object v0, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v1, "Pipeline"

    invoke-direct {v0, v1, p2, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    iput-object p4, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 388
    iput-object p5, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    .line 389
    iget-object p2, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    .line 391
    invoke-static {p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxControlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    return-object v0
.end method

.method public getPipelineCacheManager()Lcom/taobao/android/dinamicx/DXPipelineCacheManager;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxPipelineCacheManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    return-object v0
.end method

.method public getTemplateManager()Lcom/taobao/android/dinamicx/DXTemplateManager;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    return-object v0
.end method

.method public receivedControlEvent(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V
    .locals 1

    .line 312
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getInstance()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    new-instance v0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;-><init>(Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V

    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runOnUIThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method registerControlEvents()V
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getControlEventCenter()Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DX_EVENT_PIPELINE_SCHEDULE"

    .line 306
    invoke-virtual {v0, p0, v1}, Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;->registerListener(Lcom/taobao/android/dinamicx/widget/event/IDXControlEventListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public renderInRootView(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/DXRuntimeContext;ILcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/taobao/android/dinamicx/DXRuntimeContext;",
            "I",
            "Lcom/taobao/android/dinamicx/DXRenderOptions;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->resetBindingXAnimation(Lcom/taobao/android/dinamicx/DXRootView;)V

    .line 84
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/android/dinamicx/DXRootView;->data:Lcom/alibaba/fastjson/JSONObject;

    .line 85
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/DXRootView;->setPosition(I)V

    .line 86
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getWidthSpec()I

    move-result p3

    iput p3, p1, Lcom/taobao/android/dinamicx/DXRootView;->parentWidthSpec:I

    .line 87
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getHeightSpec()I

    move-result p3

    iput p3, p1, Lcom/taobao/android/dinamicx/DXRootView;->parentHeightSpec:I

    .line 88
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p3

    iput-object p3, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getFlattenWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p3, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p3}, Lcom/taobao/android/dinamicx/DXResult;-><init>()V

    if-eqz p1, :cond_1

    .line 94
    instance-of p4, p1, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz p4, :cond_1

    .line 95
    nop

    nop

    invoke-virtual {p3, p1}, Lcom/taobao/android/dinamicx/DXResult;->setResult(Ljava/lang/Object;)V

    .line 98
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p3
.end method

.method public renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;)Landroid/view/View;
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const-string v11, "Pipeline_Stage_Render_Error_Downgrade"

    const-string v12, "Pipeline"

    .line 114
    invoke-direct {v8, v10}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->checkNeedCancel(Lcom/taobao/android/dinamicx/DXRenderOptions;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    return-object v13

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getFromStage()I

    move-result v0

    .line 123
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getToStage()I

    move-result v15

    .line 124
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getWidthSpec()I

    move-result v6

    .line 125
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getHeightSpec()I

    move-result v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getPipelineCacheManager()Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v16, 0x0

    const/4 v2, 0x1

    if-eqz v5, :cond_1

    move-object/from16 v1, p1

    .line 130
    :try_start_1
    invoke-virtual {v5, v1, v10}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->needReadExpandedWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRenderOptions;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 131
    invoke-virtual {v5, v9, v7}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->readExpandedWidgetNode(Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/view/View;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_2

    move-object v14, v7

    move-object/from16 v19, v13

    move-object/from16 v1, v17

    const/4 v0, 0x5

    const/16 v17, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v14, v7

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v14, v7

    goto/16 :goto_c

    :cond_1
    move-object/from16 v1, p1

    :cond_2
    move-object v14, v7

    move-object/from16 v19, v13

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v13, p2

    :goto_1
    const/4 v3, 0x4

    if-gt v0, v15, :cond_17

    .line 140
    :try_start_2
    invoke-direct {v8, v10}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->checkNeedCancel(Lcom/taobao/android/dinamicx/DXRenderOptions;)Z

    move-result v21

    if-nez v21, :cond_17

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    move/from16 v23, v15

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v25, 0x5

    move-object v15, v1

    move v13, v6

    goto/16 :goto_9

    :cond_3
    if-eqz v13, :cond_4

    .line 244
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 245
    iget-object v2, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxRenderManager:Lcom/taobao/android/dinamicx/DXRenderManager;

    invoke-virtual {v2, v1, v13, v7, v9}, Lcom/taobao/android/dinamicx/DXRenderManager;->renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Landroid/view/View;

    move-result-object v14

    const-string v20, "Pipeline_Stage_Render_Widget"

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    sub-long v22, v24, v22

    const/16 v24, 0x0

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    const/16 v21, 0x1

    move-object/from16 v2, p4

    const/16 v25, 0x5

    move-object/from16 v3, v20

    move v7, v4

    move-object v10, v5

    move-wide/from16 v4, v22

    move-object/from16 p1, v13

    move v13, v6

    move-object/from16 v6, v24

    .line 246
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    move-object/from16 v20, p1

    move/from16 v23, v15

    move-object/from16 v1, v26

    goto/16 :goto_6

    :cond_4
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    const/16 v21, 0x1

    const/16 v25, 0x5

    move v13, v6

    move/from16 v23, v15

    const/16 v18, 0x0

    move-object v15, v1

    goto/16 :goto_9

    :cond_5
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    const/16 v21, 0x1

    const/16 v25, 0x5

    move v13, v6

    move-object v6, v1

    if-eqz v6, :cond_7

    .line 227
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 229
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    if-eqz v3, :cond_6

    .line 230
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isDisabledFlatten()Z

    move-result v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 232
    :goto_2
    iget-object v4, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-virtual {v4, v6, v9, v3}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;

    move-result-object v20

    const-string v3, "Pipeline_Stage_FLatten_Widget"

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v23, v15

    move-object v15, v6

    move-object/from16 v6, v22

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_5

    :cond_7
    move/from16 v23, v15

    move-object v15, v6

    goto/16 :goto_8

    :cond_8
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    move/from16 v23, v15

    const/16 v21, 0x1

    const/16 v25, 0x5

    move-object v15, v1

    move v13, v6

    if-eqz v15, :cond_16

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 207
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-virtual {v3, v15, v9}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 209
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 210
    new-instance v3, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v4

    iput-object v4, v3, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 212
    iget-object v4, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-eqz v10, :cond_a

    .line 216
    invoke-virtual {v10, v15, v3}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->buildPipelineCacheObj(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXError;)Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;

    move-result-object v19

    :cond_a
    const-string v3, "Pipeline_Stage_Layout_Widget"

    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 218
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_4

    :cond_b
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    move/from16 v23, v15

    const/16 v21, 0x1

    const/16 v25, 0x5

    move-object v15, v1

    move v13, v6

    if-eqz v15, :cond_16

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 195
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-virtual {v3, v15, v13, v7, v9}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IILcom/taobao/android/dinamicx/DXRuntimeContext;)V

    const-string v3, "Pipeline_Stage_Measure_Widget"

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 196
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_8

    :cond_c
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    move/from16 v23, v15

    const/16 v21, 0x1

    const/16 v25, 0x5

    move-object v15, v1

    move v13, v6

    if-eqz v15, :cond_16

    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 183
    iget-object v3, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXTemplateParser;

    invoke-virtual {v3, v15, v9}, Lcom/taobao/android/dinamicx/DXTemplateParser;->parseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v15

    const-string v3, "Pipeline_Stage_Parse_Widget"

    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 184
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    :goto_4
    move-object/from16 v20, p1

    :goto_5
    move-object v1, v15

    :goto_6
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_d
    move v7, v4

    move-object v10, v5

    move-object/from16 p1, v13

    move/from16 v23, v15

    const/16 v21, 0x1

    const/16 v25, 0x5

    move-object v15, v1

    move v13, v6

    if-nez v15, :cond_16

    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getTemplateManager()Lcom/taobao/android/dinamicx/DXTemplateManager;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_10

    .line 275
    instance-of v0, v14, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v0, :cond_e

    .line 276
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    if-nez v0, :cond_e

    .line 277
    nop

    nop

    if-eqz v14, :cond_e

    .line 278
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/DXRootView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 281
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 283
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x15f94

    invoke-direct {v1, v12, v11, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 286
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 289
    invoke-direct {v8, v9}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 292
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 293
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_f
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_10
    :try_start_3
    invoke-virtual {v3, v9}, Lcom/taobao/android/dinamicx/DXTemplateManager;->getTemplateWT(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    if-nez v3, :cond_14

    .line 155
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    if-nez v0, :cond_11

    .line 156
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    const-string v3, "Pipeline_Render"

    const v4, 0x9c42

    const-string/jumbo v5, "\u83b7\u53d6\u539f\u578b\u6811\u5931\u8d25"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerError(Lcom/taobao/android/dinamicx/DXError;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Z)V

    goto :goto_7

    .line 161
    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    const-string v3, "Pipeline_Render"

    const v4, 0x9c46

    const-string/jumbo v5, "\u5f02\u6b65\u83b7\u53d6\u539f\u578b\u6811\u5931\u8d25"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerError(Lcom/taobao/android/dinamicx/DXError;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 275
    :goto_7
    instance-of v0, v14, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v0, :cond_12

    .line 276
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    if-nez v0, :cond_12

    .line 277
    nop

    nop

    if-eqz v14, :cond_12

    .line 278
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/DXRootView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 281
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 283
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x15f94

    invoke-direct {v1, v12, v11, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 286
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 289
    invoke-direct {v8, v9}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 292
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 293
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_13
    const/16 v18, 0x0

    return-object v18

    :cond_14
    const/16 v18, 0x0

    .line 168
    :try_start_4
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 169
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 170
    iget-object v4, v9, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v5, v5, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_15
    invoke-virtual {v3, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->deepClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v15

    const-string v3, "Pipeline_Stage_Get_Template_Widget"

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 173
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_9

    :cond_16
    :goto_8
    const/16 v18, 0x0

    :goto_9
    move-object/from16 v20, p1

    move-object v1, v15

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    move-object v5, v10

    move v6, v13

    move-object/from16 v13, v20

    move/from16 v15, v23

    const/4 v2, 0x1

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_17
    move-object v15, v1

    move-object v10, v5

    if-eqz v10, :cond_18

    if-nez v17, :cond_18

    if-eqz v15, :cond_18

    .line 260
    iget-object v1, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isUsePipelineCache()Z

    move-result v1

    if-eqz v1, :cond_18

    if-lt v0, v3, :cond_18

    move-object/from16 v13, v19

    if-eqz v13, :cond_18

    .line 262
    invoke-virtual {v10, v9, v13}, Lcom/taobao/android/dinamicx/DXPipelineCacheManager;->putExpandWidgetLruCache(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 275
    :cond_18
    instance-of v0, v14, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v0, :cond_19

    .line 276
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    if-nez v0, :cond_19

    .line 277
    move-object v0, v14

    nop

    nop

    if-eqz v0, :cond_19

    .line 278
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRootView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 281
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 283
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x15f94

    invoke-direct {v1, v12, v11, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 286
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 289
    invoke-direct {v8, v9}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 292
    :cond_19
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 293
    :goto_b
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v14, p3

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v14, p3

    .line 266
    :goto_c
    :try_start_5
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    :cond_1a
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    const-string v3, "Pipeline_Render"

    const v4, 0x9c43

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->trackerError(Lcom/taobao/android/dinamicx/DXError;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 275
    instance-of v0, v14, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v0, :cond_1b

    .line 276
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v0

    if-nez v0, :cond_1b

    .line 277
    move-object v0, v14

    nop

    nop

    if-eqz v0, :cond_1b

    .line 278
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRootView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 281
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 283
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x15f94

    invoke-direct {v1, v12, v11, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 286
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 289
    invoke-direct {v8, v9}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 292
    :cond_1b
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_b

    :cond_1c
    :goto_d
    return-object v14

    :catchall_2
    move-exception v0

    .line 275
    :goto_e
    instance-of v1, v14, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v1, :cond_1d

    .line 276
    invoke-virtual/range {p5 .. p5}, Lcom/taobao/android/dinamicx/DXRenderOptions;->getRenderType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 277
    nop

    nop

    if-eqz v14, :cond_1d

    .line 278
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/DXRootView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 281
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    iget-object v2, v8, Lcom/taobao/android/dinamicx/DXRenderPipeline;->bizType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 283
    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x15f94

    invoke-direct {v2, v12, v11, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/DXError;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 286
    iget-object v3, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 289
    invoke-direct {v8, v9}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->executeDowngrade(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 292
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 293
    invoke-virtual/range {p4 .. p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    :cond_1e
    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method protected trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRuntimeContext;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 369
    :try_start_0
    iget-object v1, p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->bizType:Ljava/lang/String;

    const-string v2, "Pipeline"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    :goto_0
    move-object v4, p1

    long-to-double v6, p3

    const/4 v8, 0x1

    move-object v3, p2

    move-object v5, p5

    .line 369
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 374
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 375
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
