.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingSearchGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

.field final synthetic val$goodInfo:Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->val$goodInfo:Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->val$goodInfo:Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    if-eqz p1, :cond_0

    .line 214
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->val$goodInfo:Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    const-string v1, "order_good_detail_itemId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
