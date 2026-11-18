.class Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;
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

.field final synthetic val$picList:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;ILjava/util/List;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->val$picList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    iget p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->val$position:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setContext(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setIndex(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setEnableClickClose(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setShowDownButton(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;->val$picList:Ljava/util/List;

    .line 87
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setImageList(Ljava/util/List;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->start()V

    return-void
.end method
