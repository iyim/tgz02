.class Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;
.super Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAnimationFrameImpl"
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MILLIS:J = 0x10L

.field private static final MSG_FRAME_CALLBACK:I = 0x64


# instance fields
.field private callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

.field private isRunning:Z

.field private mInnerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;-><init>()V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;->doFrame()V

    .line 169
    :cond_0
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    .line 158
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method terminate()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->clear()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    return-void
.end method
