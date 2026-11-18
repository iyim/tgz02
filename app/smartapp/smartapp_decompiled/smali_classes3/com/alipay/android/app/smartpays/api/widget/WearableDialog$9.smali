.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->dismiss(I)V
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

    .line 249
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$900(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
