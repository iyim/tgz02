.class Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;
.super Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;
.source "SpringAnimationDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;
    }
.end annotation


# static fields
.field private static final MAX_DELTA_TIME_SEC:D = 0.064


# instance fields
.field private final mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mInitialVelocity:D

.field private mLastTime:J

.field private mOvershootClampingEnabled:Z

.field private mRestSpeedThreshold:D

.field private mSpringDamping:D

.field private mSpringMass:D

.field private mSpringStarted:Z

.field private mSpringStiffness:D

.field private mStartValue:D

.field private mTimeAccumulator:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;-><init>()V

    .line 48
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;-><init>(Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$1;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    return-void
.end method

.method private advance(D)V
    .locals 17

    move-object/from16 v0, p0

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v3, p1, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v1, p1

    .line 125
    :goto_0
    iget-wide v3, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mTimeAccumulator:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mTimeAccumulator:D

    .line 127
    iget-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringDamping:D

    .line 128
    iget-wide v3, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringMass:D

    .line 129
    iget-wide v5, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStiffness:D

    .line 130
    iget-wide v7, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mInitialVelocity:D

    neg-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v11, v5, v3

    .line 132
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    div-double/2addr v1, v11

    div-double/2addr v5, v3

    .line 133
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v5, v1, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v5, v9, v5

    .line 134
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 135
    iget-wide v11, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    iget-wide v13, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    sub-double/2addr v11, v13

    .line 139
    iget-wide v13, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mTimeAccumulator:D

    cmpg-double v15, v1, v9

    if-gez v15, :cond_2

    neg-double v9, v1

    mul-double v9, v9, v3

    mul-double v9, v9, v13

    .line 142
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    move-wide/from16 p1, v9

    .line 143
    iget-wide v9, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    mul-double v1, v1, v3

    mul-double v3, v1, v11

    add-double/2addr v7, v3

    div-double v3, v7, v5

    mul-double v13, v13, v5

    .line 146
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v3, v3, v15

    .line 147
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v11

    add-double/2addr v3, v15

    mul-double v3, v3, p1

    sub-double/2addr v9, v3

    mul-double v1, v1, p1

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v7

    div-double/2addr v3, v5

    .line 155
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v11

    add-double/2addr v3, v15

    mul-double v1, v1, v3

    .line 157
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v7

    mul-double v5, v5, v11

    .line 158
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    sub-double/2addr v3, v5

    mul-double v3, v3, p1

    sub-double/2addr v1, v3

    move-wide v5, v9

    goto :goto_1

    :cond_2
    neg-double v1, v3

    mul-double v1, v1, v13

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    .line 162
    iget-wide v5, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    mul-double v15, v3, v11

    add-double/2addr v15, v7

    mul-double v15, v15, v13

    add-double/2addr v15, v11

    mul-double v15, v15, v1

    sub-double/2addr v5, v15

    mul-double v15, v13, v3

    sub-double/2addr v15, v9

    mul-double v7, v7, v15

    mul-double v13, v13, v11

    mul-double v3, v3, v3

    mul-double v13, v13, v3

    add-double/2addr v7, v13

    mul-double v1, v1, v7

    .line 167
    :goto_1
    iget-object v3, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iput-wide v5, v3, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    .line 168
    iput-wide v1, v3, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mOvershootClampingEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->isOvershooting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    :cond_3
    iget-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStiffness:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_4

    .line 176
    iget-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    iput-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    .line 177
    iget-object v5, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iput-wide v1, v5, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    goto :goto_2

    .line 179
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v1, v1, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    iput-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    .line 180
    iget-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    iput-wide v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    .line 182
    :goto_2
    iget-object v1, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iput-wide v3, v1, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    :cond_5
    return-void
.end method

.method private getDisplacementDistanceForState(Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;)D
    .locals 4

    .line 104
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    iget-wide v2, p1, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private isOvershooting()Z
    .locals 5

    .line 108
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v0, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v0, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method isAtRest()Z
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v0, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mRestSpeedThreshold:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    .line 99
    invoke-direct {p0, v0}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->getDisplacementDistanceForState(Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mDisplacementFromRestThreshold:D

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStiffness:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onAnimationStart(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    const-wide/16 v1, 0x0

    const-string v3, "initialVelocity"

    invoke-static {p1, v3, v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    iput-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mVelocity:D

    const-string/jumbo v0, "stiffness"

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 61
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStiffness:D

    const-string v0, "damping"

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 62
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringDamping:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v0, "mass"

    .line 63
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringMass:D

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v5, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    iput-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mInitialVelocity:D

    const-string v0, "fromValue"

    .line 66
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mValue:D

    const-string/jumbo v0, "toValue"

    .line 67
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mEndValue:D

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    const-string/jumbo v0, "restSpeedThreshold"

    .line 69
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mRestSpeedThreshold:D

    const-string/jumbo v0, "restDisplacementThreshold"

    .line 70
    invoke-static {p1, v0, v3, v4}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getDoubleValue(Ljava/util/Map;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mDisplacementFromRestThreshold:D

    const/4 v0, 0x0

    const-string v3, "overshootClamping"

    .line 71
    invoke-static {p1, v3, v0}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getBooleanValue(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mOvershootClampingEnabled:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mHasFinished:Z

    .line 73
    iput-wide v1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mTimeAccumulator:D

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStarted:Z

    return-void
.end method

.method runAnimationStep(J)V
    .locals 6

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mValue:D

    iput-wide v2, v0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mStartValue:D

    .line 81
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mLastTime:J

    const-wide/16 v2, 0x0

    .line 82
    iput-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mTimeAccumulator:D

    .line 83
    iput-boolean v1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mSpringStarted:Z

    .line 85
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mLastTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->advance(D)V

    .line 86
    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mLastTime:J

    .line 88
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide p1, p1, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->position:D

    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mValue:D

    .line 89
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mCurrentState:Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;

    iget-wide p1, p1, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver$PhysicsState;->velocity:D

    iput-wide p1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mVelocity:D

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->isAtRest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iput-boolean v1, p0, Lcom/alibaba/android/bindingx/core/internal/SpringAnimationDriver;->mHasFinished:Z

    :cond_1
    return-void
.end method
