.class Lcom/airbnb/lottie/AnimatableShapeValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableShapeValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue<",
        "Lcom/airbnb/lottie/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final convertTypePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/ShapeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/ShapeData;",
            ">;>;",
            "Lcom/airbnb/lottie/ShapeData;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 10
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/AnimatableShapeValue$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableShapeValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ShapeData;)V

    return-void
.end method


# virtual methods
.method convertType(Lcom/airbnb/lottie/ShapeData;)Landroid/graphics/Path;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/airbnb/lottie/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/ShapeData;Landroid/graphics/Path;)V

    .line 27
    iget-object p1, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->convertTypePath:Landroid/graphics/Path;

    return-object p1
.end method

.method bridge synthetic convertType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/airbnb/lottie/ShapeData;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/ShapeData;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableShapeValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ShapeData;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/AnimatableShapeValue;->convertType(Lcom/airbnb/lottie/ShapeData;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableShapeValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
