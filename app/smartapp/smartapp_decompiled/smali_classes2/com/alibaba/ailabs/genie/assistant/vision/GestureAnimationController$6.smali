.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$6;
.super Ljava/lang/Object;
.source "GestureAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->setMiddleAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
