.class public Lcom/taobao/uikit/component/GifView;
.super Lcom/taobao/uikit/feature/view/TView;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/component/GifView$DecodeTask;,
        Lcom/taobao/uikit/component/GifView$OnDecodedListener;,
        Lcom/taobao/uikit/component/GifView$OnPlayEndListener;
    }
.end annotation


# static fields
.field private static final SUBTLE_PARAM:I = 0x1


# instance fields
.field private mAutoPlay:Z

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mDecodeTask:Lcom/taobao/uikit/component/GifView$DecodeTask;

.field private mDecodedListener:Lcom/taobao/uikit/component/GifView$OnDecodedListener;

.field private mEndListener:Lcom/taobao/uikit/component/GifView$OnPlayEndListener;

.field private mGifFilePath:Ljava/lang/String;

.field private mGifResId:I

.field private mIsPlayed:Z

.field private mIsPlaying:Z

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieHeight:I

.field private mMovieStart:J

.field private mMovieWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/component/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/component/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/feature/view/TView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p3, v0, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p3, v0}, Lcom/taobao/uikit/component/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    :cond_0
    sget-object p3, Lcom/taobao/uikit/R$styleable;->GifView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    sget p2, Lcom/taobao/uikit/R$styleable;->GifView_uik_auto_play:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/uikit/component/GifView;->mAutoPlay:Z

    .line 93
    sget p2, Lcom/taobao/uikit/R$styleable;->GifView_uik_gif_src:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/GifView;->mGifResId:I

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/uikit/component/GifView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/taobao/uikit/component/GifView;->mGifResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/component/GifView;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/taobao/uikit/component/GifView;->mGifFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/component/GifView;)Landroid/graphics/Movie;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    return-object p0
.end method

.method static synthetic access$302(Lcom/taobao/uikit/component/GifView;Landroid/graphics/Movie;)Landroid/graphics/Movie;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/uikit/component/GifView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mMovieWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/uikit/component/GifView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mMovieHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/taobao/uikit/component/GifView;)Lcom/taobao/uikit/component/GifView$OnDecodedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/taobao/uikit/component/GifView;->mDecodedListener:Lcom/taobao/uikit/component/GifView$OnDecodedListener;

    return-object p0
.end method

.method private decode()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mDecodeTask:Lcom/taobao/uikit/component/GifView$DecodeTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/GifView$DecodeTask;->cancel(Z)Z

    .line 273
    :cond_0
    new-instance v0, Lcom/taobao/uikit/component/GifView$DecodeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/uikit/component/GifView$DecodeTask;-><init>(Lcom/taobao/uikit/component/GifView;Lcom/taobao/uikit/component/GifView$1;)V

    iput-object v0, p0, Lcom/taobao/uikit/component/GifView;->mDecodeTask:Lcom/taobao/uikit/component/GifView$DecodeTask;

    .line 274
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mDecodeTask:Lcom/taobao/uikit/component/GifView$DecodeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/GifView$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private fixCanvas(Landroid/graphics/Canvas;)V
    .locals 8

    .line 146
    iget v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieWidth:I

    .line 147
    iget v1, p0, Lcom/taobao/uikit/component/GifView;->mMovieHeight:I

    .line 149
    iget v2, p0, Lcom/taobao/uikit/component/GifView;->mCanvasWidth:I

    .line 150
    iget v3, p0, Lcom/taobao/uikit/component/GifView;->mCanvasHeight:I

    mul-int v4, v0, v3

    mul-int v5, v2, v1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-le v4, v5, :cond_0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    mul-float v0, v1, v7

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, v3

    int-to-float v1, v1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    mul-float v1, v2, v7

    move v3, v0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method private playMovie(Landroid/graphics/Canvas;)Z
    .locals 9

    .line 220
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 221
    iget-wide v2, p0, Lcom/taobao/uikit/component/GifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 223
    iput-wide v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieStart:J

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    :cond_1
    const/4 v6, 0x0

    .line 232
    iget-wide v7, p0, Lcom/taobao/uikit/component/GifView;->mMovieStart:J

    sub-long/2addr v0, v7

    long-to-int v1, v0

    if-lt v1, v2, :cond_2

    .line 236
    iput-wide v4, p0, Lcom/taobao/uikit/component/GifView;->mMovieStart:J

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 240
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    return v3
.end method


