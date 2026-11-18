.class Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;
.super Ljava/lang/Object;
.source "OrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;-><init>()V

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$002(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    .line 136
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    move-result-object v0

    const-string v1, "user_address_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_nick_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->setArguments(Landroid/os/Bundle;)V

    .line 140
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->setOnAddressSelectListener(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;)V

    .line 142
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->isPendingExec()Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NeuralDialog"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
