.class final Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .locals 3

    .line 31
    new-instance v0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;

    const-string v1, "p"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;-><init>(ILcom/airbnb/lottie/AnimatableGradientColorValue$1;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v0}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object p0

    .line 34
    iget-object p1, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/GradientColor;

    .line 35
    new-instance v0, Lcom/airbnb/lottie/AnimatableGradientColorValue;

    iget-object p0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0, p1, v2}, Lcom/airbnb/lottie/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/AnimatableGradientColorValue$1;)V

    return-object v0
.end method
