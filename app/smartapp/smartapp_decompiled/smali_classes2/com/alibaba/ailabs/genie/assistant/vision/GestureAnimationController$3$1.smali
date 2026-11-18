.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 515
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 519
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detected out animator canceled"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 520
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 525
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detected out animator ended"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;->mIsCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$900(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
