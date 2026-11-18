.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.super Landroid/widget/LinearLayout;
.source "SimplePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;
    }
.end annotation


# instance fields
.field private mBizId:I

.field private mBlackPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mEncryptRandomString:Ljava/lang/String;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRsaPublicKey:Ljava/lang/String;

.field private mSimplePassword:Ljava/lang/String;

.field private mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

.field private mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    .line 43
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    const-string p1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    .line 44
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 46
    sget-object p1, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    .line 43
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/EditTextManager;->getEditTextUtils()Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    const-string p2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    .line 44
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    const-string p2, ""

    .line 45
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 46
    sget-object p2, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alipay/android/safepaysdk/R$layout;->safe_input_simple_password:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSimplePassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSimplePassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setPointView(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    return p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->util:Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    return-object p0
.end method

.method private initView()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 61
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->mini_linSimplePwdComponent:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mLayout:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    sget v1, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_2:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    sget v2, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_3:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 65
    sget v3, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_4:I

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 66
    sget v4, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_5:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 67
    sget v5, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_iv_6:I

    invoke-virtual {p0, v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    .line 69
    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget v0, Lcom/alipay/android/safepaysdk/R$id;->mini_spwd_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    .line 82
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$1;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$2;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureAccessbilityDelegate;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setPointView(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ge v1, p1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBlackPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public setBizId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mBizId:I

    return-void
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mEncryptRandomString:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mType:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mRsaPublicKey:Ljava/lang/String;

    return-void
.end method

.method public setmSubmitInterface(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->mSubmitInterface:Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    return-void
.end method
