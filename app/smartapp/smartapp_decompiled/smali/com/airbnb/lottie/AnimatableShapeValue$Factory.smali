.class final Lcom/airbnb/lottie/AnimatableShapeValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableShapeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableShapeValue;
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v0

    sget-object v1, Lcom/airbnb/lottie/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;

    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object p0

    .line 38
    new-instance p1, Lcom/airbnb/lottie/AnimatableShapeValue;

    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object p0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/ShapeData;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/airbnb/lottie/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/AnimatableShapeValue$1;)V

    return-object p1
.end method
