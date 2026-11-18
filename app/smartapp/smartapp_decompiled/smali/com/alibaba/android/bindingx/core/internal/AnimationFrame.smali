.class abstract Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;-><init>()V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .param p1    # Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract terminate()V
.end method
