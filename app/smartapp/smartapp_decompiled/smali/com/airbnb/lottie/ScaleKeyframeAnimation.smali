.class Lcom/airbnb/lottie/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation<",
        "Lcom/airbnb/lottie/ScaleXY;",
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
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/ScaleXY;"
        }
    .end annotation

    .line 13
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    .line 17
    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/ScaleXY;

    .line 18
    new-instance v1, Lcom/airbnb/lottie/ScaleXY;

    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/airbnb/lottie/ScaleXY;-><init>(FF)V

    return-object v1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;

    move-result-object p1

    return-object p1
.end method
