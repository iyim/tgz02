.class Lcom/airbnb/lottie/StaticKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "StaticKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/KeyframeAnimation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe<",
            "TT;>;F)TT;"
        }
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/airbnb/lottie/StaticKeyframeAnimation;->initialValue:Ljava/lang/Object;

    return-object p1
.end method

.method public setProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
