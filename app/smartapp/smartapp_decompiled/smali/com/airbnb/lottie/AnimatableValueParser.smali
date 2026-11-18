.class Lcom/airbnb/lottie/AnimatableValueParser;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableValueParser$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final json:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final scale:F

.field private final valueFactory:Lcom/airbnb/lottie/AnimatableValue$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/AnimatableValue$Factory<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableValueParser;->json:Lorg/json/JSONObject;

    .line 20
    iput p2, p0, Lcom/airbnb/lottie/AnimatableValueParser;->scale:F

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/AnimatableValueParser;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 22
    iput-object p4, p0, Lcom/airbnb/lottie/AnimatableValueParser;->valueFactory:Lcom/airbnb/lottie/AnimatableValue$Factory;

    return-void
.end method

.method private static hasKeyframes(Ljava/lang/Object;)Z
    .locals 2

    .line 62
    instance-of v0, p0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    .line 66
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    nop

    nop

    const-string/jumbo v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/AnimatableValue$Factory<",
            "TT;>;)",
            "Lcom/airbnb/lottie/AnimatableValueParser<",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/airbnb/lottie/AnimatableValueParser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/airbnb/lottie/AnimatableValueParser;-><init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)V

    return-object v0
.end method

.method private parseInitialValue(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableValueParser;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/Keyframe;

    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    return-object p1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/AnimatableValueParser;->valueFactory:Lcom/airbnb/lottie/AnimatableValue$Factory;

    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableValueParser;->json:Lorg/json/JSONObject;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/lottie/AnimatableValueParser;->scale:F

    invoke-interface {p1, v0, v1}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseKeyframes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableValueParser;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "k"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/airbnb/lottie/AnimatableValueParser;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableValueParser;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget v2, p0, Lcom/airbnb/lottie/AnimatableValueParser;->scale:F

    iget-object v3, p0, Lcom/airbnb/lottie/AnimatableValueParser;->valueFactory:Lcom/airbnb/lottie/AnimatableValue$Factory;

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/lottie/Keyframe$Factory;->parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/AnimatableValueParser$Result<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseKeyframes()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseInitialValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/airbnb/lottie/AnimatableValueParser$Result;

    invoke-direct {v2, v0, v1}, Lcom/airbnb/lottie/AnimatableValueParser$Result;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v2
.end method
