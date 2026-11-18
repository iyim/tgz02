.class public Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TBCircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATOR_DURATION:I = 0x7d0

.field private static final ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MIN_SWEEP_ANGLE:I = 0x1e

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x258

.field private static final SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderWidth:F

.field private mCurrentGlobalAngle:F

.field private mCurrentGlobalAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mModeAppearing:Z

.field private mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

.field private mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSweepProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IF)V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    .line 138
    new-instance v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;-><init>(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    .line 153
    new-instance v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$2;-><init>(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    .line 70
    iput p2, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mBorderWidth:F

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object p2, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-direct {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setupAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->toggleAppearingMode()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setupAnimations()V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mAngleProperty:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    .line 171
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->ANGLE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 174
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 176
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mSweepProperty:Landroid/util/Property;

    new-array v4, v1, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v4, v3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    .line 177
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 180
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 181
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$3;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$3;-><init>(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private toggleAppearingMode()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mModeAppearing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mModeAppearing:Z

    .line 119
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mModeAppearing:Z

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 84
    iget v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngle:F

    iget v1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    .line 85
    iget v1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentSweepAngle:F

    .line 86
    iget-boolean v2, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mModeAppearing:Z

    const/high16 v3, 0x41f00000    # 30.0f

    if-nez v2, :cond_0

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    add-float v2, v1, v3

    :goto_0
    move v5, v0

    move v6, v2

    .line 95
    iget-object v4, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCurrentGlobalAngle()F
    .locals 1

    .line 249
    iget v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngle:F

    return v0
.end method

.method public getCurrentSweepAngle()F
    .locals 1

    .line 260
    iget v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentSweepAngle:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 128
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 131
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 132
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCurrentGlobalAngle(F)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentGlobalAngle:F

    .line 244
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mCurrentSweepAngle:F

    .line 255
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRingWidth(F)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mRunning:Z

    .line 217
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 218
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mRunning:Z

    .line 230
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorAngle:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->mObjectAnimatorSweep:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 232
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
