.class Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;->doScaleAnim(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

.field final synthetic val$drawable:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->this$0:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->val$drawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 323
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->val$drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 325
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->val$view:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator$1;->val$drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
