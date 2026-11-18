.class Lcom/airbnb/lottie/AnimatableIntegerValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;,
        Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;
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
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatableIntegerValue$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Integer;)V
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
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

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

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableIntegerValue;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/IntegerKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableIntegerValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/IntegerKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInitialValue()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableIntegerValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
