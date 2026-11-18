.class public Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final INIT_LOCK:Ljava/lang/Object;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isDrawFirstLine:Z

.field private isDrawSecondLine:Z

.field private isRunning:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private lineProgress:F

.field private lineSpeed:F

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:F

.field private tickSize:I

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x69

    .line 35
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    const/16 p1, 0x10

    .line 39
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    const/16 p1, 0x10e

    .line 40
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    .line 44
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 45
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v1, 0xd2

    .line 49
    iput-wide v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v1, 0xc8

    .line 50
    iput-wide v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    const-string v1, "#108ee9"

    .line 53
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    const v1, 0xffffff

    .line 54
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v1, 0x43660000    # 230.0f

    .line 65
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v1, 0x0

    .line 68
    iput-wide v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/16 v1, 0x40

    .line 77
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    const v0, 0x3dcccccd    # 0.1f

    .line 79
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x69

    .line 35
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    const/16 p1, 0x10

    .line 39
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    const/16 p1, 0x10e

    .line 40
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    .line 44
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 45
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v0, 0xd2

    .line 49
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v0, 0xc8

    .line 50
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    const-string v0, "#108ee9"

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    const v0, 0xffffff

    .line 54
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43660000    # 230.0f

    .line 65
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/16 v0, 0x40

    .line 77
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    const p2, 0x3dcccccd    # 0.1f

    .line 79
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x69

    .line 35
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 37
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    const/16 p1, 0x10

    .line 39
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barLength:I

    const/16 p1, 0x10e

    .line 40
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barMaxLength:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    const-wide p2, 0x407f400000000000L    # 500.0

    .line 44
    iput-wide p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    const-wide p2, 0x407cc00000000000L    # 460.0

    .line 45
    iput-wide p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    const/4 p3, 0x1

    .line 47
    iput-boolean p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v0, 0xd2

    .line 49
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v0, 0xc8

    .line 50
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pauseGrowingTime:J

    const-string p3, "#108ee9"

    .line 53
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    const p3, 0xffffff

    .line 54
    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 57
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 p3, 0x43660000    # 230.0f

    .line 65
    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 72
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 73
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 74
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/16 p3, 0x40

    .line 77
    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 78
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    const p2, 0x3dcccccd    # 0.1f

    .line 79
    iput p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    .line 80
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    .line 398
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method private runCallback()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 449
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private setupBounds(II)V
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 179
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    .line 181
    iget-boolean v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    .line 183
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 187
    iget v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    .line 190
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    .line 192
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 195
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 200
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBarLength(J)V
    .locals 5

    .line 353
    iget-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 354
    iget-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    .line 356
    iget-wide p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    sub-double/2addr p1, v0

    .line 359
    iput-wide p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    const-wide/16 p1, 0x0

    .line 361
    iput-wide p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    .line 363
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    .line 366
    :cond_0
    iget-wide p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barSpinCycleTime:D

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, 0x437e0000    # 254.0f

    .line 369
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    .line 370
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    .line 373
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    iget p2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 374
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 377
    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    :goto_0
    return-void
.end method


