.class Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;
.super Ljava/lang/Object;
.source "TBToastManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 328
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager$2;->val$tbToast:Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    const v1, 0x525354

    const-wide/16 v2, 0x320

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->access$100(Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;IJ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
