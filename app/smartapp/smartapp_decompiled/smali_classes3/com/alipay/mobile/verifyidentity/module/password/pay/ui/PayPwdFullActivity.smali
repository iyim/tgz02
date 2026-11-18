.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;
.super Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;
.source "PayPwdFullActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "PayPwdFullActivity"


# instance fields
.field private b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;-><init>()V

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
    .locals 2

    .line 81
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->pwd_titlebar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APRelativeLayout;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected initViewHeight()V
    .locals 3

    .line 69
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mViewHeight:I

    .line 77
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "102"

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->notifyCancel(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mIsLogicInterrupted:Z

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->activity_paypwd_full:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->setContentView(I)V

    .line 33
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_bg:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mRoot:Landroid/view/View;

    .line 34
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->pwd_wrapper:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    .line 35
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->auth_titleBar:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->b:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    .line 36
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->keyboard_layout:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initViewHeight()V

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->a()V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initSubtitle()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initKeyBoard(Landroid/view/ViewGroup;)V

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initInput()V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initProgress()V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initContent()V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->initGoOther()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onStart()V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;->showKeyBoardDelay(J)V

    :cond_0
    return-void
.end method
