.class Lcom/airbnb/lottie/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableTransform;
    .locals 8

    .line 31
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 32
    new-instance v2, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 33
    invoke-static {}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v3

    .line 34
    invoke-static {}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 36
    new-instance v7, Lcom/airbnb/lottie/AnimatableTransform;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableTransform$1;)V

    return-object v7
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;
    .locals 9

    const-string v0, "a"

    .line 45
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    const-string v2, "k"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    goto :goto_0

    :cond_0
    const-string v0, "LOTTIE"

    const-string v1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    :goto_0
    move-object v3, v1

    const-string v0, "p"

    .line 56
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    const-string v0, "position"

    .line 61
    invoke-static {v0}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    move-object v4, v1

    :goto_1
    const-string/jumbo v0, "s"

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v0

    goto :goto_2

    .line 69
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v5, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v5}, Lcom/airbnb/lottie/ScaleXY;-><init>()V

    invoke-direct {v0, v2, v5}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V

    :goto_2
    move-object v5, v0

    const-string/jumbo v0, "r"

    .line 72
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "rz"

    .line 74
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 77
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "rotation"

    .line 79
    invoke-static {v0}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    move-object v6, v1

    :goto_3
    const-string v0, "o"

    .line 82
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 84
    invoke-static {p0, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object p0

    goto :goto_4

    .line 87
    :cond_5
    new-instance p0, Lcom/airbnb/lottie/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    :goto_4
    move-object v7, p0

    .line 89
    new-instance p0, Lcom/airbnb/lottie/AnimatableTransform;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableTransform$1;)V

    return-object p0
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
