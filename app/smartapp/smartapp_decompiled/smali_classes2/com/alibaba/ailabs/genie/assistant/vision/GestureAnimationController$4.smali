.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setBeforeAnimator(Landroid/widget/FrameLayout;Landroid/widget/ImageView;ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

.field final synthetic val$father:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;->val$father:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 588
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$1000(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$4;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
