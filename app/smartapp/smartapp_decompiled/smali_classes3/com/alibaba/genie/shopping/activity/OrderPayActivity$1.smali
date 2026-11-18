.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 147
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    new-instance p1, Lcom/alibaba/genie/shopping/view/CancelPayDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;-><init>()V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "code"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v2, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    :cond_1
    const-string v1, "nickname"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->setArguments(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 163
    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$2;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "pay"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/view/CancelPayDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    :goto_1
    return-void
.end method
