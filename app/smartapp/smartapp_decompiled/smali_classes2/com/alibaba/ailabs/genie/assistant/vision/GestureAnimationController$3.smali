.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 491
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 495
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detected in animator canceled"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 501
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detected in animator ended"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->mIsCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$800(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$800(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$900(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 509
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$900(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 511
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0x3e8

    .line 512
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0x258

    .line 513
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 514
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 532
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$802(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 533
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$800(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 534
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detected out animator started"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
