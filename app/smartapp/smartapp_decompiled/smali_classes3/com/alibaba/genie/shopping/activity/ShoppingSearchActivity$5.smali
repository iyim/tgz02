.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showSearchResultEmptyPage(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 455
    iget v0, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->inv:I

    if-lez v0, :cond_0

    .line 465
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    const-class v2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    iget-object p1, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    const-string v1, "order_good_detail_itemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
