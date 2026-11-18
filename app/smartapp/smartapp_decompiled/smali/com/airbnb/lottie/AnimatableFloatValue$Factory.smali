.class final Lcom/airbnb/lottie/AnimatableFloatValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 2

    .line 44
    new-instance v0, Lcom/airbnb/lottie/AnimatableFloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>(Lcom/airbnb/lottie/AnimatableFloatValue$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;
    .locals 1

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 54
    :goto_0
    sget-object v0, Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;

    .line 55
    invoke-static {p0, p2, p1, v0}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object p0

    .line 57
    new-instance p1, Lcom/airbnb/lottie/AnimatableFloatValue;

    iget-object p2, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object p0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/AnimatableFloatValue$1;)V

    return-object p1
.end method
