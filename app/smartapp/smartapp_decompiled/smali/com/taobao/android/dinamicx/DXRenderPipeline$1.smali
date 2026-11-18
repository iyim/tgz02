.class Lcom/taobao/android/dinamicx/DXRenderPipeline$1;
.super Ljava/lang/Object;
.source "DXRenderPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/DXRenderPipeline;->receivedControlEvent(Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/DXRenderPipeline;

.field final synthetic val$event:Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;->this$0:Lcom/taobao/android/dinamicx/DXRenderPipeline;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;->val$event:Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 315
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;->val$event:Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    move-object v1, v0

    nop

    nop

    .line 319
    iget-object v0, v0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    instance-of v0, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v0, :cond_1

    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;->val$event:Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/widget/event/DXControlEvent;->sender:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v3, :cond_2

    return-void

    .line 326
    :cond_2
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 331
    :cond_3
    iget v2, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->renderType:I

    if-eqz v2, :cond_4

    return-void

    .line 334
    :cond_4
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    .line 339
    :cond_5
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v4, v5, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-virtual {v2, v4}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iget-object v4, v5, Lcom/taobao/android/dinamicx/DXRootView;->data:Lcom/alibaba/fastjson/JSONObject;

    if-eq v2, v4, :cond_6

    goto :goto_0

    .line 345
    :cond_6
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v6

    .line 346
    new-instance v2, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    invoke-direct {v2}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;-><init>()V

    const/4 v4, 0x1

    .line 347
    invoke-virtual {v2, v4}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withIsControlEvent(Z)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v2

    iget v1, v1, Lcom/taobao/android/dinamicx/widget/event/DXPipelineScheduleEvent;->stage:I

    invoke-virtual {v2, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withFromStage(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v1

    .line 348
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootWidthSpec()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withWidthSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootHeightSpec()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withHeightSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 350
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->withToStage(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->build()Lcom/taobao/android/dinamicx/DXRenderOptions;

    move-result-object v7

    .line 351
    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXRenderPipeline$1;->this$0:Lcom/taobao/android/dinamicx/DXRenderPipeline;

    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/DXRootView;->getFlattenWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/DXRenderPipeline;->renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;)Landroid/view/View;

    :cond_7
    :goto_0
    return-void
.end method
