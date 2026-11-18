.class abstract Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;
.super Ljava/lang/Object;
.source "PhysicsAnimationDriver.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;,
        Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;
    }
.end annotation


# instance fields
.field protected mAnimationEndListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;

.field private mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

.field protected mAnimationUpdateListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;

.field protected mHasFinished:Z

.field protected mValue:D

.field protected mVelocity:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mHasFinished:Z

    return-void
.end method

.method public doFrame()V
    .locals 8

    .line 89
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->runAnimationStep(J)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationUpdateListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;

    if-eqz v2, :cond_0

    .line 91
    iget-wide v4, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mValue:D

    iget-wide v6, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mVelocity:D

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;DD)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->hasFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationEndListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;

    if-eqz v1, :cond_1

    .line 95
    iget-wide v3, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mValue:D

    iget-wide v5, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mVelocity:D

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;->onAnimationEnd(Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;DD)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->clear()V

    :cond_2
    return-void
.end method

.method getCurrentValue()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mValue:D

    return-wide v0
.end method

.method getCurrentVelocity()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mVelocity:D

    return-wide v0
.end method

.method hasFinished()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mHasFinished:Z

    return v0
.end method

.method abstract isAtRest()Z
.end method

.method abstract onAnimationStart(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract runAnimationStep(J)V
.end method

.method setOnAnimationEndListener(Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationEndListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationEndListener;

    return-void
.end method

.method setOnAnimationUpdateListener(Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationUpdateListener:Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver$OnAnimationUpdateListener;

    return-void
.end method

.method start(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->onAnimationStart(Ljava/util/Map;)V

    .line 62
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/PhysicsAnimationDriver;->mAnimationFrame:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;

    invoke-virtual {p1, p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;->requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V

    return-void
.end method
