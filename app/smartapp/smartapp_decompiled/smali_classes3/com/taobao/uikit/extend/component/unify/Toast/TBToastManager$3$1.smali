.class Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;
.super Ljava/lang/Object;
.source "TBToastManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 368
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 369
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 370
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->access$002(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;F)F

    .line 371
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 372
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 373
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$toastView:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
