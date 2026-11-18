.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

.field final synthetic val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field final synthetic val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    iput-object p5, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    iput-object p6, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
    .locals 1

    .line 367
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 370
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->dismiss(Landroid/content/Context;)V

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V

    return-void
.end method

.method public onRetry()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1, p0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->access$200(Lcom/alipay/android/app/smartpays/api/FingerprintManager;IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public onRetryLimit()V
    .locals 4

    .line 362
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fpV1"

    const-string v3, "FpPayV1VerifyF"

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 6

    .line 311
    sget-object v0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$6;->$SwitchMap$com$alipay$android$app$smartpays$api$model$FingerprintResult$FingerprintStatus:[I

    iget-object v1, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "safepay_fp_val_failed"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x10000

    const/high16 v5, -0x1000000

    packed-switch v0, :pswitch_data_0

    .line 339
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/high16 v5, -0x10000

    goto :goto_2

    :pswitch_0
    const/4 v0, -0x1

    goto :goto_1

    .line 331
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v1, "safepay_fp_retry_tips"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v1, "safepay_fp_validating"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 325
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v1, "safepay_fp_validate_too_often"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v4, "safepay_fp_val_ok"

    invoke-interface {v1, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    const/4 v1, 0x1

    :goto_2
    if-eq v0, v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v4, "safepay_fp_to_pwd_pay"

    invoke-interface {v3, v4}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_0
    iget p1, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    if-lez p1, :cond_1

    if-nez v1, :cond_1

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    invoke-virtual {p1, v0, v2, v5}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->updateMsg(Ljava/lang/String;II)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
