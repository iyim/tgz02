.class final Lunet/org/chromium/base/AnimationFrameTimeHistogram$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProGuard"


# instance fields
.field private final a:Lunet/org/chromium/base/AnimationFrameTimeHistogram;


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$1;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {p1}, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$1;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram;

    invoke-virtual {p1}, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram$1;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram;

    .line 1068
    iget-object p1, p1, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

    invoke-static {p1}, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->a(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)V

    return-void
.end method
