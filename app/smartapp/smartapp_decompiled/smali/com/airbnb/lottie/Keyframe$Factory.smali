.class Lcom/airbnb/lottie/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory<",
            "TT;>;)",
            "Lcom/airbnb/lottie/Keyframe<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "t"

    .line 104
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x0

    .line 105
    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    const-string/jumbo v1, "s"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p3, v1, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "e"

    .line 111
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    invoke-interface {p3, v3, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    const-string v3, "o"

    .line 116
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "i"

    .line 117
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 119
    invoke-static {v3, p2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 120
    invoke-static {v4, p2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const/4 v4, 0x0

    const-string v5, "h"

    .line 123
    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v5, 0x1

    if-ne p0, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 128
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object p0

    move-object v2, p0

    move-object p3, v1

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 130
    iget p0, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {p0, v5, v4}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result p0

    iput p0, v2, Landroid/graphics/PointF;->x:F

    .line 131
    iget p0, v2, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v5, v4}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result p0

    iput p0, v2, Landroid/graphics/PointF;->y:F

    .line 132
    iget p0, v3, Landroid/graphics/PointF;->x:F

    invoke-static {p0, v5, v4}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result p0

    iput p0, v3, Landroid/graphics/PointF;->x:F

    .line 133
    iget p0, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v5, v4}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result p0

    iput p0, v3, Landroid/graphics/PointF;->y:F

    .line 134
    iget p0, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    invoke-static {p0, v2, v4, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    goto :goto_3

    .line 137
    :cond_5
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object p0

    :goto_3
    move-object v2, p0

    :goto_4
    move-object v6, p3

    move v8, v0

    move-object v5, v1

    move-object v7, v2

    goto :goto_5

    .line 140
    :cond_6
    invoke-interface {p3, p0, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v2

    const/4 v8, 0x0

    .line 143
    :goto_5
    new-instance p0, Lcom/airbnb/lottie/Keyframe;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object p0
.end method

.method static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 154
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v1}, Lcom/airbnb/lottie/Keyframe;->setEndFrames(Ljava/util/List;)V

    return-object v1
.end method
