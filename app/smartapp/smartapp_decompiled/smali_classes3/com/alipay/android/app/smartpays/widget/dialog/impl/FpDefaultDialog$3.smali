.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;
.super Ljava/lang/Object;
.source "FpDefaultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Landroid/app/Activity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$100(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;->onAction(I)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->dismiss(Landroid/content/Context;)V

    return-void
.end method
