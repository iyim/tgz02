.class public Lcom/taobao/uikit/extend/component/TBProgressBar;
.super Landroid/widget/ProgressBar;
.source "TBProgressBar.java"


# instance fields
.field private mCurrentProgress:I

.field private mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mLightStartX:I

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressLight:Landroid/graphics/Bitmap;

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mCurrentProgress:I

    .line 48
    iput p2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightStartX:I

    .line 67
    sget p3, Lcom/taobao/uikit/extend/R$drawable;->uik_progress_drawable:I

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance p1, Lcom/taobao/uikit/extend/component/TBProgressBar$1;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/extend/component/TBProgressBar$1;-><init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V

    const/4 p3, 0x1

    new-array v0, p3, [Landroid/content/res/Resources;

    .line 92
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressLight:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 98
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 103
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mScreenWidth:I

    const/4 p1, 0x2

    .line 105
    new-array p1, p1, [I

    aput p2, p1, p2

    iget p2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mScreenWidth:I

    aput p2, p1, p3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 106
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    const p2, 0x3ed70a3d    # 0.42f

    const/4 v0, 0x0

    const v1, 0x3f147ae1    # 0.58f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x640

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 113
    new-instance p2, Lcom/taobao/uikit/extend/component/TBProgressBar$2;

    invoke-direct {p2, p0}, Lcom/taobao/uikit/extend/component/TBProgressBar$2;-><init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getMax()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setCurrentProgress(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/uikit/extend/component/TBProgressBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressLight:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/taobao/uikit/extend/component/TBProgressBar;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightStartX:I

    return p1
.end method

.method static synthetic access$202(Lcom/taobao/uikit/extend/component/TBProgressBar;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mCurrentProgress:I

    return p1
.end method


# virtual methods
.method protected dismiss()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 234
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/taobao/uikit/extend/component/TBProgressBar$5;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/component/TBProgressBar$5;-><init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 211
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 217
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 223
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 225
    :cond_2
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    .line 256
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressLight:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 261
    iget v2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightStartX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mScreenWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressLight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    cmpg-float v0, v2, v3

    if-gez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressLight:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightStartX:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 190
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 201
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    :goto_0
    return-void
.end method

.method public resetProgress()V
    .locals 4

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setAlpha(F)V

    .line 274
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->invalidate()V

    .line 275
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setProgress(I)V

    .line 276
    iput v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mCurrentProgress:I

    .line 278
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getMax()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setCurrentProgress(I)V

    return-void
.end method

.method public declared-synchronized setCurrentProgress(I)V
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_0

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    .line 144
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mCurrentProgress:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 146
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/TBProgressBar$3;-><init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/taobao/uikit/extend/component/TBProgressBar$4;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/TBProgressBar$4;-><init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
