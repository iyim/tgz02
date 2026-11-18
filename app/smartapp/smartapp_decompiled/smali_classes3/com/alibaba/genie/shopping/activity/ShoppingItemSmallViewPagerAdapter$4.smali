.class Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;
.super Ljava/lang/Object;
.source "ShoppingItemSmallViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

.field final synthetic val$shoppingItemInfo:Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->val$shoppingItemInfo:Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->val$shoppingItemInfo:Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->videoURL:Ljava/lang/String;

    const-string v1, "videoUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->val$shoppingItemInfo:Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->videoThumbnailURL:Ljava/lang/String;

    const-string v1, "videoImgHolderUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
