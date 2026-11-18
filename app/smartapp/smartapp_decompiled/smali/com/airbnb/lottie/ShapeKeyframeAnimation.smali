.class Lcom/airbnb/lottie/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/BaseKeyframeAnimation;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
        "Lcom/airbnb/lottie/ShapeData;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/airbnb/lottie/ShapeData;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/ShapeData;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    new-instance p1, Lcom/airbnb/lottie/ShapeData;

    invoke-direct {p1}, Lcom/airbnb/lottie/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "Lcom/airbnb/lottie/ShapeData;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 16
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ShapeData;

    .line 17
    iget-object p1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/ShapeData;

    .line 19
    iget-object v1, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    invoke-virtual {v1, v0, p1, p2}, Lcom/airbnb/lottie/ShapeData;->interpolateBetween(Lcom/airbnb/lottie/ShapeData;Lcom/airbnb/lottie/ShapeData;F)V

    .line 20
    iget-object p1, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/ShapeData;

    iget-object p2, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/ShapeData;Landroid/graphics/Path;)V

    .line 21
    iget-object p1, p0, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ShapeKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
