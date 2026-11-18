.class Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;
.super Ljava/lang/Object;
.source "VISmsCheckCodeInputBox.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

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
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$300(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 49
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->colorccc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 51
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
