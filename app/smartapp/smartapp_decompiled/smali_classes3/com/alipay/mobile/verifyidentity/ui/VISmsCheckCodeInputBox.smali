.class public Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;
.super Landroid/widget/RelativeLayout;
.source "VISmsCheckCodeInputBox.java"


# static fields
.field public static final DEFAULT_COUNT_DOWN:I = 0x3c


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field private d:Landroid/widget/Button;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x3c

    .line 27
    iput p2, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    .line 34
    new-instance p2, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 47
    new-instance p2, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->g:Landroid/animation/Animator$AnimatorListener;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->sms_check_code_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->check_code_input:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 79
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setItemPositionStyle(I)V

    .line 80
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->check_code_resend:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->check_code_count_down:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    .line 82
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->table_square_bottom:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setBackgroundResource(I)V

    .line 83
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputType(I)V

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a()V

    return-void
.end method

.method private a()V
    .locals 6

    .line 89
    const-class v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDurationScale"

    .line 90
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    .line 94
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v1, "setDurationScale"

    invoke-static {v0, v1, v3, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->check_code_resend:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->linkColorBlue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public clearInput()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 181
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public enableResend()V
    .locals 1

    .line 175
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCountDown(I)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 124
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    return-void
.end method

.method public setCountDownTemplate(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->b:Ljava/lang/String;

    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setHint(Ljava/lang/String;)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMaxCodeCount(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setLength(I)V

    :cond_0
    return-void
.end method

.method public setName(I)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->setInputName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setResendClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setFocusable(Z)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->requestFocus()Z

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->c:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    .line 190
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->getSafeEtContent()Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public startCountDown()V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    iget v4, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    const/4 v5, 0x1

    aput v4, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->a:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->g:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
