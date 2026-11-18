.class public Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;
.super Lcom/taobao/android/dinamicx/DXRenderPipelineBase;
.source "DXSimpleRenderPipeline.java"


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DXRenderPipelineBase;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;ILjava/lang/String;)V

    .line 15
    new-instance p1, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/DXRenderPipelineSimpleFlow;-><init>()V

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->setPipelineFlow(Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;)V

    return-void
.end method


# virtual methods
.method public renderWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;IIIII)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 50
    new-instance p3, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p3, p9}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    :cond_1
    iget-object p9, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->identifier:Ljava/lang/String;

    invoke-virtual {p4, p9}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setPipelineIdentifier(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1, p5}, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->getPipelineStageInWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result p5

    .line 57
    iget-object p9, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput p7, p9, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widthSpec:I

    .line 58
    iget-object p7, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput p8, p7, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->heightSpec:I

    .line 59
    iget-object p7, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p3, p7, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->rootView:Landroid/view/View;

    .line 60
    iget-object p7, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p4, p7, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 61
    iget-object p4, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p1, p4, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 62
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p2, p1, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 63
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    const/4 p2, 0x0

    iput p2, p1, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->pipelineMode:I

    .line 65
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    invoke-virtual {p1, p5, p6}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->run(II)V

    return-object p3
.end method

.method public sizeWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;III)Lcom/taobao/android/dinamicx/ItemSize;
    .locals 1

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/taobao/android/dinamicx/ItemSize;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/taobao/android/dinamicx/ItemSize;-><init>(II)V

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 24
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result p3

    :cond_1
    if-nez p4, :cond_2

    .line 25
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result p4

    .line 27
    :cond_2
    iget-object p5, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->identifier:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setPipelineIdentifier(Ljava/lang/String;)V

    const/4 p5, 0x2

    .line 29
    invoke-virtual {p0, p1, p5}, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->getPipelineStageInWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result p5

    .line 31
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 32
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput p3, v0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widthSpec:I

    .line 33
    iget-object p3, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput p4, p3, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->heightSpec:I

    .line 34
    iget-object p3, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    iput-object p2, p3, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 35
    iget-object p2, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    const/4 p3, 0x1

    iput p3, p2, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->pipelineMode:I

    .line 37
    iget-object p2, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->pipelineFlow:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;

    const/4 p3, 0x3

    invoke-virtual {p2, p5, p3}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->run(II)V

    .line 39
    new-instance p2, Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/taobao/android/dinamicx/ItemSize;-><init>(II)V

    return-object p2
.end method
