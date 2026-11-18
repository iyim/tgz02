.class Lcom/airbnb/lottie/AnimatableGradientColorValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;,
        Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/GradientColor;",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;>;",
            "Lcom/airbnb/lottie/GradientColor;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/AnimatableGradientColorValue$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
