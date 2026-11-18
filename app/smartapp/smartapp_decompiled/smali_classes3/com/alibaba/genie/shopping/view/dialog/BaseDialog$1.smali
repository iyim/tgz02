.class Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$000(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$100(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$100(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$200(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->access$200(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->dismiss()V

    return-void
.end method
