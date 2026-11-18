.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;
.super Ljava/lang/Object;
.source "FingerDragHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->exitWithTranslation(F)V
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

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

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
    .locals 2

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)V

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 204
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$4;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

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
