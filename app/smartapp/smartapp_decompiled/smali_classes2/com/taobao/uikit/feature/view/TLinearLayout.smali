.class public Lcom/taobao/uikit/feature/view/TLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TLinearLayout.java"

# interfaces
.implements Lcom/taobao/uikit/feature/view/ViewHelper;
.implements Lcom/taobao/uikit/feature/view/ViewGroupHelper;
.implements Lcom/taobao/uikit/utils/IFeatureList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/taobao/uikit/feature/view/ViewHelper;",
        "Lcom/taobao/uikit/feature/view/ViewGroupHelper;",
        "Lcom/taobao/uikit/utils/IFeatureList<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/feature/view/TLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 34
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/LinearLayout;",
            ">;)Z"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    move-result p1

    return p1
.end method

.method public clearFeatures()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 272
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 273
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v3, :cond_0

    .line 274
    check-cast v2, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    invoke-interface {v2}, Lcom/taobao/uikit/feature/callback/ScrollCallback;->beforeComputeScroll()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 279
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 280
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/ScrollCallback;

    if-eqz v2, :cond_2

    .line 281
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

    .line 114
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 117
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 118
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 123
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 124
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 125
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

    .line 175
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 178
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_0

    .line 179
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 185
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 186
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_2

    .line 187
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

    .line 93
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 95
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 96
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 97
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 103
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 104
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 105
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

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

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
            "Landroid/widget/LinearLayout;",
            ">;>;)",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public measureChild(Landroid/view/View;III)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 136
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v3, :cond_0

    .line 137
    check-cast v2, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/CanvasCallback;->beforeOnDraw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 144
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 145
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/CanvasCallback;

    if-eqz v2, :cond_2

    .line 146
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

    .line 197
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 200
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v3, :cond_0

    .line 201
    check-cast v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/taobao/uikit/feature/callback/FocusCallback;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 208
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 209
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v2, :cond_2

    .line 210
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

    .line 255
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 258
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 259
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;

    if-eqz v3, :cond_0

    .line 260
    check-cast v2, Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;

    .line 261
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

    .line 71
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 74
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    if-eqz v3, :cond_0

    .line 75
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

    .line 79
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 82
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 83
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/LayoutCallback;

    if-eqz v2, :cond_2

    .line 84
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

    .line 48
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 51
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    if-eqz v3, :cond_0

    .line 52
    check-cast v2, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    invoke-interface {v2, p1, p2}, Lcom/taobao/uikit/feature/callback/MeasureCallback;->beforeOnMeasure(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 59
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 60
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    if-eqz v2, :cond_2

    .line 61
    check-cast v1, Lcom/taobao/uikit/feature/callback/MeasureCallback;

    invoke-interface {v1, p1, p2}, Lcom/taobao/uikit/feature/callback/MeasureCallback;->afterOnMeasure(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 156
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 157
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_0

    .line 158
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 164
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 165
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    if-eqz v3, :cond_2

    .line 166
    check-cast v2, Lcom/taobao/uikit/feature/callback/TouchEventCallback;

    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/TouchEventCallback;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v2, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 222
    instance-of v3, v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v3, :cond_0

    .line 223
    check-cast v2, Lcom/taobao/uikit/feature/callback/FocusCallback;

    .line 224
    invoke-interface {v2, p1}, Lcom/taobao/uikit/feature/callback/FocusCallback;->beforeOnWindowFocusChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 230
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v1, v0}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 231
    instance-of v2, v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    if-eqz v2, :cond_2

    .line 232
    check-cast v1, Lcom/taobao/uikit/feature/callback/FocusCallback;

    .line 233
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
            "Landroid/widget/LinearLayout;",
            ">;>;)Z"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TLinearLayout;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(JJ)V
    .locals 0

    long-to-int p2, p1

    long-to-int p1, p3

    .line 240
    invoke-super {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
