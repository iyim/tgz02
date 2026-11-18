.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
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

    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 116
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wearV1"

    const-string v2, "WearPayV1DlgToPwd"

    invoke-virtual {p1, v1, v2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$100(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;->onAction(I)V

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->dismiss()V

    return-void
.end method
