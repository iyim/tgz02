.class Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;
.super Ljava/lang/Object;
.source "VISmsCheckCodeInputBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

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
    .locals 4

    .line 37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    .line 43
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
