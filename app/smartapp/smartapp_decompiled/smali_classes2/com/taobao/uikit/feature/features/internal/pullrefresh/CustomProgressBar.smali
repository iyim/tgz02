.class public Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;
.super Landroid/view/View;
.source "CustomProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomProgressBar"


# instance fields
.field private final DEFAULT_START_ANGLE:F

.field private final MAX_SWEEP_ANGLE:F

.field private final MIN_START_ANGLE:F

.field private mDistance:I

.field private mIsLoading:Z

.field private mIsShow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStartAngle:F

.field private mSweepAngle:F

.field preDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x43aa0000    # 340.0f

    .line 19
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->MAX_SWEEP_ANGLE:F

    const/high16 p1, -0x3d600000    # -80.0f

    .line 20
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->MIN_START_ANGLE:F

    const/high16 p1, 0x43820000    # 260.0f

    .line 21
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->DEFAULT_START_ANGLE:F

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsLoading:Z

    .line 25
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    .line 28
    iput-boolean p2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsShow:Z

    .line 97
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    .line 43
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 76
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public changeProgressBarState(I)V
    .locals 5

    if-gez p1, :cond_0

    const/high16 p1, 0x43820000    # 260.0f

    .line 107
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    .line 109
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->invalidate()V

    return-void

    :cond_0
    int-to-float p1, p1

    .line 112
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mDistance:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43aa0000    # 340.0f

    mul-float v0, v0, v1

    .line 114
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    .line 115
    iget v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    .line 119
    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    const/4 v2, 0x0

    const-string v3, "CustomProgressBar"

    const/high16 v4, -0x3d600000    # -80.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 120
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e0d\u5728\u8ddd\u79bb\u8303\u56f4\u4e4b\u5185"

    invoke-static {v3, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iput v4, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    .line 122
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    .line 123
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    iget v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mDistance:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return-void

    :cond_1
    int-to-float p1, v0

    .line 127
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    goto :goto_0

    .line 130
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "\u5728\u8ddd\u79bb\u4e2d"

    invoke-static {v3, v1, v0}, Lcom/taobao/uikit/utils/UIKITLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->invalidate()V

    return-void
.end method

.method public isInitShow(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsShow:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x43aa0000    # 340.0f

    .line 156
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    const/high16 p1, -0x3d600000    # -80.0f

    .line 157
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 84
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 86
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v0, v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v5, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    iget v7, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    iget-object v9, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 89
    iget-boolean p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsLoading:Z

    if-eqz p1, :cond_0

    .line 91
    iget p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    .line 92
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setPullDownDistance(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mDistance:I

    return-void
.end method

.method public startLoadingAnimaton()V
    .locals 1

    const/high16 v0, 0x43aa0000    # 340.0f

    .line 48
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    const/high16 v0, -0x3d600000    # -80.0f

    .line 49
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsLoading:Z

    .line 51
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->invalidate()V

    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsLoading:Z

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->preDistance:F

    .line 57
    iget-boolean v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mIsShow:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x43aa0000    # 340.0f

    .line 58
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    const/high16 v0, -0x3d600000    # -80.0f

    .line 59
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43820000    # 260.0f

    .line 62
    iput v1, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mStartAngle:F

    .line 63
    iput v0, p0, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->mSweepAngle:F

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/internal/pullrefresh/CustomProgressBar;->invalidate()V

    return-void
.end method
