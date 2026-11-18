.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "SecureNumKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;


# static fields
.field public static final FLAG_IDCARD:I = 0x2

.field public static final FLAG_PHONE:I = 0x1


# instance fields
.field private fake_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field public mFlag:I

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 46
    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    .line 54
    iput p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 57
    sget v2, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_secure_num:I

    invoke-virtual {p3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 58
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 60
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initTtsIfTalkBack()V

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    return p1
.end method

.method private announceTextOut(I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Ljava/lang/String;)V

    return-void
.end method

.method private announceTextOut(Landroid/widget/TextView;)V
    .locals 0

    .line 290
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Ljava/lang/String;)V

    return-void
.end method

.method private announceTextOut(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 9

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p1, v0

    .line 144
    div-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    const-wide v5, 0x3fddd2f1a9fbe76dL    # 0.466

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int p1, v0

    int-to-double v0, p1

    int-to-double v5, v2

    const-wide v7, 0x3fd6666666666666L    # 0.35

    .line 150
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    div-double/2addr v5, v3

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    double-to-int p1, v5

    :cond_1
    return p1
.end method

.method private initTtsIfTalkBack()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard$1;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 90
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 98
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 100
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 101
    invoke-direct {p0, v6}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->setEventListener(Landroid/view/View;)V

    .line 103
    invoke-direct {p0, v6}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->setDynamicTextView(Landroid/view/View;)V

    .line 104
    instance-of v7, v6, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v7, :cond_1

    .line 105
    move-object v7, v6

    nop

    nop

    .line 106
    invoke-virtual {v7, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$SendAccessiBilityEventListener;)V

    .line 108
    :cond_1
    instance-of v7, v6, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v7, :cond_2

    .line 109
    nop

    nop

    .line 110
    invoke-virtual {v6, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V

    .line 111
    invoke-virtual {v6, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private isZhLanguage()Z
    .locals 2

    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 312
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

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 172
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_num_del1:I

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onDel()V

    goto :goto_0

    .line 174
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 175
    nop

    nop

    .line 176
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onInput(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 0

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

    .line 258
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_0

    .line 260
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 263
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_del:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

    :cond_0
    return v1

    :cond_1
    if-ne p2, v1, :cond_3

    .line 268
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p1, :cond_2

    .line 269
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_already_del:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

    :cond_2
    return v1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 274
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p1, :cond_4

    .line 275
    sget p1, Lcom/alipay/android/safepaysdk/R$string;->msp_secure_keyboard_del:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(I)V

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

    .line 231
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_0

    .line 233
    iget-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->fake_view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 236
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_0
    return v1

    :cond_1
    if-ne p2, v1, :cond_3

    .line 241
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_2

    .line 242
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_2
    return v1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 247
    iget-boolean p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    if-eqz p2, :cond_4

    .line 248
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->announceTextOut(Landroid/widget/TextView;)V

    :cond_4
    return v1
.end method

.method private setDynamicTextView(Landroid/view/View;)V
    .locals 3

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_num_dymic:I

    if-eq v0, v1, :cond_0

    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-void

    .line 126
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 127
    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mFlag:I

    if-ne v0, v1, :cond_2

    const-string v0, "X"

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "-"

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    sget v0, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_num_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private setEventListener(Landroid/view/View;)V
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 321
    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result p1

    return p1
.end method

.method public handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->proccessAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onTouchDown(Landroid/view/View;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInit(I)V
    .locals 1

    if-nez p1, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->isZhLanguage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->mTextToSpeechInitialized:Z

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureNumKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
