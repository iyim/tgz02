.class Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;
.super Ljava/lang/Object;
.source "TBToastManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$smallerAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

.field final synthetic val$toastView:Landroid/view/View;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iput-object p3, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$smallerAnim:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$toastView:Landroid/view/View;

    iput-object p5, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 352
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mLongClicked:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$smallerAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$smallerAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    const v1, 0x525354

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    invoke-virtual {p1, v1, v2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeMessages(ILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    .line 359
    new-array p1, p1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->access$000(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;)F

    move-result v2

    aput v2, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 360
    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$1;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    new-instance v1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$2;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3$2;-><init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 402
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 403
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 404
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$3;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iput-boolean v0, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mLongClicked:Z

    :cond_1
    return v0
.end method
