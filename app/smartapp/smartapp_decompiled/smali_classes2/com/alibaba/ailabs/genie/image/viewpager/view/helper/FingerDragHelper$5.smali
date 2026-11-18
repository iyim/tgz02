.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;
.super Ljava/lang/Object;
.source "FingerDragHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$300(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$402(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;F)F

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$502(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;F)F

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$5;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper;->setScrollY(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
