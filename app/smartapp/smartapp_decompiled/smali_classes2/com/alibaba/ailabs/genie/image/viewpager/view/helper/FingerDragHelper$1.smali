.class Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$1;
.super Ljava/lang/Object;
.source "FingerDragHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    float-to-int p1, p1

    neg-int p1, p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/nine/ViewHelper;->setScrollY(Landroid/view/View;I)V

    return-void
.end method
