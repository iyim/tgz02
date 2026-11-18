.class Lcom/airbnb/lottie/FloatKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "FloatKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/FloatKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
