.class public Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "ClickViewMaskFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/view/View;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/CanvasCallback;",
        "Lcom/taobao/uikit/feature/callback/TouchEventCallback;"
    }
.end annotation


# instance fields
.field private mClickMaskColor:I

.field private mClickMaskEnable:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private invalidateHost()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private requestLayoutHost()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mIsPressed:Z

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskEnable:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mIsPressed:Z

    .line 92
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->requestLayoutHost()V

    .line 93
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->invalidateHost()V

    goto :goto_0

    .line 85
    :cond_1
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mIsPressed:Z

    .line 86
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->requestLayoutHost()V

    .line 87
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->invalidateHost()V

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 p3, 0x1

    .line 29
    iput-boolean p3, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskEnable:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mIsPressed:Z

    const/high16 v0, 0x77000000

    .line 31
    iput v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskColor:I

    if-eqz p2, :cond_0

    .line 34
    sget-object v0, Lcom/taobao/uikit/R$styleable;->ClickViewMaskFeature:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    sget p2, Lcom/taobao/uikit/R$styleable;->ClickViewMaskFeature_uik_clickMaskColor:I

    iget v0, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskColor:I

    .line 38
    sget p2, Lcom/taobao/uikit/R$styleable;->ClickViewMaskFeature_uik_clickMaskEnable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskEnable:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public setClickMaskColor(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskColor:I

    .line 117
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->invalidateHost()V

    return-void
.end method

.method public setClickMaskEnable(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->mClickMaskEnable:Z

    .line 126
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickViewMaskFeature;->invalidateHost()V

    return-void
.end method
