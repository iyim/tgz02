.class public Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# instance fields
.field private mAnchorX:F

.field private mAnchorY:F

.field private mAngleDiff:D

.field private mCurrTime:J

.field private mInProgress:Z

.field private mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

.field private mPointerIds:[I

.field private mPrevAngle:D

.field private mPrevTime:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    .line 52
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

    return-void
.end method

.method private finish()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 103
    aput v2, v1, v0

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    .line 109
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevAngle:D

    :cond_1
    return-void
.end method

.method private updateCurrent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 56
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mCurrTime:J

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevTime:J

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mCurrTime:J

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float v1, v3, v2

    sub-float v4, p1, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 74
    iput v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAnchorX:F

    add-float/2addr v0, p1

    mul-float v0, v0, v3

    .line 75
    iput v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAnchorY:F

    float-to-double v2, v4

    float-to-double v0, v1

    .line 77
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    .line 79
    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevAngle:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    .line 80
    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    goto :goto_0

    .line 82
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevAngle:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    .line 84
    :goto_0
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevAngle:D

    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    sub-double/2addr v0, v2

    .line 87
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    goto :goto_1

    :cond_2
    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    add-double/2addr v0, v2

    .line 89
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    .line 92
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p1, v0, v4

    if-lez p1, :cond_4

    sub-double/2addr v0, v2

    .line 93
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    goto :goto_2

    :cond_4
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double p1, v0, v4

    if-gez p1, :cond_5

    add-double/2addr v0, v2

    .line 95
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getAnchorX()F
    .locals 1

    .line 174
    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAnchorX:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAnchorY:F

    return v0
.end method

.method public getRotation()D
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mAngleDiff:D

    return-wide v0
.end method

.method public getRotationInDegrees()D
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->getRotation()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeDelta()J
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_6

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    aget v1, v0, v2

    if-eq p1, v1, :cond_1

    aget v0, v0, v3

    if-ne p1, v0, :cond_6

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    if-nez v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    aput v1, v0, v3

    .line 125
    iput-boolean v3, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevTime:J

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 127
    iput-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPrevAngle:D

    .line 128
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->updateCurrent(Landroid/view/MotionEvent;)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

    if-eqz p1, :cond_6

    .line 130
    invoke-interface {p1, p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;->onRotationBegin(Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    aget v2, v0, v2

    if-eq v2, v1, :cond_6

    aget v0, v0, v3

    if-eq v0, v1, :cond_6

    .line 137
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->updateCurrent(Landroid/view/MotionEvent;)V

    .line 138
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->getRotationInDegrees()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-eqz p1, :cond_6

    .line 139
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mListener:Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {p1, p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->finish()V

    goto :goto_0

    .line 117
    :cond_5
    iput-boolean v2, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mInProgress:Z

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    aput p1, v0, v2

    .line 119
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/RotationGestureDetector;->mPointerIds:[I

    aput v1, p1, v3

    :cond_6
    :goto_0
    return v3
.end method
