.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;
.super Ljava/lang/Object;
.source "PayPwdHalfActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V
    .locals 1

    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
