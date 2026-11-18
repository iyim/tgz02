.class Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 1

    .line 375
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    iget-boolean v0, v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hideNormalKeyboard(Landroid/widget/EditText;)V

    .line 392
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
