.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;


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

    .line 464
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$2;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 468
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    .line 470
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
