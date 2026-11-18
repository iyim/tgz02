.class public Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;
.source "MoneyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AbstractKeyboard;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    sget v1, Lcom/alipay/android/safepaysdk/R$layout;->keyboard_money:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    .line 71
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onKeyboardListener:Lcom/alipay/android/app/safepaybase/alikeyboard/OnKeyboardListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private getRowHeight(Landroid/content/Context;)I
    .locals 4

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p1, v0

    .line 122
    div-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    const-wide v2, 0x3fddd2f1a9fbe76dL    # 0.466

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 82
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->getRowHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    iput p1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 93
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 95
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 96
    new-instance v8, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v8}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 97
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->keyboardView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 105
    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private onTouchDown(Landroid/view/View;)Z
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 45
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_del:I

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onDel()V

    goto :goto_0

    .line 47
    :cond_0
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_space:I

    if-ne v0, v1, :cond_1

    const-string p1, " "

    .line 49
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onInput(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onInput(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTouchUp(Landroid/view/View;)Z
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 62
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->key_enter:I

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onOK()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onTouchDown(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/MoneyKeyboard;->onTouchUp(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
