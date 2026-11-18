.class Lcom/airbnb/lottie/AnimatablePointValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatablePointValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatablePointValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/graphics/PointF;Lcom/airbnb/lottie/AnimatablePointValue$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatablePointValue;-><init>(Ljava/util/List;Landroid/graphics/PointF;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatablePointValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatablePointValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/PointKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatablePointValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/PointKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
