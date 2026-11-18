.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v0, 0x8000

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-ne p2, v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$400(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 v0, 0x40

    const/4 v2, 0x0

    .line 485
    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 486
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object p1

    .line 487
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {p2, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    if-ne p2, v1, :cond_4

    .line 492
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    sget v2, Lcom/alipay/android/safepaysdk/R$id;->key_ABC:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    sget v2, Lcom/alipay/android/safepaysdk/R$id;->key_123:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {p2, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    nop

    :cond_3
    :goto_0
    return v1

    :cond_4
    if-ne p2, v0, :cond_5

    .line 502
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 503
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$500(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {p2, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->access$600(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    :cond_5
    return v1
.end method
