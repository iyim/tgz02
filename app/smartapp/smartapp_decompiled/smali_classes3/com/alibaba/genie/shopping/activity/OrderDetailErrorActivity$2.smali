.class Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;
.super Ljava/lang/Object;
.source "OrderDetailErrorActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 92
    iget v0, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->inv:I

    if-lez v0, :cond_1

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    const-class v2, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "order_good_detail_itemId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "order_good_detail_addressId"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    :goto_0
    const-string v1, "order_good_detail_skuId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->access$000()I

    move-result p1

    const-string v1, "order_good_detail_from_applet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
