.class public Lcom/taobao/android/dinamicx/DXRenderManager;
.super Ljava/lang/Object;
.source "DXRenderManager.java"


# instance fields
.field protected absDiff:Lcom/taobao/android/dinamicx/render/diff/DXAbsDiff;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/taobao/android/dinamicx/render/diff/DXPipelineDiff;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/render/diff/DXPipelineDiff;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRenderManager;->absDiff:Lcom/taobao/android/dinamicx/render/diff/DXAbsDiff;

    return-void
.end method

.method private getRealView(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private renderDetail(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;)V
    .locals 8

    .line 137
    invoke-virtual {p2, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRealViewLayoutParam(Landroid/view/View;)V

    .line 138
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindEvent(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setNeedRender(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 142
    :goto_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, v1

    .line 144
    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/dinamicx/DXRenderManager;->renderFlatten(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private renderFlatten(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;I)V
    .locals 2

    .line 97
    :try_start_0
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamicx/DXRenderManager;->getRealView(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 102
    sget p4, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {v0, p4, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 104
    :cond_0
    sget p4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {v0, p4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/DXRenderManager;->renderDetail(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-nez p4, :cond_2

    .line 111
    sget v1, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {v0, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 113
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/DXRenderManager;->renderDetail(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;)V

    if-eqz p4, :cond_4

    .line 114
    instance-of p2, p4, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    .line 115
    nop

    nop

    invoke-virtual {p4, v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p3

    iget-object p3, p3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 120
    new-instance p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p4, 0x15f93

    const-string p5, "Render"

    const-string v0, "Render_Fltten_Crash"

    invoke-direct {p3, p5, v0, p4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    invoke-static {p2}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    invoke-static {p2}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V
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

    const/4 v0, 0x3

    .line 165
    :try_start_0
    iget-object v1, p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    const-string v2, "Pipeline_Detail_Render_Detail"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    :goto_0
    move-object v4, p1

    long-to-double v6, p3

    const/4 v8, 0x1

    move-object v3, p2

    move-object v5, p5

    .line 165
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public renderWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Landroid/view/View;
    .locals 10

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    :try_start_0
    sget v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 50
    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXRenderManager;->absDiff:Lcom/taobao/android/dinamicx/render/diff/DXAbsDiff;

    invoke-virtual {v3, p2, v0}, Lcom/taobao/android/dinamicx/render/diff/DXAbsDiff;->diff(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    const-string v6, "Detail_RenderWidget_Diff"

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v7, v3, v1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v4 .. v9}, Lcom/taobao/android/dinamicx/DXRenderManager;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V

    .line 55
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setWRView(Ljava/lang/ref/WeakReference;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    .line 57
    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DXRenderManager;->renderFlatten(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;I)V

    .line 60
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAccessibility()I

    move-result p1

    const/4 v3, 0x3

    const/16 v4, 0x10

    if-ne p1, v3, :cond_1

    .line 61
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    const/4 p1, 0x2

    .line 66
    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 70
    :cond_2
    :goto_0
    sget p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->replaceChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    :cond_3
    const-string p1, "Detail_RenderWidget_Recursion_Render_WT"

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DXRenderManager;->trackerPerform(Lcom/taobao/android/dinamicx/DXRuntimeContext;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    if-eqz p4, :cond_4

    .line 80
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    iget-object p2, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 81
    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v0, 0x15f91

    const-string v1, "Pipeline_Detail"

    const-string v2, "Pipeline_Detail_Render_Detail"

    invoke-direct {p2, v1, v2, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DXLayoutManager#renderWidget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 86
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object p3

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
