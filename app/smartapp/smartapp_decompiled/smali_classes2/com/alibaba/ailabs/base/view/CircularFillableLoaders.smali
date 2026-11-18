.class public Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "CircularFillableLoaders.java"


# static fields
.field private static final DEFAULT_AMPLITUDE_RATIO:F = 0.05f

.field public static final DEFAULT_BORDER_WIDTH:I = 0xa

.field private static final DEFAULT_WATER_LEVEL_RATIO:F = 0.5f

.field public static final DEFAULT_WAVE_COLOR:I = -0x1000000

.field private static final DEFAULT_WAVE_LENGTH_RATIO:F = 1.0f

.field private static final DEFAULT_WAVE_SHIFT_RATIO:F


# instance fields
.field private amplitudeRatio:F

.field private animatorSetWave:Landroid/animation/AnimatorSet;

.field private borderPaint:Landroid/graphics/Paint;

.field private canvasSize:I

.field private defaultWaterLevel:F

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private image:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private waterLevelRatio:F

.field private waveColor:I

.field private wavePaint:Landroid/graphics/Paint;

.field private waveShader:Landroid/graphics/BitmapShader;

.field private waveShaderMatrix:Landroid/graphics/Matrix;

.field private waveShiftRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    nop

    nop

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waterLevelRatio:F

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShiftRatio:F

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    return-void
.end method

.method private adjustAlpha(IF)I
    .locals 2

    .line 357
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 358
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 359
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 360
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 361
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private cancel()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->animatorSetWave:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p1, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 213
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 214
    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 220
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 226
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Encountered OutOfMemoryError while generating bitmap!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->paint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShaderMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->initAnimation()V

    .line 83
    sget-object v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders_cfl_wave_color:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    .line 85
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders_cfl_wave_amplitude:I

    const p3, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    const p2, 0x3d4ccccd    # 0.05f

    .line 86
    :cond_0
    iput p2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    .line 87
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders_cfl_progress:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    .line 88
    sget p2, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders_cfl_border:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x41200000    # 10.0f

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p2

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    sget v0, Lcom/alibaba/ailabs/appbox/R$styleable;->CircularFillableLoaders_cfl_border_width:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    return-void
.end method

.method private initAnimation()V
    .locals 3

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "waveShiftRatio"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 316
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x3e8

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->animatorSetWave:Landroid/animation/AnimatorSet;

    .line 320
    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->animatorSetWave:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private loadBitmap()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->drawable:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    .line 136
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->updateShader()V

    :cond_0
    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    :goto_0
    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    :goto_0
    return p1
.end method

.method private setWaterLevelRatio(F)V
    .locals 1

    .line 332
    iget v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waterLevelRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 333
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waterLevelRatio:F

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    :cond_0
    return-void
.end method

.method private setWaveShiftRatio(F)V
    .locals 1

    .line 324
    iget v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShiftRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 325
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShiftRatio:F

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->animatorSetWave:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private updateShader()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    .line 156
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 157
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    iget v2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 161
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->updateWaveShader()V

    :cond_0
    return-void
.end method

.method private updateWaveShader()V
    .locals 20

    move-object/from16 v0, p0

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, v2

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v2, v2, v5

    iput v2, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->defaultWaterLevel:F

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 171
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/high16 v6, 0x40000000    # 2.0f

    .line 173
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x1

    .line 174
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v7

    add-int/lit8 v14, v7, 0x1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v7

    add-int/lit8 v15, v7, 0x1

    .line 177
    new-array v11, v14, [F

    .line 178
    iget v6, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v7}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->adjustAlpha(IF)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_0

    int-to-double v6, v10

    .line 182
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    .line 183
    iget v8, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->defaultWaterLevel:F

    float-to-double v8, v8

    move-wide/from16 v17, v3

    float-to-double v3, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v3

    double-to-float v3, v8

    int-to-float v9, v10

    int-to-float v4, v15

    move-object v6, v12

    move v7, v9

    move v8, v3

    move/from16 v19, v10

    move v10, v4

    move-object v4, v11

    move-object v11, v13

    .line 184
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    aput v3, v4, v19

    add-int/lit8 v10, v19, 0x1

    move-object v11, v4

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_0
    move-object v4, v11

    .line 188
    iget v1, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v14, :cond_1

    int-to-float v9, v2

    add-int v3, v2, v1

    .line 192
    rem-int/2addr v3, v14

    aget v8, v4, v3

    int-to-float v10, v15

    move-object v6, v12

    move v7, v9

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_1
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v5, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShader:Landroid/graphics/BitmapShader;

    .line 196
    iget-object v1, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->startAnimation()V

    .line 348
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->cancel()V

    .line 353
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 98
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->loadBitmap()V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    .line 107
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShaderMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    const v2, 0x3d4ccccd    # 0.05f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->defaultWaterLevel:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShaderMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShiftRatio:F

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    iget v5, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waterLevelRatio:F

    sub-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v3

    if-lez v2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v1

    sub-float/2addr v5, v4

    iget-object v4, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v2, v0

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->wavePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->measureWidth(I)I

    move-result p1

    .line 237
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->measureHeight(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 239
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 142
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    .line 143
    iget p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    if-ge p2, p1, :cond_0

    .line 144
    iput p2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->canvasSize:I

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->image:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->updateShader()V

    :cond_1
    return-void
.end method

.method public setAmplitudeRatio(F)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 285
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAmplitudeRatio(FI)V
    .locals 0

    .line 291
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setColor(I)V

    .line 292
    iget p2, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 293
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->amplitudeRatio:F

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    .line 274
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->updateWaveShader()V

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    const/4 v0, 0x2

    .line 299
    new-array v0, v0, [F

    iget v1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waterLevelRatio:F

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/4 p1, 0x1

    aput v1, v0, p1

    const-string p1, "waterLevelRatio"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 303
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->waveColor:I

    .line 366
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setColor(I)V

    return-void
.end method

.method public startBackgroundAnimator()V
    .locals 4

    const/4 v0, 0x3

    .line 380
    new-array v0, v0, [I

    const-string v1, "#00b3ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    const/high16 v3, -0x10000

    aput v3, v0, v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "waveColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const/16 v1, 0xa

    .line 394
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 398
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