# virtual methods
.method public autoPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mAutoPlay:Z

    .line 290
    invoke-virtual {p0}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/taobao/uikit/feature/view/TView;->onAttachedToWindow()V

    .line 205
    invoke-direct {p0}, Lcom/taobao/uikit/component/GifView;->decode()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mDecodeTask:Lcom/taobao/uikit/component/GifView$DecodeTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Lcom/taobao/uikit/component/GifView$DecodeTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    .line 215
    invoke-super {p0}, Lcom/taobao/uikit/feature/view/TView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/view/TView;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/GifView;->fixCanvas(Landroid/graphics/Canvas;)V

    .line 106
    iget-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mAutoPlay:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/GifView;->playMovie(Landroid/graphics/Canvas;)Z

    .line 109
    invoke-virtual {p0}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    goto :goto_1

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlaying:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 115
    invoke-direct {p0, p1}, Lcom/taobao/uikit/component/GifView;->playMovie(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput-boolean v2, p0, Lcom/taobao/uikit/component/GifView;->mIsPlaying:Z

    .line 118
    iput-boolean v1, p0, Lcom/taobao/uikit/component/GifView;->mIsPlayed:Z

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    goto :goto_1

    .line 124
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlayed:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Movie;->setTime(I)Z

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, v2}, Landroid/graphics/Movie;->setTime(I)Z

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 134
    iget-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlayed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mEndListener:Lcom/taobao/uikit/component/GifView$OnPlayEndListener;

    if-eqz v0, :cond_4

    .line 136
    invoke-interface {v0}, Lcom/taobao/uikit/component/GifView$OnPlayEndListener;->OnPlayEnd()V

    .line 140
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mMovie:Landroid/graphics/Movie;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 178
    iput v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieWidth:I

    .line 179
    iput v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieHeight:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_0
    iget v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieWidth:I

    .line 185
    iget v2, p0, Lcom/taobao/uikit/component/GifView;->mMovieHeight:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 196
    :goto_0
    invoke-static {v0, p1}, Lcom/taobao/uikit/component/GifView;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mCanvasWidth:I

    .line 197
    invoke-static {v1, p2}, Lcom/taobao/uikit/component/GifView;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mCanvasHeight:I

    .line 199
    iget p1, p0, Lcom/taobao/uikit/component/GifView;->mCanvasWidth:I

    iget p2, p0, Lcom/taobao/uikit/component/GifView;->mCanvasHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/component/GifView;->setMeasuredDimension(II)V

    return-void
.end method

.method public play()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 280
    iput-wide v0, p0, Lcom/taobao/uikit/component/GifView;->mMovieStart:J

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlaying:Z

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlayed:Z

    .line 283
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mAutoPlay:Z

    .line 284
    invoke-virtual {p0}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    return-void
.end method

.method public setDecodedListener(Lcom/taobao/uikit/component/GifView$OnDecodedListener;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView;->mDecodedListener:Lcom/taobao/uikit/component/GifView$OnDecodedListener;

    return-void
.end method

.method public setGifFilePath(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/taobao/uikit/component/GifView;->mGifFilePath:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView;->mGifFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 259
    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mGifResId:I

    .line 260
    invoke-direct {p0}, Lcom/taobao/uikit/component/GifView;->decode()V

    :cond_0
    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 246
    iget v0, p0, Lcom/taobao/uikit/component/GifView;->mGifResId:I

    if-eq p1, v0, :cond_0

    .line 248
    iput p1, p0, Lcom/taobao/uikit/component/GifView;->mGifResId:I

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView;->mGifFilePath:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Lcom/taobao/uikit/component/GifView;->decode()V

    :cond_0
    return-void
.end method

.method public setPlayEndListener(Lcom/taobao/uikit/component/GifView$OnPlayEndListener;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/taobao/uikit/component/GifView;->mEndListener:Lcom/taobao/uikit/component/GifView$OnPlayEndListener;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlaying:Z

    .line 296
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mAutoPlay:Z

    .line 297
    iput-boolean v0, p0, Lcom/taobao/uikit/component/GifView;->mIsPlayed:Z

    .line 298
    invoke-virtual {p0}, Lcom/taobao/uikit/component/GifView;->invalidate()V

    return-void
.end method
