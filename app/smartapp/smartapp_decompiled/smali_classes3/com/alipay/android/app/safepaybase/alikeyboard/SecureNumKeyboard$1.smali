.class Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;
.super Ljava/lang/Object;
.source "SecureNumKeyboard.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initTtsIfTalkBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 193
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 205
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;->this$0:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z

    :cond_0
    return-void
.end method
