.class Lcom/airbnb/lottie/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation<",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/GradientColor;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/Keyframe;

    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/GradientColor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getSize()I

    move-result v0

    .line 12
    :goto_0
    new-instance p1, Lcom/airbnb/lottie/GradientColor;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/airbnb/lottie/GradientColor;-><init>([F[I)V

    iput-object p1, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    return-void
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/GradientColor;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/GradientColor;

    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/GradientColor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/airbnb/lottie/GradientColor;->lerp(Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/GradientColor;F)V

    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    return-object p1
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;

    move-result-object p1

    return-object p1
.end method
