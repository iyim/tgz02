.class Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;
.super Ljava/lang/Object;
.source "FpDefaultDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->setAllButtonsGone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$500(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$600(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$700(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$800(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->setCancelable(Z)V

    return-void
.end method
