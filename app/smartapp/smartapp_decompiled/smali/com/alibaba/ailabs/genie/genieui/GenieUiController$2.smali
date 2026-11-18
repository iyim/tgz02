.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->updateASRText(Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 527
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 528
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method
