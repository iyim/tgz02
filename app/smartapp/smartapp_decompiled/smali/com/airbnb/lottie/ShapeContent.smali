.class Lcom/airbnb/lottie/ShapeContent;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapePath;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    .line 19
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapePath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->name:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/ShapePath;->getShapePath()Lcom/airbnb/lottie/AnimatableShapeValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableShapeValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 22
    iget-object p1, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 23
    iget-object p1, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/airbnb/lottie/ShapeContent;->isPathValid:Z

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/airbnb/lottie/ShapeContent;->invalidate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 38
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_0

    nop

    nop

    .line 39
    invoke-virtual {v0}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
