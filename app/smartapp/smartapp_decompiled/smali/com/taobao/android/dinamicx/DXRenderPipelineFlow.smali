.class public Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;
.super Ljava/lang/Object;
.source "DXRenderPipelineFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;,
        Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$DXPipelineMode;
    }
.end annotation


# static fields
.field public static final DX_PIPELINE_MODE_RENDER:I = 0x0

.field public static final DX_PIPELINE_MODE_SIZE:I = 0x1


# instance fields
.field protected flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field private flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

.field protected heightSpec:I

.field protected pipelineMode:I

.field protected rootView:Landroid/view/View;

.field protected runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

.field protected stage:I

.field protected stageFrom:I

.field protected stageTo:I

.field protected widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field protected widthSpec:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    return-void
.end method


# virtual methods
.method protected final doDiff()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillDiff()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onDiff()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 262
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidDiff()V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillFlatten()V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 248
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidFlatten()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doLayout()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillLayout()V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onLayout()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 234
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidLayout()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doLoad()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillLoad()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onLoad()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 192
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidLoad()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doMeasure()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillMeasure()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onMeasure()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 220
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidMeasure()V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doParse()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillParse()V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onParse()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 206
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidParse()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected final doRender()Landroid/view/View;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderWillRender()V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->onRender()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->rootView:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flowListener:Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow$RenderPipelineFlowListener;->renderDidRender()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->rootView:Landroid/view/View;

    return-object v0
.end method

.method protected onDiff()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->flattenWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onLayout()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onLoad()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onMeasure()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onParse()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->widgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method protected onRender()Landroid/view/View;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public run(II)V
    .locals 3

    if-le p1, p2, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stageFrom:I

    .line 68
    iput p2, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stageTo:I

    .line 71
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stage:I

    :goto_0
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stage:I

    if-gt p1, p2, :cond_2

    .line 72
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stage:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doRender()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doDiff()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 99
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doFlatten()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 93
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doLayout()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 87
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doMeasure()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 81
    :pswitch_5
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doParse()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 75
    :pswitch_6
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->doLoad()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    iget p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->stage:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v0, 0x61a8a

    const-string v1, "Pipeline"

    const-string v2, "SIMPLE_PIPELINE_CRASH"

    invoke-direct {p2, v1, v2, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 129
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderPipelineFlow;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
