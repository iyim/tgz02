.class public Lcom/taobao/uikit/feature/view/TScrollView;
.super Landroid/widget/ScrollView;
.source "TScrollView.java"

# interfaces
.implements Lcom/taobao/uikit/feature/view/ViewHelper;
.implements Lcom/taobao/uikit/feature/view/ViewGroupHelper;
.implements Lcom/taobao/uikit/utils/IFeatureList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lcom/taobao/uikit/feature/view/ViewHelper;",
        "Lcom/taobao/uikit/feature/view/ViewGroupHelper;",
        "Lcom/taobao/uikit/utils/IFeatureList<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHierarchyChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup$OnHierarchyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/view/TScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/feature/view/TScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mOnHierarchyChangeListeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mScrollable:Z

    .line 45
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Lcom/taobao/uikit/feature/view/TScrollView$1;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/feature/view/TScrollView$1;-><init>(Lcom/taobao/uikit/feature/view/TScrollView;)V

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/view/TScrollView;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mOnHierarchyChangeListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/ScrollView;",
            ">;)Z"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    move-result p1

    return p1
.end method

.method public clearFeatures()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 335
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 336
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v3, :cond_0

    .line 338
    check-cast v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    invoke-interface {v2}, Lcom/taobao/uikit/feature/callback/ScrollCallback;->beforeComputeScroll()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 343
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 344
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v2, :cond_2

    .line 346
    check-cast v1, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    invoke-interface {v1}, Lcom/taobao/uikit/feature/callback/ScrollCallback;->afterComputeScroll()V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 160
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 162
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 168
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 170
    check-cast v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v1, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 235
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_0

    .line 237
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 243
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 244
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_2

    .line 246
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 136
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 138
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 144
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 145
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 147
    check-cast v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v1, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->afterDraw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;JI)Z
    .locals 0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/ScrollView;",
            ">;>;)",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public isScrollable()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mScrollable:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;III)V
    .locals 0

    .line 306
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->measureChild(Landroid/view/View;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 181
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 182
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 184
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeOnDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 191
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 192
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 194
    check-cast v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v1, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->afterOnDraw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 258
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 259
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v3, :cond_0

    .line 261
    check-cast v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/taobao/uikit/feature/callback/FocusCallback;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 267
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 268
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v2, :cond_2

    .line 270
    check-cast v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/uikit/feature/callback/FocusCallback;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 316
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 320
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 321
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;

    if-eqz v3, :cond_0

    .line 323
    check-cast v2, Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 113
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    if-eqz v3, :cond_0

    .line 115
    move-object v4, v2

    check-cast v4, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/taobao/uikit/feature/callback/LayoutCallback;->beforeOnLayout(ZIIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 121
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 122
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    if-eqz v2, :cond_2

    .line 124
    move-object v3, v1

    check-cast v3, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/taobao/uikit/feature/callback/LayoutCallback;->afterOnLayout(ZIIII)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 90
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    if-eqz v3, :cond_0

    .line 92
    check-cast v2, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    invoke-interface {v2, p1, p2}, Lcom/taobao/uikit/feature/callback/MeasureCallback;->beforeOnMeasure(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 98
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 99
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    if-eqz v2, :cond_2

    .line 101
    check-cast v1, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    invoke-interface {v1, p1, p2}, Lcom/taobao/uikit/feature/callback/MeasureCallback;->afterOnMeasure(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 356
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 357
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v3, :cond_0

    .line 359
    check-cast v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/callback/ScrollCallback;->beforeOnScrollChanged(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 365
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 366
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v2, :cond_2

    .line 368
    check-cast v1, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/callback/ScrollCallback;->afterOnScrollChanged(IIII)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v2}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 206
    instance-of v4, v3, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v4, :cond_0

    .line 208
    check-cast v3, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v3, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-boolean v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mScrollable:Z

    if-eqz v2, :cond_2

    .line 215
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 219
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 220
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_3

    .line 222
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 281
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 282
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v3, :cond_0

    .line 284
    check-cast v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/FocusCallback;->beforeOnWindowFocusChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onWindowFocusChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 290
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 291
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v2, :cond_2

    .line 293
    check-cast v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    invoke-interface {v1, p1}, Lcom/taobao/uikit/feature/callback/FocusCallback;->afterOnWindowFocusChanged(Z)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeFeature(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/ScrollView;",
            ">;>;)Z"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    if-nez v0, :cond_0

    .line 377
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    return-void

    .line 381
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 383
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 384
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;

    if-eqz v3, :cond_1

    .line 386
    check-cast v2, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;->beforeSetClipToPadding(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 392
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 393
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;

    if-eqz v2, :cond_3

    .line 395
    check-cast v1, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;

    invoke-interface {v1, p1}, Lcom/taobao/uikit/feature/callback/SetClipToPaddingCallBack;->afterSetClipToPadding(Z)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setMeasuredDimension(JJ)V
    .locals 0

    long-to-int p2, p1

    long-to-int p1, p3

    .line 301
    invoke-super {p0, p2, p1}, Landroid/widget/ScrollView;->setMeasuredDimension(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mOnHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/view/TScrollView;->mScrollable:Z

    return-void
.end method
