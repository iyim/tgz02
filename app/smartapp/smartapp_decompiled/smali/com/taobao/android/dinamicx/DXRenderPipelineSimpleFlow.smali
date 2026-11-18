.class public Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;
.super Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;
.source "DXRenderPipelineSimpleFlow.java"


# instance fields
.field dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

.field dxRenderManager:Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

.field dxTemplateParser:Lcom/taobao/android/dinamicx/DXWidgetNodeParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;-><init>()V

    .line 16
    new-instance v0, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    .line 17
    new-instance v0, Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXLayoutManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    .line 18
    new-instance v0, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxRenderManager:Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;-><init>(Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;)V

    .line 24
    new-instance p1, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    .line 25
    new-instance p1, Lcom/taobao/android/dinamicx/DXLayoutManager;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/DXLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    .line 26
    new-instance p1, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxRenderManager:Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

    return-void
.end method


# virtual methods
.method protected onDiff()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXEngineContext;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->isDisabledFlatten()Z

    move-result v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onLayout()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 61
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onMeasure()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxLayoutManager:Lcom/taobao/android/dinamicx/DXLayoutManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget v2, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widthSpec:I

    iget v3, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->heightSpec:I

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/android/dinamicx/DXLayoutManager;->performMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IILcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 51
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onParse()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-nez v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->pipelineMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseInMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxTemplateParser:Lcom/taobao/android/dinamicx/DXWidgetNodeParser;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0

    .line 32
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onRender()Landroid/view/View;
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->dxRenderManager:Lcom/taobao/android/dinamicx/DXSimpleRenderManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->rootView:Landroid/view/View;

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;->renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
