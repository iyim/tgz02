.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;
.super Ljava/lang/Object;
.source "FpFullViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$100(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;->onAction(I)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$102(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;Z)Z

    .line 123
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog$2;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;->access$300(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpFullViewDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
