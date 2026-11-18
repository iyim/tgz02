.class Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;
.super Ljava/lang/Object;
.source "TBToastManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;Landroid/view/View;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iput-object p3, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$toastView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    iget-boolean p1, p1, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mLongClicked:Z

    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$toastView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 417
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$toastView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 418
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$4;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    const v1, 0x525354

    const-wide/16 v2, 0x320

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->access$100(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    :cond_1
    :goto_0
    return p2
.end method
