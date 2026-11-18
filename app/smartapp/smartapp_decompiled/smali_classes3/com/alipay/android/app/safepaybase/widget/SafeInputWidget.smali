.class public Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private isCleanIconShowing:Z

.field private mActivity:Landroid/app/Activity;

.field private mBizId:I

.field private mBottom:I

.field private mButtonOk:Landroid/widget/Button;

.field private mButtonOkVerticalLine:Landroid/view/View;

.field private mCleanDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditText:Landroid/widget/EditText;

.field private mEncryptRandomString:Ljava/lang/String;

.field private mIsSimplePassword:Z

.field private mLeft:I

.field private mLocalView:Landroid/view/View;

.field private mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRight:I

.field private mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

.field private mTop:I

.field private mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private rsaPublicKey:Ljava/lang/String;

.field private util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 30
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .line 32
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    .line 33
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    .line 34
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    const/4 v2, -0x1

    .line 36
    iput v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    .line 37
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 38
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    .line 39
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    const-string v2, ""

    .line 40
    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 41
    sget-object v2, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 43
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mActivity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    .line 53
    iput-boolean p2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initView(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->initPwdInputView()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    return p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/widget/Button;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->setCleanIcon()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object p0
.end method

.method private initPwdInputView()V
    .locals 5

    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v3, Lcom/alipay/android/safepaysdk/R$id;->common_input_item:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setBizId(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 65
    sget v3, Lcom/alipay/android/safepaysdk/R$drawable;->input_clean_icon:I

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$1;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void
.end method

.method private setCleanIcon()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->clearText()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->clear(I)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    return-object v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBizId:I

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 134
    sget v0, Lcom/alipay/android/safepaysdk/R$layout;->safe_input_widget:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    .line 136
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v0, Lcom/alipay/android/safepaysdk/R$id;->input_et_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    .line 137
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$2;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v0, Lcom/alipay/android/safepaysdk/R$id;->spwd_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    .line 146
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 149
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v0, Lcom/alipay/android/safepaysdk/R$id;->button_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    .line 150
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    new-instance v0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget$3;-><init>(Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 163
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLocalView:Landroid/view/View;

    sget v0, Lcom/alipay/android/safepaysdk/R$id;->button_ok_verticalline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 214
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWidth()I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mCleanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr p1, v1

    .line 219
    div-int/lit8 v3, v1, 0x4

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    sub-int/2addr v0, v2

    .line 220
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    .line 221
    iget p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mRight:I

    .line 222
    iget p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBottom:I

    .line 225
    :cond_0
    iget p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->isCleanIconShowing:Z

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 228
    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mLeft:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mRight:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mTop:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mBottom:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->clearText()V

    :cond_1
    return p2

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEncryptRandomString:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 116
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    :cond_0
    return-void
.end method

.method public setNeedComfirm(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOkVerticalLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOkButtonText(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mButtonOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->rsaPublicKey:Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setRsaPublicKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    .line 101
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mIsSimplePassword:Z

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mSimpleEditText:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SafeInputWidget;->mOnConfirmListener:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    :cond_0
    return-void
.end method
