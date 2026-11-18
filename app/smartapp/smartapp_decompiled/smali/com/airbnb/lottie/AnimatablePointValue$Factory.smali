.class final Lcom/airbnb/lottie/AnimatablePointValue$Factory;
.super Ljava/lang/Object;
.source "AnimatablePointValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatablePointValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v0

    sget-object v1, Lcom/airbnb/lottie/PointFFactory;->INSTANCE:Lcom/airbnb/lottie/PointFFactory;

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object p0

    .line 30
    new-instance p1, Lcom/airbnb/lottie/AnimatablePointValue;

    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object p0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/airbnb/lottie/AnimatablePointValue;-><init>(Ljava/util/List;Landroid/graphics/PointF;Lcom/airbnb/lottie/AnimatablePointValue$1;)V

    return-object p1
.end method
