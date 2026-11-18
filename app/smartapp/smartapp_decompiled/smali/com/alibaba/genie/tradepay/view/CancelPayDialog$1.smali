.class Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;
.super Ljava/lang/Object;
.source "CancelPayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/tradepay/view/CancelPayDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;->this$0:Lcom/alibaba/genie/tradepay/view/CancelPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;->this$0:Lcom/alibaba/genie/tradepay/view/CancelPayDialog;

    invoke-static {p1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->access$000(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;->this$0:Lcom/alibaba/genie/tradepay/view/CancelPayDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
