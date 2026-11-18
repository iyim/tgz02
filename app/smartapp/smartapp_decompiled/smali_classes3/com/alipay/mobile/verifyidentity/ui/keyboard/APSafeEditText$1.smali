.class Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 1

    .line 314
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

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
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$000(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->showSafeKeyboard()V

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->requestFocus()Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    .line 330
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
