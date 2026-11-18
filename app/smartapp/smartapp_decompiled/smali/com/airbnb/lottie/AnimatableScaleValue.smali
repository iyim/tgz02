.class Lcom/airbnb/lottie/AnimatableScaleValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableScaleValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/ScaleXY;",
        "Lcom/airbnb/lottie/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v0}, Lcom/airbnb/lottie/ScaleXY;-><init>()V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatableScaleValue$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;>;",
            "Lcom/airbnb/lottie/ScaleXY;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableScaleValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableScaleValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/ScaleKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableScaleValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
