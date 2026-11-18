.class public Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "NumKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard$KeyType;
    }
.end annotation


# static fields
.field public static final FLAG_IDCARD:I = 0x2

.field public static final FLAG_PHONE:I = 0x1


# instance fields
.field public mFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;I)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    .line 41
    iput p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 44
    sget v1, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_num:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 45
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 9

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p1, v0

    .line 104
    div-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    const-wide v5, 0x3fddd2f1a9fbe76dL    # 0.466

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int p1, v0

    int-to-double v0, p1

    int-to-double v5, v2

    const-wide v7, 0x3fd6666666666666L    # 0.35

    .line 110
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    div-double/2addr v5, v3

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    double-to-int p1, v5

    :cond_1
    return p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 58
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->keyboardView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    iput p1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 68
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 69
    invoke-direct {p0, v6}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->setDynamicTextView(Landroid/view/View;)V

    .line 70
    new-instance v7, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 71
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 134
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_num_del1:I

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onDel()V

    goto :goto_0

    .line 137
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onInput(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    const/4 p1, 0x0

    return p1
.end method

.method private setDynamicTextView(Landroid/view/View;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_num_dymic:I

    if-eq v0, v1, :cond_0

    return-void

    .line 81
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-void

    .line 85
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .line 86
    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->mFlag:I

    if-ne v0, v1, :cond_2

    const-string v0, "X"

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "-"

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    sget v0, Lcom/alipay/android/safepaysdk/R$drawable;->keyboard_key_num_bg:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
