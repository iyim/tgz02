.class public Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DXScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

.field private context:Landroid/content/Context;

.field protected dataSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field private disAppearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

.field private needSetLayoutParams:Z

.field private scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

.field private simpleRenderPipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)V
    .locals 3

    .line 246
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->needSetLayoutParams:Z

    .line 239
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    const-wide v1, -0x7c8ecad46db9e341L    # -4.310890008164946E-292

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    .line 242
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    const-wide v1, -0x482f1de1960621feL    # -7.752420407638896E-40

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->disAppearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    .line 247
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->simpleRenderPipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    .line 248
    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->context:Landroid/content/Context;

    .line 249
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    return-void
.end method

.method private cloneDxRuntimeContextResetError(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 325
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    .line 327
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 329
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p1
.end method

.method private setRecyclerViewParams(ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 338
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingTop()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingRight()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingTop()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p2, v1, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 344
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    .line 346
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingRight()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 348
    :cond_4
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p2, p1, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public isNeedSetLayoutParams()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->needSetLayoutParams:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 265
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->getItem(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v10

    .line 267
    move-object v11, p1

    check-cast v11, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;

    .line 270
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->needSetLayoutParams:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, v11, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 272
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    .line 273
    nop

    nop

    .line 274
    invoke-direct {p0, p2, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setRecyclerViewParams(ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 277
    iget-object v1, v11, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-direct {p0, p2, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setRecyclerViewParams(ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 282
    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-ne v0, v10, :cond_3

    .line 287
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->setItemIndex(I)V

    .line 288
    invoke-virtual {v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {v10, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    .line 293
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 294
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1, v10}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->addAppearWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    return-void

    .line 298
    :cond_3
    invoke-direct {p0, v10}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->cloneDxRuntimeContextResetError(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v12

    .line 300
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->simpleRenderPipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x2

    const/16 v6, 0x8

    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget v7, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->oldWidthMeasureSpec:I

    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget v8, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->oldHeightMeasureSpec:I

    move-object v1, v10

    move-object v4, v12

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;->renderWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Landroid/view/View;Lcom/taobao/android/dinamicx/DXRuntimeContext;IIIII)Landroid/view/View;

    .line 305
    invoke-virtual {v12}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->hasError()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 306
    invoke-virtual {v12}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;Z)V

    .line 309
    :cond_4
    iput-object v10, v11, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 313
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->setItemIndex(I)V

    .line 314
    invoke-virtual {v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 315
    invoke-virtual {v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 318
    :cond_5
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {v10, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    .line 319
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->appearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 320
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1, v10}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->addAppearWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 258
    new-instance p1, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance p2, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->disAppearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->setItemIndex(I)V

    .line 384
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->disAppearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 385
    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;

    .line 386
    iget-object v0, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->disAppearViewEvent:Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    .line 387
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter$ItemViewHolder;->itemWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->removeAppearWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    return-void
.end method

.method public setDataSource(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->dataSource:Ljava/util/ArrayList;

    return-void
.end method

.method public setNeedSetLayoutParams(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->needSetLayoutParams:Z

    return-void
.end method
