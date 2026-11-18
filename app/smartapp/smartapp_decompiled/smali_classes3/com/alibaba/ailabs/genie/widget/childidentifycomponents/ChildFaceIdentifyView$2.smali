.class Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$2;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->showViewResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 357
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 358
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
