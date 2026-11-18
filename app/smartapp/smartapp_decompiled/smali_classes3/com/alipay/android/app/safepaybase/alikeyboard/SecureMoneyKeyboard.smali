.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureMoneyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;


# instance fields
.field private fake_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 4

    .line 106
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 40
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 108
    sget v3, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_secure_money:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 109
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 111
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->initTtsIfTalkBack()V

    .line 114
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method private announceTextOut(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Ljava/lang/String;)V

    return-void
.end method

.method private announceTextOut(Landroid/widget/TextView;)V
    .locals 1

    .line 261
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    sget v0, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_key_dot:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Ljava/lang/String;)V

    return-void
.end method

.method private announceTextOut(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 4

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p1, v0

    .line 178
    div-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    const-wide v2, 0x3fddd2f1a9fbe76dL    # 0.466

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 186
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 124
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    iput p1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 137
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 138
    invoke-direct {p0, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 140
    instance-of v8, v7, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v8, :cond_1

    .line 141
    nop

    nop

    .line 142
    invoke-virtual {v7, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 150
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 151
    invoke-direct {p0, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->setEventListener(Landroid/view/View;)V

    .line 153
    instance-of v4, v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v4, :cond_4

    .line 154
    move-object v4, v3

    nop

    nop

    .line 155
    invoke-virtual {v4, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 157
    :cond_4
    instance-of v4, v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v4, :cond_5

    .line 158
    nop

    nop

    .line 159
    invoke-virtual {v3, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 160
    invoke-virtual {v3, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 161
    invoke-virtual {v3, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private isZhLanguage()Z
    .locals 2

    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_del:I

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onDel()V

    goto :goto_0

    .line 85
    :cond_0
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_space:I

    if-ne v0, v1, :cond_1

    const-string p1, " "

    .line 87
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 91
    nop

    nop

    .line 92
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onInput(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 100
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onOK()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v0, 0x8000

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-ne p2, v2, :cond_1

    .line 277
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_0

    .line 279
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 282
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_del:I

    .line 283
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

    :cond_0
    return v1

    :cond_1
    if-ne p2, v1, :cond_3

    .line 288
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p1, :cond_2

    .line 289
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_already_del:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

    :cond_2
    return v1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 295
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p1, :cond_4

    .line 296
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_del:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(I)V

    :cond_4
    return v1
.end method

.method private proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v0, 0x8000

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-ne p2, v2, :cond_1

    .line 228
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_0

    .line 230
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 234
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_0
    return v1

    :cond_1
    if-ne p2, v1, :cond_3

    .line 239
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_2

    .line 240
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_2
    return v1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 245
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_4

    .line 246
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_4
    return v1
.end method

.method private setEventListener(Landroid/view/View;)V
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 325
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result p1

    return p1
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onOK()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onTouchDown(Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->isZhLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->mTextToSpeechInitialized:Z

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureMoneyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
