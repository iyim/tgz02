.class final Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 2

    .line 33
    new-instance v0, Lcom/airbnb/lottie/AnimatableIntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Lcom/airbnb/lottie/AnimatableIntegerValue$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;
    .locals 2

    .line 39
    invoke-static {}, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;->access$100()Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v0}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object p0

    .line 41
    iget-object p1, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 42
    new-instance v0, Lcom/airbnb/lottie/AnimatableIntegerValue;

    iget-object p0, p0, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v0
.end method
