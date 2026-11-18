.class Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;
.super Ljava/lang/Object;
.source "TBToastManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->startSmallerAnim(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

.field final synthetic val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

.field final synthetic val$toastView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Landroid/view/View;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->val$toastView:Landroid/view/View;

    iput-object p3, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->val$toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 312
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 313
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 314
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->access$002(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;F)F

    :goto_0
    return-void
.end method
