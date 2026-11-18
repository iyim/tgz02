.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setAfterAnimator(Landroid/widget/FrameLayout;Landroid/view/View;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

.field final synthetic val$father:Landroid/widget/FrameLayout;

.field final synthetic val$isScale:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;ZLandroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$isScale:Z

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$target:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$father:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 711
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$isScale:Z

    if-eqz p1, :cond_0

    .line 712
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$target:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$5;->val$father:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
