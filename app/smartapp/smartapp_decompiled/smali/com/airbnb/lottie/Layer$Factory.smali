.class Lcom/airbnb/lottie/Layer$Factory;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;
    .locals 23

    move-object/from16 v2, p0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 192
    new-instance v22, Lcom/airbnb/lottie/Layer;

    move-object/from16 v0, v22

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/Layer$LayerType;

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v11

    .line 196
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    sget-object v20, Lcom/airbnb/lottie/Layer$MatteType;->None:Lcom/airbnb/lottie/Layer$MatteType;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/Layer$1;)V

    return-object v22
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "nm"

    .line 201
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "refId"

    .line 202
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "ind"

    .line 203
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string/jumbo v1, "ty"

    const/4 v2, -0x1

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 211
    sget-object v2, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer$LayerType;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 212
    invoke-static {}, Lcom/airbnb/lottie/Layer$LayerType;->values()[Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_0

    .line 214
    :cond_0
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    :goto_0
    move-object v12, v1

    const-wide/16 v1, -0x1

    const-string v3, "parent"

    .line 217
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 219
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Solid:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v12, v1, :cond_1

    const-string/jumbo v1, "sw"

    .line 220
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    const-string/jumbo v3, "sh"

    .line 221
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    const-string/jumbo v4, "sc"

    .line 222
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move v15, v1

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    const-string v1, "ks"

    .line 229
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v18

    .line 231
    invoke-static {}, Lcom/airbnb/lottie/Layer$MatteType;->values()[Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v1

    const-string/jumbo v3, "tt"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    aget-object v20, v1, v3

    .line 232
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "masksProperties"

    .line 235
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 237
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 238
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/airbnb/lottie/Mask$Factory;->newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Mask;

    move-result-object v2

    .line 239
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "shapes"

    .line 243
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 245
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 246
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/airbnb/lottie/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 248
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v3, "sr"

    .line 253
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v3, v1

    const-string/jumbo v1, "st"

    .line 254
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float v22, v1, v2

    .line 258
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/Layer$LayerType;

    if-ne v12, v1, :cond_5

    const-string/jumbo v1, "w"

    .line 259
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const-string v2, "h"

    .line 260
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v19

    mul-float v2, v2, v19

    float-to-int v2, v2

    move/from16 v19, v1

    move/from16 v23, v2

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    const/16 v23, 0x0

    :goto_4
    const-string v1, "ip"

    .line 263
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v2, v1

    const-string v1, "op"

    .line 264
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v1, v0

    const/16 v21, 0x0

    cmpl-float v0, v2, v21

    if-lez v0, :cond_6

    .line 268
    new-instance v0, Lcom/airbnb/lottie/Keyframe;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    move-object/from16 p0, v0

    move/from16 v29, v1

    move-object/from16 v1, p1

    move/from16 v30, v2

    move-object/from16 v2, v24

    move/from16 v24, v3

    move-object/from16 v3, v25

    move/from16 v25, v15

    move-object v15, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v5

    move/from16 v5, v27

    move-object/from16 v27, v6

    move-object/from16 v6, v28

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 269
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    move/from16 v29, v1

    move/from16 v30, v2

    move/from16 v24, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v25, v15

    move-object v15, v4

    :goto_5
    cmpl-float v0, v29, v21

    if-lez v0, :cond_7

    goto :goto_6

    .line 273
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-float v0, v0

    move/from16 v29, v0

    .line 274
    :goto_6
    new-instance v6, Lcom/airbnb/lottie/Keyframe;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 275
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v5, v30

    move-object v7, v6

    move-object/from16 v6, v28

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 276
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v0

    cmpg-float v0, v29, v0

    if-gtz v0, :cond_8

    .line 279
    new-instance v7, Lcom/airbnb/lottie/Keyframe;

    .line 280
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v5, v29

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 281
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_8
    new-instance v28, Lcom/airbnb/lottie/Layer;

    move-object/from16 v0, v28

    const/16 v21, 0x0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v10

    move-object v6, v12

    move-wide v7, v13

    move-object/from16 v10, v26

    move-object/from16 v11, v18

    move/from16 v12, v25

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v25, v15

    move/from16 v15, v24

    move/from16 v16, v22

    move/from16 v17, v19

    move/from16 v18, v23

    move-object/from16 v19, v25

    invoke-direct/range {v0 .. v21}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/Layer$1;)V

    return-object v28
.end method
