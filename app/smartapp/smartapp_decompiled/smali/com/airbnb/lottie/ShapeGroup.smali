.class Lcom/airbnb/lottie/ShapeGroup;
.super Ljava/lang/Object;
.source "ShapeGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeGroup$Factory;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeGroup;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/airbnb/lottie/ShapeGroup;->items:Ljava/util/List;

    return-void
.end method

.method static shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "ty"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xca7

    if-eq v1, v2, :cond_b

    const/16 v2, 0xcc6

    if-eq v1, v2, :cond_a

    const/16 v2, 0xcdf

    if-eq v1, v2, :cond_9

    const/16 v2, 0xda0

    if-eq v1, v2, :cond_8

    const/16 v2, 0xe31

    if-eq v1, v2, :cond_7

    const/16 v2, 0xe55

    if-eq v1, v2, :cond_6

    const/16 v2, 0xe5f

    if-eq v1, v2, :cond_5

    const/16 v2, 0xe61

    if-eq v1, v2, :cond_4

    const/16 v2, 0xe79

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe7e

    if-eq v1, v2, :cond_2

    const/16 v2, 0xceb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcec

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "gs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_1
    const-string v1, "gr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "tm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "rc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto :goto_1

    :cond_8
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    goto :goto_1

    :cond_9
    const-string v1, "gf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    goto :goto_1

    :cond_a
    const-string v1, "fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_1

    :cond_b
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    goto :goto_1

    :cond_c
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown shape type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOTTIE"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 41
    :pswitch_0
    invoke-static {p0}, Lcom/airbnb/lottie/MergePaths$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/MergePaths;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/PolystarShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/PolystarShape;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/ShapeTrimPath$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeTrimPath;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_3
    invoke-static {p0, p1}, Lcom/airbnb/lottie/RectangleShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/RectangleShape;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/CircleShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/CircleShape;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/ShapePath$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapePath;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/GradientFill$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/GradientFill;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_8
    invoke-static {p0, p1}, Lcom/airbnb/lottie/ShapeFill$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeFill;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_9
    invoke-static {p0, p1}, Lcom/airbnb/lottie/GradientStroke$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/GradientStroke;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_a
    invoke-static {p0, p1}, Lcom/airbnb/lottie/ShapeStroke$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeStroke;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_b
    invoke-static {p0, p1}, Lcom/airbnb/lottie/ShapeGroup$Factory;->access$000(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeGroup;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
