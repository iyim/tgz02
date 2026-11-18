.class Lcom/airbnb/lottie/AnimatableColorValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableColorValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableColorValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Integer;Lcom/airbnb/lottie/AnimatableColorValue$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableColorValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableColorValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableColorValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/ColorKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableColorValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/ColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableColorValue{initialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableColorValue;->initialValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
