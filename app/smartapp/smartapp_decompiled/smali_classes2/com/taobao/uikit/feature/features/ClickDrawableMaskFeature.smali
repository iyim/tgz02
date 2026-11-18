.class public Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "ClickDrawableMaskFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;
.implements Lcom/taobao/uikit/feature/callback/TouchEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ImageView;",
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

    .line 19
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private invalidateHost()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private requestLayoutHost()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

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
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    .locals 2

    .line 49
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskEnable:Z

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 55
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mIsPressed:Z

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskEnable:Z

    if-eqz v0, :cond_2

    .line 96
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

    .line 105
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mIsPressed:Z

    .line 106
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->requestLayoutHost()V

    .line 107
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->invalidateHost()V

    goto :goto_0

    .line 99
    :cond_1
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mIsPressed:Z

    .line 100
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->requestLayoutHost()V

    .line 101
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->invalidateHost()V

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskEnable:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mIsPressed:Z

    const/high16 v0, 0x77000000

    .line 33
    iput v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskColor:I

    if-eqz p2, :cond_0

    .line 36
    sget-object v0, Lcom/taobao/uikit/R$styleable;->ClickDrawableMaskFeature:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    sget p2, Lcom/taobao/uikit/R$styleable;->ClickDrawableMaskFeature_uik_clickMaskColor:I

    iget v0, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskColor:I

    .line 40
    sget p2, Lcom/taobao/uikit/R$styleable;->ClickDrawableMaskFeature_uik_clickMaskEnable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskEnable:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public setClickMaskColor(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskColor:I

    .line 131
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->invalidateHost()V

    return-void
.end method

.method public setClickMaskEnable(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->mClickMaskEnable:Z

    .line 140
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ClickDrawableMaskFeature;->invalidateHost()V

    return-void
.end method
