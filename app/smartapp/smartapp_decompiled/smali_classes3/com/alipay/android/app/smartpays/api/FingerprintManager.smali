.class public Lcom/alipay/android/app/smartpays/api/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# instance fields
.field private mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

.field private mContext:Landroid/content/Context;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-direct {p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/api/FingerprintManager;IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getOpenCallback(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    .locals 9

    .line 195
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v4

    .line 197
    new-instance v8, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V

    return-object v8
.end method

.method private getOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
    .locals 1

    .line 267
    invoke-direct {p0, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->isSamsungNNL(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_0
    new-instance p2, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    sget-object v0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    invoke-direct {p2, p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V

    return-object p2
.end method

.method private getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;-><init>(Landroid/content/Context;)V

    .line 423
    new-instance p1, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    return-object p1
.end method

.method private getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
    .locals 9

    .line 303
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v4

    .line 304
    new-instance v8, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V

    return-object v8
.end method

.method private getVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
    .locals 1

    .line 381
    iget-boolean p2, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mIsSamsung:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 384
    :cond_0
    new-instance p2, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    sget-object v0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    invoke-direct {p2, p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V

    return-object p2
.end method

.method private isSamsungNNL(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Z
    .locals 2

    .line 183
    iget v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mScanType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mScanType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private process(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->process(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mUserId:Ljava/lang/String;

    iget-object v5, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    move v3, p1

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->processAsync(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method private showOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v0

    const-string v1, "safepay_fp_open"

    .line 282
    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V

    .line 284
    new-instance v0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;

    invoke-direct {v0, p0, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    invoke-virtual {p2, p1, v1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    return-object p2
.end method

.method private showVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v0

    .line 397
    iget-object p3, p3, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mTipsMsg:Ljava/lang/String;

    .line 398
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "safepay_fp_tips"

    .line 399
    invoke-interface {v0, p3}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 401
    :cond_1
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V

    .line 402
    new-instance v0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;

    invoke-direct {v0, p0, p4}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    invoke-virtual {p2, p1, p3, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    return-object p2
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::cancel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;-><init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public cancelVerify()V
    .locals 3

    .line 142
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::cancelVerify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alipay.android.app.FINGERPRINT_VERIFY_CHANGED"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkUpdate()Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 3

    .line 69
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::checkUpdate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;-><init>()V

    .line 71
    sget v1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_CHECK_UPDATE:I

    iget-object v0, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->process(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::checkUserStatus"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->checkUserStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFpInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::getFpInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getFpInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistedNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::getRegistedNumber"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->registedFingerPrintNumber(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public initHardwarePay(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::initHardwarePay"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    const/16 p1, 0x6a

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mAuthenticator:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v1, p1, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public openFingerprintManager()Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    .locals 3

    .line 76
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::openFingerprintManager"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;-><init>()V

    .line 78
    sget v1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_OPEN_FP_MANAGER:I

    iget-object v0, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;->mData:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->process(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public register(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 3

    .line 83
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::register"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public registerWithDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::registerWithDialog"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getOpenCallback(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object p3

    .line 101
    invoke-direct {p0, p1, v0, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    .line 104
    sget p1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public setResourceProvider(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V
    .locals 3

    .line 40
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintManager::setResourceProvider"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    return-void
.end method

.method public unregister(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V
    .locals 3

    .line 153
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::unregister"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_UNREGISTER:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public verifyWithDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 3

    .line 109
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::verifyWithDialog"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object p3

    .line 121
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 124
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public vertify(Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 3

    .line 129
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintManager::vertify"

    const-string v2, "custom view"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 138
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->processAsync(IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method
