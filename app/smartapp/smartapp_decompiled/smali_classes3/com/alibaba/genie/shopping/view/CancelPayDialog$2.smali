.class Lcom/alibaba/genie/shopping/view/CancelPayDialog$2;
.super Ljava/lang/Object;
.source "CancelPayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/CancelPayDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/CancelPayDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/CancelPayDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/CancelPayDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/CancelPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/CancelPayDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/CancelPayDialog;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->access$100(Lcom/alibaba/genie/shopping/view/CancelPayDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/CancelPayDialog$2;->this$0:Lcom/alibaba/genie/shopping/view/CancelPayDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
