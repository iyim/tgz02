.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;
.super Ljava/lang/Object;
.source "FingerDragHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->resetCallBackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

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

    .line 244
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;F)F

    .line 246
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->invalidate()V

    .line 247
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$6;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$302(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;Z)Z

    return-void
.end method
