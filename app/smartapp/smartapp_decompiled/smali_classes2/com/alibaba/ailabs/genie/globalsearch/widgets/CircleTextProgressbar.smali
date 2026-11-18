.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "CircleTextProgressbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;,
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
    }
.end annotation


# instance fields
.field final bounds:Landroid/graphics/Rect;

.field private circleColor:I

.field private inCircleColors:Landroid/content/res/ColorStateList;

.field private listenerWhat:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mCountdownProgressListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

.field private outLineColor:I

.field private outLineWidth:I

.field private progress:I

.field private progressChangeTask:Ljava/lang/Runnable;

.field private progressLineColor:I

.field private progressLineWidth:I

.field private timeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 23
    iput p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineColor:I

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    .line 33
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineColor:I

    .line 47
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineWidth:I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mArcRect:Landroid/graphics/RectF;

    const/16 v0, 0x64

    .line 62
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT_BACK:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    const-wide/16 v0, 0x1388

    .line 70
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->timeMillis:J

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    .line 83
    iput p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->listenerWhat:I

    .line 349
    new-instance p3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressChangeTask:Ljava/lang/Runnable;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mCountdownProgressListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->listenerWhat:I

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressChangeTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->timeMillis:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->validateProgress(I)I

    move-result p0

    return p0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    .line 108
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->circleColor:I

    return-void
.end method

.method private resetProgress()V
    .locals 2

    .line 239
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 244
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    :goto_0
    return-void
.end method

.method private validateCircleColor()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 146
    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->circleColor:I

    if-eq v1, v0, :cond_0

    .line 147
    iput v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->circleColor:I

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    :cond_0
    return-void
.end method

.method private validateProgress(I)I
    .locals 1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 342
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->drawableStateChanged()V

    .line 343
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->validateCircleColor()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getProgress()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    return v0
.end method

.method public getProgressType()Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->timeMillis:J

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 297
    :goto_0
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 300
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 306
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 314
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 324
    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineWidth:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    add-int/2addr v0, v1

    .line 325
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mArcRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public reStart()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->resetProgress()V

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->start()V

    return-void
.end method

.method public setCountdownProgressListener(ILcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->listenerWhat:I

    .line 265
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mCountdownProgressListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;

    return-void
.end method

.method public setInCircleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 137
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->inCircleColors:Landroid/content/res/ColorStateList;

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setOutLineColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 117
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineColor:I

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setOutLineWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 127
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->outLineWidth:I

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->validateProgress(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progress:I

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 158
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineColor:I

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setProgressLineWidth(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressLineWidth:I

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setProgressType(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->mProgressType:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    .line 231
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->resetProgress()V

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public setTimeMillis(J)V
    .locals 0

    .line 211
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->timeMillis:J

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->stop()V

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressChangeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->progressChangeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
