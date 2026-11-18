.class public Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"


# static fields
.field public static final ACTION_CANCEL:I = 0x0

.field public static final ACTION_TO_PWD:I = 0x2

.field private static final FP_INTERACTIVE_DEFAULT:I = -0x1

.field private static final FP_INTERACTIVE_FULLVIEW:I


# instance fields
.field private mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->isFullViewFp(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-direct {p1, p2}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-direct {p1, p2}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    :goto_0
    return-void
.end method

.method private isFullViewFp(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, -0x1

    .line 46
    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getFingerprintExtInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 48
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public dismiss(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->dismiss(I)V

    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->dismiss(Landroid/content/Context;)V

    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAllButtonsGone()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->setAllButtonsGone()V

    return-void
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V

    return-void
.end method

.method public showAnimation()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->showAnimation()V

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    return-void
.end method

.method public updateMsg(Ljava/lang/String;II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->mHardwarePayDialog:Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;->updateMsg(Ljava/lang/String;II)V

    return-void
.end method
