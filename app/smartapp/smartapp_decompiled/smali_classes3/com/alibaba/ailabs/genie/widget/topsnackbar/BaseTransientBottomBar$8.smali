.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousAnimatedIntValue:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

.field final synthetic val$viewHeight:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->val$viewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iget p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->val$viewHeight:I

    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 508
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 509
    invoke-static {}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->this$0:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar;->mView:Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 515
    :goto_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/BaseTransientBottomBar$8;->mPreviousAnimatedIntValue:I

    return-void
.end method
