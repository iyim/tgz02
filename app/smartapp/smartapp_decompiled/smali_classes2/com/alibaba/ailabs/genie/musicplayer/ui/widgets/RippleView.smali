.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;
.super Landroid/widget/RelativeLayout;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;,
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private animationRunning:Z

.field private canvasHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private durationEmpty:I

.field private frameRate:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasToZoom:Ljava/lang/Boolean;

.field private isCentered:Ljava/lang/Boolean;

.field private onCompletionListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;

.field private originBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private radiusMax:F

.field private rippleAlpha:I

.field private rippleColor:I

.field private rippleDuration:I

.field private ripplePadding:I

.field private rippleType:Ljava/lang/Integer;

.field private final runnable:Ljava/lang/Runnable;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private timer:I

.field private timerEmpty:I

.field private x:F

.field private y:F

.field private zoomDuration:I

.field private zoomScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 63
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    const/16 p1, 0x190

    .line 64
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    const/16 p1, 0x5a

    .line 65
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    .line 69
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    .line 70
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 72
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    .line 73
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    .line 85
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    .line 63
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    const/16 v0, 0x190

    .line 64
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    const/16 v0, 0x5a

    .line 65
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    .line 69
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    .line 70
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 72
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    .line 73
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->runnable:Ljava/lang/Runnable;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 63
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    const/16 p3, 0x190

    .line 64
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    const/16 p3, 0x5a

    .line 65
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    const/4 p3, 0x0

    .line 67
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    const/4 p3, 0x0

    .line 68
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    .line 69
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    .line 70
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    const/4 p3, -0x1

    .line 71
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 72
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    .line 73
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    .line 85
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->runnable:Ljava/lang/Runnable;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;Ljava/lang/Boolean;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->sendClickEvent(Ljava/lang/Boolean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private createAnimation(FF)V
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    if-nez v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->hasToZoom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->WIDTH:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->HEIGHT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 264
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    .line 266
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->ripplePadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isCentered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    .line 273
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    goto :goto_1

    .line 269
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getMeasuredHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    .line 276
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    .line 278
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 279
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    .line 281
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->invalidate()V

    :cond_5
    return-void
.end method

.method private getCircleBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 324
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    int-to-float p1, p1

    sub-float v5, v4, p1

    float-to-int v5, v5

    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    sub-float v7, v6, p1

    float-to-int v7, v7

    add-float/2addr v4, p1

    float-to-int v4, v4

    add-float/2addr v6, p1

    float-to-int v6, v6

    invoke-direct {v3, v5, v7, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 326
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 327
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 328
    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    invoke-virtual {v1, v4, v5, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 330
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 331
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 119
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_color:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->rippelColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleColor:I

    .line 120
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_type:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    .line 121
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_zoom:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->hasToZoom:Ljava/lang/Boolean;

    .line 122
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_centered:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isCentered:Ljava/lang/Boolean;

    .line 123
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_rippleDuration:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    .line 124
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_framerate:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    .line 125
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_alpha:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    .line 126
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_ripplePadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->ripplePadding:I

    .line 127
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->canvasHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 128
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_zoomScale:I

    const v2, 0x3f83d70a    # 1.03f

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomScale:F

    .line 129
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->RippleView_rv_zoomDuration:I

    const/16 v2, 0xc8

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomDuration:I

    .line 130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    .line 132
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->setWillNotDraw(Z)V

    .line 138
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 157
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->setDrawingCacheEnabled(Z)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->setClickable(Z)V

    return-void
.end method

.method private sendClickEvent(Ljava/lang/Boolean;)V
    .locals 7

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    .line 308
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 309
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 310
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public animateRipple(FF)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->createAnimation(FF)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public animateRipple(Landroid/view/MotionEvent;)V
    .locals 1

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->createAnimation(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 163
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 164
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    if-eqz v0, :cond_9

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    mul-int v1, v1, v2

    const/4 v2, -0x1

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animationRunning:Z

    .line 168
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    .line 169
    iput v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    .line 170
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->invalidate()V

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->onCompletionListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;->onComplete(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V

    :cond_1
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->canvasHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->canvasHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->runnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_3
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    if-nez v0, :cond_4

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    :cond_4
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->x:F

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->y:F

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    const-string v1, "#ffff4444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    int-to-float v3, v0

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    int-to-float v6, v5

    div-float/2addr v3, v6

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 195
    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    if-ne v3, v2, :cond_5

    mul-int v0, v0, v4

    sub-int/2addr v5, v0

    .line 196
    iput v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    .line 198
    :cond_5
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    .line 199
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->radiusMax:F

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getCircleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 207
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    int-to-float p1, p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-float v2, v0

    mul-float p1, p1, v2

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const v2, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 208
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timerEmpty:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float v4, v4, v0

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->durationEmpty:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    float-to-int v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 210
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 213
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    int-to-float v2, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    :goto_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->timer:I

    :cond_9
    return-void
.end method

.method public getFrameRate()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleColor:I

    return v0
.end method

.method public getRippleDuration()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    return v0
.end method

.method public getRipplePadding()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->ripplePadding:I

    return v0
.end method

.method public getRippleType()Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;
    .locals 2

    .line 352
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->values()[Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getZoomDuration()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomDuration:I

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .line 412
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomScale:F

    return v0
.end method

.method public isCentered()Ljava/lang/Boolean;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isCentered:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isZooming()Ljava/lang/Boolean;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->hasToZoom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 222
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->WIDTH:I

    .line 223
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->HEIGHT:I

    .line 225
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomScale:F

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v5, p1

    div-int/2addr p2, p4

    int-to-float v6, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p3

    move v2, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomDuration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p4}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->animateRipple(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->sendClickEvent(Ljava/lang/Boolean;)V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->isCentered:Ljava/lang/Boolean;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->frameRate:I

    return-void
.end method

.method public setOnRippleCompleteListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->onCompletionListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$OnRippleCompleteListener;

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleAlpha:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleColor:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleDuration:I

    return-void
.end method

.method public setRipplePadding(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->ripplePadding:I

    return-void
.end method

.method public setRippleType(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;)V
    .locals 0

    .line 362
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->rippleType:Ljava/lang/Integer;

    return-void
.end method

.method public setZoomDuration(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomDuration:I

    return-void
.end method

.method public setZoomScale(F)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->zoomScale:F

    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->hasToZoom:Ljava/lang/Boolean;

    return-void
.end method
