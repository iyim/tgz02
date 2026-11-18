.class public Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;
.super Ljava/lang/Object;
.source "FpFullViewDialog.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;


# static fields
.field private static final JSON_FULL_VIEW:Ljava/lang/String; = "fullView"

.field private static final JSON_HEIGHT:Ljava/lang/String; = "height"

.field private static final JSON_NAV_CONFLICT:Ljava/lang/String; = "navConflict"

.field private static final JSON_START_X:Ljava/lang/String; = "startX"

.field private static final JSON_START_Y:Ljava/lang/String; = "startY"

.field private static final JSON_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mCancel:Landroid/widget/ImageView;

.field private mDialog:Landroid/app/Dialog;

.field private mIsExit:Z

.field private mIsNavConflict:Z

.field private mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

.field private mRect:Landroid/graphics/Rect;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field private mTips:Landroid/widget/TextView;

.field private mToPwd:Landroid/widget/TextView;

.field private mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsExit:Z

    return p0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsExit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/app/Dialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsNavConflict:Z

    return p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->updateNavigation(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getStatusBarHeight(Landroid/app/Activity;)I
    .locals 3

    .line 305
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 306
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 308
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FpFullViewDialog"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private initFullViewParams(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 288
    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getFingerprintExtInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fullView"

    .line 290
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "startX"

    .line 291
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v2, "startY"

    .line 292
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v3, "width"

    .line 293
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v4, "height"

    .line 294
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v5, "navConflict"

    .line 295
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x0

    .line 297
    :goto_3
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 300
    :goto_4
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mRect:Landroid/graphics/Rect;

    .line 301
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsNavConflict:Z

    return-void
.end method

.method private showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    .line 94
    new-instance p3, Landroid/app/Dialog;

    invoke-direct {p3, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    .line 95
    iget-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 96
    iget-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fpfullview_dialog_layout"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 101
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    .line 104
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fpfullview_dialog_tips"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v3, "safepay_fp_open"

    invoke-interface {v2, v3}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsExit:Z

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fpfullview_dialog_cancel"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mCancel:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mCancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fpfullview_dialog_pwd"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mToPwd:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mToPwd:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$3;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    sget-object v2, Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    if-ne v0, v2, :cond_2

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mToPwd:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mToPwd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 152
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43020000    # 130.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 156
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p1

    .line 159
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 160
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 161
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget-object v5, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v0

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 162
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    sub-int p1, v0, p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p1, 0x30

    .line 166
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    iget-boolean p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsNavConflict:Z

    if-eqz p1, :cond_4

    .line 171
    invoke-direct {p0, v1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->updateNavigation(Z)V

    .line 174
    :cond_4
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 176
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$4;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$4;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$5;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$5;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 198
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 201
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p3

    const-string v0, "fpV1"

    const-string v1, "ShowFpFullViewDialogEx"

    invoke-virtual {p3, v0, v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    :goto_3
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FpFullViewDialog msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FpFullViewDialog::showDialog"

    invoke-virtual {p1, p3, p2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNavigation(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_2

    const/16 p1, 0x1002

    .line 323
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 328
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsExit:Z

    .line 243
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$8;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mIsExit:Z

    .line 223
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    new-instance p1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$7;

    invoke-direct {p1, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$7;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllButtonsGone()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    return-void
.end method

.method public showAnimation()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 1

    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->initFullViewParams(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$1;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateMsg(Ljava/lang/String;II)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->mTips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$6;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Ljava/lang/String;I)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
