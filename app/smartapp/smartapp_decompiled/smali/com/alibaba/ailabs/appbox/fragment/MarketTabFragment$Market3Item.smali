.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Market3Item"
.end annotation


# instance fields
.field itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/view/View;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    .line 584
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 585
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->itemViews:Ljava/util/ArrayList;

    .line 595
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->itemViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->itemViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V

    return-void
.end method
