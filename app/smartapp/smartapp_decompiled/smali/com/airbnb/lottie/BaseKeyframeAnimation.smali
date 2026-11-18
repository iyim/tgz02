.class abstract Lcom/airbnb/lottie/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lcom/airbnb/lottie/Keyframe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/Keyframe<",
            "TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/Keyframe<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/Keyframe<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    return-void
.end method

.method private getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/Keyframe<",
            "TK;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    .line 66
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 67
    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    return-object v0

    .line 71
    :cond_1
    :goto_0
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    return-object v0

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There are no keyframes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getCurrentKeyframeProgress()F
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 92
    :cond_1
    iget v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v2

    sub-float/2addr v1, v2

    .line 93
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v3

    sub-float/2addr v2, v3

    .line 95
    iget-object v0, v0, Lcom/airbnb/lottie/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private getEndProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getStartDelayProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getProgress()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method setIsDiscrete()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    return-void
.end method

.method setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getEndProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    :cond_1
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-void

    .line 48
    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    const/4 p1, 0x0

    .line 50
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
