.class Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 1

    .line 347
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

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

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    iget-boolean v0, v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange showKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$200(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->showSafeKeyboard()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$300(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
