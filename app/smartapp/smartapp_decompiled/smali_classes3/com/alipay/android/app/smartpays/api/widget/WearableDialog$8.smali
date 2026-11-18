.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->setAllButtonsGone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$500(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$600(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$700(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$800(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$900(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
