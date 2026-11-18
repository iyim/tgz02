.class public Lcom/taobao/android/dinamicx/DXPrefetchTask;
.super Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;
.source "DXPrefetchTask.java"


# instance fields
.field public isDone:Z


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;-><init>(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 22
    invoke-super {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->run()V

    .line 24
    :try_start_0
    sget-object v0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->pipelineThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DXRenderPipeline;

    if-eqz v0, :cond_1

    .line 25
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-wide v1, v1, Lcom/taobao/android/dinamicx/DXEngineConfig;->engineId:J

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/taobao/android/dinamicx/DXEngineConfig;->engineId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Lcom/taobao/android/dinamicx/DXTemplateManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/DXTemplateManager;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;Landroid/content/Context;)V

    .line 27
    new-instance v1, Lcom/taobao/android/dinamicx/DXRenderPipeline;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    invoke-direct {v1, v2, v0}, Lcom/taobao/android/dinamicx/DXRenderPipeline;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/DXTemplateManager;)V

    .line 28
    sget-object v0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->pipelineThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v2, v1

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setDxRenderPipeline(Ljava/lang/ref/WeakReference;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 32
    iget-object v6, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    iget-object v7, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->options:Lcom/taobao/android/dinamicx/DXRenderOptions;

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;)Landroid/view/View;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXPrefetchTask;->isDone:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
