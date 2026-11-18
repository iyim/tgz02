.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showVerifyDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/dialog/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

.field final synthetic val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 407
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpV1"

    const-string v2, "FpPayV1DlgCancel"

    invoke-virtual {p1, v1, v2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 409
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 412
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_TOPWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 413
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$5;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
