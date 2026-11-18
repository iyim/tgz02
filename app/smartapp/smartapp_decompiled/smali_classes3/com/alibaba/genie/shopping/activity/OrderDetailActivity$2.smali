.class Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;
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

    .line 148
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;-><init>()V

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    move-result-object v1

    const-string v2, "user_address_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_nick_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->setArguments(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->setOnAddressSelectListener(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;)V

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->isPendingExec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NeuralDialog"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
