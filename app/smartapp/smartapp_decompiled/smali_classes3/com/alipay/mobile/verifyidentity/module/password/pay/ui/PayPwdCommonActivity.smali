.class public abstract Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;
.super Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;
.source "PayPwdCommonActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "PayPwdCommonActivity"


# instance fields
.field protected isShowGetBackPwd:Z

.field protected mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field protected mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

.field protected mBack:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

.field protected mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

.field protected mLoading:Landroid/graphics/drawable/AnimationDrawable;

.field protected mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

.field protected mRoot:Landroid/view/View;

.field protected mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

.field protected mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mTick:Landroid/widget/ImageView;

.field protected mTitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field protected mUser:Ljava/lang/String;

.field protected mViewHeight:I

.field protected mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

.field protected processBarMarginTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    .line 66
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 210
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    .line 211
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBarMarginTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->progress_layout:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    .line 213
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processBarMarginTop:I

    if-lez v3, :cond_0

    .line 215
    invoke-virtual {v2, v0, v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    :goto_0
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 7

    const-string v0, "setSafeKeyboardPwdInput"

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 230
    :try_start_0
    const-class v3, Landroid/widget/EditText;

    const-string v4, "setShowSoftInputOnFocus"

    .line 231
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 234
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 236
    sget-object v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :goto_0
    :try_start_1
    const-class v3, Landroid/widget/EditText;

    const-string v4, "setSoftInputShownOnFocus"

    .line 240
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 242
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 245
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 325
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePubKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v0, "\u670d\u52a1\u7aef\u6ca1\u6709\u63d0\u4f9b\u65b0\u7684\u516c\u94a5\uff0c\u4e0d\u66f4\u65b0"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->generatePubKey(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPubKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setRsaPublicKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected clearInputContent()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->clearText()V

    return-void
.end method

.method protected hideKeyboard()V
    .locals 2

    .line 366
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v1, "hideKeyboard()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method protected initContent()V
    .locals 2

    .line 157
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "footRemark"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mContent:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected initGoOther()V
    .locals 3

    .line 113
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_other:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isFindPPW"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasOthers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pwd_other"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 131
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v1, "\u663e\u793a\u9009\u62e9\u5176\u5b83\u65b9\u5f0f\u5165\u53e3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pwd_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_forget_in_layout:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 151
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v1, "\u5728\u4e0d\u663e\u793a\u5176\u5b83\u65b9\u5f0f\u5165\u53e3\u7684\u60c5\u51b5\u4e0b\uff0c\u6839\u636e\u9700\u8981\uff0c\u663e\u793a\u5fd8\u8bb0\u5bc6\u7801\u5165\u53e3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected initInput()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isSimplePwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->initPwdInput()V

    .line 185
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a()V

    return-void
.end method

.method protected initKeyBoard(Landroid/view/ViewGroup;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v1, "initKeyBoard and new AlipayKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeKeyboard(Landroid/widget/FrameLayout;)V

    .line 197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected initProgress()V
    .locals 2

    .line 166
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->pwd_input_area:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 167
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_progress_new:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    const v1, -0xef7117

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setBarColor(I)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->start()V

    .line 170
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->template_pay_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    .line 171
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_progress_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loadingTip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initPwdInput()V
    .locals 3

    .line 251
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSixPwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_sixpwd_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    .line 253
    new-instance v0, Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPubKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setRsaPublicKey(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTimestamp:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a(Landroid/widget/EditText;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->addView(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected initSubtitle()V
    .locals 2

    .line 309
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_subtitle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 310
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSubtitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_0
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->blank_margin_bottom:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->hideKeyboard()V

    .line 431
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string p2, "msp keyboard is showing"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 434
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 437
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNetError()V
    .locals 9

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->clearInputContent()V

    :cond_0
    const/16 v0, 0x8

    .line 406
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showProgress(I)V

    .line 407
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showKeyboard()V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->network_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$10;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$10;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    .line 419
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->give_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$11;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$11;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const/4 v0, 0x0

    .line 423
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p0

    .line 410
    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPwdError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 8

    .line 380
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_forget:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    :goto_0
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isShowGetBackPwd:Z

    if-nez p1, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$8;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    move-object v4, p1

    .line 388
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_input_again:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const/4 p1, 0x0

    .line 395
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v1, 0x0

    move-object v0, p0

    .line 380
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected showKeyBoardDelay(J)V
    .locals 2

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected showKeyboard()V
    .locals 5

    .line 352
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showKeyboard isSimplePwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->isSimplePwd:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v4}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAlipayKeyboard:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    sget-object v3, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v4}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    :goto_0
    return-void
.end method

.method protected showProgress(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->start()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mAPLinearLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    :goto_0
    return-void
.end method

.method protected startAnimationDone()V
    .locals 4

    .line 86
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v1, "animation done"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mCustomProgressWheel:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$drawable;->pwd_success_blue_notice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mTick:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mLoading:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->a:Ljava/lang/String;

    const-string v3, "FAIL to start success animation!"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pwd_PASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mProgressText:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_verify_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
