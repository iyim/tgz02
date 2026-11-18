.class Lcom/airbnb/lottie/CircleShape$Factory;
.super Ljava/lang/Object;
.source "CircleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/CircleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/CircleShape;
    .locals 4

    .line 25
    new-instance v0, Lcom/airbnb/lottie/CircleShape;

    const-string v1, "nm"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    .line 28
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v2

    const-string/jumbo v3, "s"

    .line 29
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/airbnb/lottie/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/CircleShape$1;)V

    return-object v0
.end method
