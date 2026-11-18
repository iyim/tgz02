.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;
.super Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;
.source "PayPwdHalfActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "PayPwdHalfActivity"


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
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

.method private a([I)I
    .locals 2

    .line 215
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    const-string v1, "getReferenceViewHeight"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getLocationInWindow([I)V

    .line 219
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->getHeight()I

    move-result p1

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->getLocationInWindow([I)V

    .line 222
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mPwdInputLayout:Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APLinearLayout;->getHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method private a()V
    .locals 4

    .line 84
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    const-string v1, "animation down"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$anim;->anim_pwd_down:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 99
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->c()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->d:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private b()V
    .locals 6

    .line 112
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    const-string v1, "animation up"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->setVisibility(I)V

    .line 114
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$anim;->anim_pwd_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 115
    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/high16 v4, 0x7f000000

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 137
    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    new-instance v3, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 149
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private c()V
    .locals 9

    const/4 v0, 0x2

    .line 183
    new-array v1, v0, [I

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 185
    new-array v0, v0, [I

    .line 186
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a([I)I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    const/4 v4, 0x1

    .line 187
    aget v5, v0, v4

    add-int/2addr v3, v5

    aget v5, v1, v4

    sub-int/2addr v3, v5

    .line 188
    sget-object v5, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyBoardPosition[0]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget v8, v1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", keyBoardPosition[1]: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v4

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "position[0]:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "position[1]:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", referenceViewHeigh: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", coverHeight: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez v3, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    .line 199
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    if-eq v1, v2, :cond_1

    .line 200
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lp.height + coverHeight: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mViewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected initTitleBar()V
    .locals 2

    .line 228
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mTitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 229
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_back:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mBack:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mBack:Lcom/alipay/mobile/verifyidentity/ui/APImageView;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mTitle:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected initViewHeight()V
    .locals 5

    .line 157
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->b:I

    .line 162
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->b:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->c:I

    const/high16 v0, 0x43c80000    # 400.0f

    .line 165
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 168
    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->c:I

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    .line 170
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mViewReckonedHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", minHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mViewHeight: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mViewHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mIsLogicInterrupted:Z

    if-eqz p1, :cond_0

    return-void

    .line 46
    :cond_0
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->activity_paypwd_half:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->setContentView(I)V

    .line 47
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_bg:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mRoot:Landroid/view/View;

    .line 48
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->pwd_wrapper:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    .line 49
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->keyboard_layout:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->d:Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initViewHeight()V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initTitleBar()V

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initSubtitle()V

    .line 55
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initKeyBoard(Landroid/view/ViewGroup;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initInput()V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initProgress()V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initContent()V

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->initGoOther()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onWindowFocusChanged(Z)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->mWrapper:Lcom/alipay/mobile/verifyidentity/ui/APScrollView;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .line 66
    :cond_2
    :goto_0
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->a:Ljava/lang/String;

    const-string v0, "already visible"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
