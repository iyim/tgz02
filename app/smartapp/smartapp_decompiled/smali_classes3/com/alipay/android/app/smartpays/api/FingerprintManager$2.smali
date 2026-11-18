.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getOpenCallback(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

.field final synthetic val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field final synthetic val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Landroid/app/Activity;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    iput-object p5, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    iput-object p6, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$context:Landroid/app/Activity;

    iput-object p7, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
    .locals 1

    .line 253
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 256
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->dismiss(Landroid/content/Context;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V

    return-void
.end method

.method public onRetry()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    sget v1, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->access$200(Lcom/alipay/android/app/smartpays/api/FingerprintManager;IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method

.method public onRetryLimit()V
    .locals 4

    .line 248
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fpV1"

    const-string v3, "FpOpenV1VerifyF"

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 5

    .line 204
    sget-object p1, Lcom/alipay/android/app/smartpays/api/FingerprintManager$6;->$SwitchMap$com$alipay$android$app$smartpays$api$model$FingerprintResult$FingerprintStatus:[I

    iget-object v0, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "safepay_fp_val_failed"

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x10000

    const/high16 v4, -0x1000000

    packed-switch p1, :pswitch_data_0

    .line 230
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const/4 v0, 0x0

    const/high16 v4, -0x10000

    goto :goto_2

    :pswitch_0
    const/4 p1, -0x1

    goto :goto_1

    .line 223
    :pswitch_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v0, "safepay_fp_retry_tips"

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 220
    :pswitch_2
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v0, "safepay_fp_validating"

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 217
    :pswitch_3
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v0, "safepay_fp_validate_too_often"

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v3, "safepay_fp_val_ok"

    invoke-interface {v0, v3}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v0

    move p1, v0

    const/4 v0, 0x1

    :goto_2
    if-eq p1, v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$context:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 234
    iget v2, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    if-lez v2, :cond_0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$2;->val$dialog:Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;

    invoke-virtual {p2, p1, v1, v4}, Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;->updateMsg(Ljava/lang/String;II)V

    :cond_1
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
    .end packed-switch
.end method
