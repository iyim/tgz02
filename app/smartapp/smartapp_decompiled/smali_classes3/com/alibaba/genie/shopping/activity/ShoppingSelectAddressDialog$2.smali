.class Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;
.super Ljava/lang/Object;
.source "ShoppingSelectAddressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->dismiss()V

    .line 123
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;->onAddressSelect(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
