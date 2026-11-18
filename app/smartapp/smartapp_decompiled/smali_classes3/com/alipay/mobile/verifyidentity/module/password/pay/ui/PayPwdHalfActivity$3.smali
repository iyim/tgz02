.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;
.super Ljava/lang/Object;
.source "PayPwdHalfActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

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
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->showKeyBoardDelay(J)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
