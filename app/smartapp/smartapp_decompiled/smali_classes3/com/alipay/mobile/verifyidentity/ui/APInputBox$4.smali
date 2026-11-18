.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .line 423
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

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
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 426
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 428
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
