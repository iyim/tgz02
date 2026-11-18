.class public Lcom/taobao/android/dinamicx/DXRootView;
.super Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;
.source "DXRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;
    }
.end annotation


# instance fields
.field animationWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field bindingXManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;",
            ">;"
        }
    .end annotation
.end field

.field data:Lcom/alibaba/fastjson/JSONObject;

.field dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

.field parentHeightSpec:I

.field parentWidthSpec:I

.field private position:I

.field rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/DXRootView;->setExpandWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    return-void
.end method


# virtual methods
.method public _addAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public _clearAnimationWidgets()V
    .locals 1

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    return-void
.end method

.method public _containAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public _getAnimationWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    return-object v0
.end method

.method public _removeAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->animationWidgets:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->dispatchWindowVisibilityChanged(I)V

    .line 213
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->dispatchWindowVisibilityChanged(Lcom/taobao/android/dinamicx/DXRootView;I)V

    :cond_0
    return-void
.end method

.method public getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->bindingXManagerWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    return-object v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->data:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-object v0
.end method

.method public getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 77
    sget v0, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/DXRootView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method public getFlattenWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 85
    sget v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/DXRootView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->position:I

    return v0
.end method

.method public hasDXRootViewLifeCycle()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onAttachedToWindow()V

    .line 249
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onAttachedToWindow(Lcom/taobao/android/dinamicx/DXRootView;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 238
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onDetachedFromWindow()V

    .line 240
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onDetachedFromWindow(Lcom/taobao/android/dinamicx/DXRootView;)V

    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onFinishTemporaryDetach()V

    .line 267
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onFinishTemporaryDetach(Lcom/taobao/android/dinamicx/DXRootView;)V

    :cond_0
    return-void
.end method

.method onRootViewAppear(I)V
    .locals 3

    .line 165
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXViewAppearEvent;

    const-wide v1, 0x4965225aadb79e3eL    # 3.7704665857095116E45

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewAppearEvent;-><init>(J)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/expression/event/DXViewAppearEvent;->setItemIndex(I)V

    .line 168
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    return-void
.end method

.method onRootViewDisappear(I)V
    .locals 3

    .line 181
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXViewDisappearEvent;

    const-wide v1, 0x4ac97ab3686b8a81L    # 1.9065875833331544E52

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewDisappearEvent;-><init>(J)V

    .line 182
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/expression/event/DXViewDisappearEvent;->setItemIndex(I)V

    .line 184
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onStartTemporaryDetach()V

    .line 258
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p0}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onStartTemporaryDetach(Lcom/taobao/android/dinamicx/DXRootView;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 229
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 231
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->onWindowVisibilityChanged(I)V

    .line 222
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;->onWindowVisibilityChanged(Lcom/taobao/android/dinamicx/DXRootView;I)V

    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 7

    .line 111
    :try_start_0
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 112
    nop

    nop

    const-string/jumbo v0, "type"

    .line 113
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BNDX"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processDXMsg(Lcom/taobao/android/dinamicx/DXRootView;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "params"

    .line 124
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string/jumbo v2, "targetId"

    .line 129
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v3, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;

    const-wide v4, -0x184146df80afad89L    # -5.475490512988021E191

    invoke-direct {v3, v4, v5}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;-><init>(J)V

    .line 132
    invoke-virtual {v3, p1}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 133
    invoke-virtual {v3, v2}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setTargetId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->setType(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWidgetNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p1, v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {v1, v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXRootView;->getBindingXManager()Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bizType:Ljava/lang/String;

    .line 151
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "dinamicx"

    :cond_5
    move-object v1, v0

    const/4 v2, 0x0

    const v5, 0x1d8aa

    .line 157
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "DX_BindingX"

    const-string v4, "DX_BindingX_Crash"

    .line 154
    invoke-static/range {v1 .. v6}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method registerDXRootViewLifeCycle(Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRootView;->rootViewLifeCycle:Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;

    return-void
.end method

.method public setBindingXManagerWeakReference(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;)V
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXRootView;->bindingXManagerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setExpandWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    .line 81
    sget v0, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method setFlattenWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    .line 89
    sget v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setMeasureDimension(II)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRootView;->position:I

    return-void
.end method
