.class public Lcom/taobao/android/dinamicx/widget/DXLayout;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXLayout.java"


# instance fields
.field disableFlatten:Z

.field private listData:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getChildMeasureSpec(III)I
    .locals 5

    .line 114
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 115
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 118
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_0

    goto :goto_3

    :cond_0
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    goto :goto_5

    :cond_2
    if-ne p2, v1, :cond_9

    goto :goto_2

    :cond_3
    if-ltz p2, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, v2, :cond_5

    :goto_0
    goto :goto_4

    :cond_5
    if-ne p2, v1, :cond_9

    goto :goto_0

    :cond_6
    if-ltz p2, :cond_7

    :goto_1
    move p0, p2

    goto :goto_5

    :cond_7
    if-ne p2, v2, :cond_8

    :goto_2
    const/high16 v4, -0x80000000

    goto :goto_5

    :cond_8
    if-ne p2, v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    const/4 p0, 0x0

    :goto_4
    const/4 v4, 0x0

    .line 180
    :goto_5
    invoke-static {p0, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected bindContext(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/Object;I)V
    .locals 1

    .line 330
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubData(Ljava/lang/Object;)V

    .line 331
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubdataIndex(I)V

    .line 332
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getSourceWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setSourceWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 341
    invoke-virtual {p0, v0, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLayout;->bindContext(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    iget v0, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p2
.end method

.method public getListData()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public isClipChildren()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->clipChildren:Z

    return v0
.end method

.method public isDisableFlatten()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->disableFlatten:Z

    return v0
.end method

.method public isHandleListData()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V
    .locals 2

    .line 47
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->paddingLeft:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->paddingRight:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget p3, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    invoke-static {p2, v0, p3}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 50
    iget p3, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->paddingTop:I

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->paddingBottom:I

    add-int/2addr p3, v0

    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr p3, v0

    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr p3, v0

    add-int/2addr p3, p5

    iget p5, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    invoke-static {p4, p3, p5}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    return-void
.end method

.method public onBeforeBindChildData()V
    .locals 8

    .line 289
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_4

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 302
    :goto_0
    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 303
    iget-object v4, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 306
    invoke-virtual {p0, v6, v4, v3}, Lcom/taobao/android/dinamicx/widget/DXLayout;->bindContext(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/Object;I)V

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 313
    invoke-virtual {v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v7

    .line 314
    invoke-virtual {v7, v4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubData(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v7, v3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubdataIndex(I)V

    .line 317
    invoke-static {v6, v7}, Lcom/taobao/android/dinamicx/widget/DXLayoutUtil;->deepCopyChildNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v6

    .line 318
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 323
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 324
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p0, v3, v2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void

    .line 293
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;->removeAllChild()V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 215
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXLayout;

    if-nez p2, :cond_0

    return-void

    .line 218
    :cond_0
    nop

    nop

    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXLayout;->disableFlatten:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->disableFlatten:Z

    .line 219
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 228
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 230
    move-object v0, p2

    nop

    nop

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    iget-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->clipChildren:Z

    if-eq v1, v2, :cond_2

    .line 231
    iget-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->clipChildren:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0

    .line 234
    :cond_1
    move-object v0, p2

    nop

    nop

    iget-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->clipChildren:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 237
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, -0x67e26e05b59ff950L

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->disableFlatten:Z

    goto :goto_1

    .line 76
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_1
    return-void
.end method

.method protected onSetListAttribute(JLcom/alibaba/fastjson/JSONArray;)V
    .locals 3

    const-wide v0, 0x3d0ef583b40ffc3eL    # 1.374857600385809E-14

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 84
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 85
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetListAttribute(JLcom/alibaba/fastjson/JSONArray;)V

    :goto_0
    return-void
.end method

.method setAccessibility(Landroid/view/View;)V
    .locals 3

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 243
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 248
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibility:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibilityText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibilityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    :cond_2
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibility:I

    if-ne v0, v2, :cond_3

    .line 259
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 261
    :cond_3
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 264
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_5
    const-string v0, ""

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->clipChildren:Z

    return-void
.end method

.method public setDisableFlatten(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->disableFlatten:Z

    return-void
.end method

.method public setListData(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 279
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXLayout;->propertyInitFlag:I

    return-void
.end method