# virtual methods
.method public beginDrawTick()V
    .locals 1

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    const/4 v0, 0x0

    .line 339
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 340
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public getBarColor()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 574
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 651
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 691
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .line 673
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    if-nez v1, :cond_0

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff999999999999aL    # 1.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    .line 232
    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    if-nez v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 236
    iget-object v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 237
    iget v5, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v8, v0, v6

    div-int/lit8 v6, v5, 0x6

    int-to-float v6, v6

    add-float v9, v1, v6

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    div-int/lit8 v6, v5, 0x3

    int-to-float v6, v6

    iget v7, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float v6, v6, v7

    add-float v10, v0, v6

    div-int/lit8 v0, v5, 0x6

    int-to-float v0, v0

    add-float/2addr v1, v0

    div-int/lit8 v5, v5, 0x3

    int-to-float v0, v5

    mul-float v0, v0, v7

    add-float v11, v1, v0

    iget-object v12, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 242
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_a

    .line 243
    iput v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 244
    iput-boolean v3, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    goto/16 :goto_3

    .line 248
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawFirstLine:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isDrawSecondLine:Z

    if-eqz v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 252
    iget-object v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    sub-float v7, v0, v5

    div-int/lit8 v5, v2, 0x6

    int-to-float v5, v5

    add-float v8, v1, v5

    div-int/lit8 v5, v2, 0x6

    int-to-float v5, v5

    sub-float v9, v0, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v10, v1, v2

    iget-object v11, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->tickSize:I

    div-int/lit8 v5, v2, 0x6

    int-to-float v5, v5

    sub-float v7, v0, v5

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-float v8, v1, v5

    div-int/lit8 v5, v2, 0x6

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-int/lit8 v5, v2, 0x7

    div-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    iget v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    mul-float v5, v5, v6

    add-float v9, v0, v5

    div-int/lit8 v0, v2, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v0, v2

    mul-float v0, v0, v6

    sub-float v10, v1, v0

    iget-object v11, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineSpeed:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    .line 259
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_a

    .line 260
    iput v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lineProgress:F

    goto/16 :goto_3

    .line 265
    :cond_2
    iget-object v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 267
    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_5

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v0, v8

    long-to-float v4, v0

    .line 272
    iget v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    mul-float v4, v4, v8

    div-float/2addr v4, v6

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->updateBarLength(J)V

    .line 276
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 277
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    cmpl-float v1, v0, v7

    if-lez v1, :cond_3

    sub-float/2addr v0, v7

    .line 278
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 283
    invoke-direct {p0, v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback(F)V

    .line 285
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 287
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    sub-float/2addr v0, v5

    const/high16 v1, 0x41800000    # 16.0f

    .line 288
    iget v4, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    add-float/2addr v4, v1

    .line 290
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43070000    # 135.0f

    goto :goto_0

    :cond_4
    move v7, v0

    move v8, v4

    .line 295
    :goto_0
    iget-object v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 297
    :cond_5
    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 299
    iget v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_6

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v8, v10

    long-to-float v0, v8

    div-float/2addr v0, v6

    .line 304
    iget v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    mul-float v0, v0, v6

    .line 306
    iget v6, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    add-float/2addr v6, v0

    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 310
    :goto_1
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_7

    .line 311
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    .line 315
    :cond_7
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 316
    iget-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    if-nez v1, :cond_8

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    sub-float v0, v4, v0

    float-to-double v8, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v10, v0

    .line 318
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    double-to-float v0, v8

    mul-float v2, v0, v7

    .line 319
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    div-float/2addr v0, v7

    sub-float/2addr v4, v0

    float-to-double v8, v4

    float-to-double v0, v1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v10, v0

    double-to-float v0, v10

    mul-float v0, v0, v7

    .line 322
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v11, 0x43b40000    # 360.0f

    goto :goto_2

    :cond_9
    move v11, v0

    .line 326
    :goto_2
    iget-object v9, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    sub-float v10, v2, v5

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 332
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 226
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 101
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 118
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    .line 130
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 136
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 542
    instance-of v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 543
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 547
    :cond_0
    nop

    nop

    .line 548
    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 550
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 551
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 552
    iget-boolean v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 553
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    .line 554
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 555
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 556
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 557
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 558
    iget v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 559
    iget-boolean v0, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    .line 560
    iget-boolean p1, p1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 520
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 522
    new-instance v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 525
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    .line 526
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 527
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    .line 528
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    .line 529
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    .line 530
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    .line 531
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    .line 532
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    .line 533
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    iput v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    .line 534
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    .line 535
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->fillRadius:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupBounds(II)V

    .line 149
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 150
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .line 409
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 410
    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    const-wide v1, 0x407f400000000000L    # 500.0

    .line 411
    iput-wide v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->timeStartGrowing:D

    const/4 v1, 0x0

    .line 412
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barExtraLength:F

    const/4 v2, 0x1

    .line 413
    iput-boolean v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v2, 0xd2

    .line 414
    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0x0

    .line 415
    iput-wide v2, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 416
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 417
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 418
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 394
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 395
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barColor:I

    .line 641
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 642
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 621
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->barWidth:I

    .line 622
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->callback:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$ProgressCallback;

    .line 210
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 602
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->circleRadius:I

    .line 603
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    .line 496
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 497
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 507
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 511
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 512
    iget p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 513
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    .line 514
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->linearProgress:Z

    .line 584
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    iput v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 464
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->runCallback()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 473
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    .line 480
    :cond_3
    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 484
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 486
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimColor:I

    .line 661
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->setupPaints()V

    .line 662
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 700
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->rimWidth:I

    .line 701
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    if-nez p1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 684
    iput p1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spinSpeed:F

    return-void
.end method

.method public spin()V
    .locals 2

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->lastTimeAnimated:J

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    .line 437
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 403
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 404
    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isRunning:Z

    .line 405
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning:Z

    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mProgress:F

    .line 427
    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->mTargetProgress:F

    .line 428
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->invalidate()V

    return-void
.end method
