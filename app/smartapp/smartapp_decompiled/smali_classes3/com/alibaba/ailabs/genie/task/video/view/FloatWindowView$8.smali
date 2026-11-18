.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$802(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->hideAllView()V

    .line 304
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->access$802(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
