.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->playDismissAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$600(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$700(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$7;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$600(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
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
